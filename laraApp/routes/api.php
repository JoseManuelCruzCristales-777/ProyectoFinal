<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\WorkspaceController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\TaskController;

// Rutas públicas (registro y login)
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login',    [AuthController::class, 'login']);

// Rutas de recuperación de contraseña
Route::post('/forgot-password', [AuthController::class, 'forgotPassword']);
Route::post('/reset-password', [AuthController::class, 'resetPassword']);

// Rutas protegidas por Sanctum
Route::middleware('auth:sanctum')->group(function () {
    // Logout
    Route::post('/logout', [AuthController::class, 'logout']);

    // Datos del usuario autenticado
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    // Obtener todos los usuarios
    Route::get('/users', [AuthController::class, 'getAllUsers']);
    
    // Usuarios disponibles para equipo
    Route::get('/users/available/{teamId}', [AuthController::class, 'getAvailableUsers']);

    // Workspaces - rutas específicas ANTES del resource
    Route::get('workspaces/member', [WorkspaceController::class, 'getMemberWorkspaces']);
    Route::get('workspaces/{id}/tasks', [TaskController::class, 'getWorkspaceTasks']);
    Route::apiResource('workspaces', WorkspaceController::class);

    // Teams
    Route::apiResource('teams', TeamController::class);
    Route::get('teams/{id}/members', [TeamController::class, 'getMembers']);
    Route::get('teams/{id}/tasks', [TaskController::class, 'getTeamTasks']);
    Route::post('teams/{id}/members', [TeamController::class, 'addMember']);
    Route::delete('teams/{id}/members/{userId}', [TeamController::class, 'removeMember']);

    // Tasks
    Route::apiResource('tasks', TaskController::class);
});
