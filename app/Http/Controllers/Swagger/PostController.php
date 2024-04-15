<?php

namespace App\Http\Controllers\Swagger;

use App\Http\Controllers\Controller;
use App\Http\Requests\Post\CreateRequest;
use App\Http\Requests\Post\UpdateRequest;
use App\Http\Resources\Post\PostResource;
use App\Models\Post;
use Illuminate\Http\Request;
use OpenApi\Annotations as OA;

/**
 * Post
 *
 * @OA\Post (
 *     path="/api/post",
 *     summary="Создание",
 *     tags={"Post"},
 *     security={{ "bearerAuth" : {} }},
 *
 *     @OA\RequestBody(
 *         @OA\MediaType(
 *             mediaType="application/json",
 *             @OA\Schema(
 *                      @OA\Property(property="title", type="string"),
 *                      @OA\Property(property="link", type="integer"),
 *
 *                 example={ "title":"Some title", "link": 33, }
 *             )
 *         )
 *      ),
 *
 *     @OA\Response(
 *          response=200,
 *          description="Success",
 *          @OA\JsonContent(
 *              @OA\Property(property="data", type="object",
 *                  @OA\Property(property="id", type="number", example=1),
 *                  @OA\Property(property="title", type="string", example="Some title"),
 *                  @OA\Property(property="link", type="integer", example=33),
 *              ),
 *          ),
 *      ),
 *  ),
 *  @OA\Get(
 *     path="/api/post",
 *     summary="Список",
 *     tags={"Post"},
 *     security={{ "bearerAuth" : {} }},
 *
 *     @OA\Response(
 *          response=200,
 *          description="Success",
 *          @OA\JsonContent(
 *              @OA\Property(property="data", type="array", @OA\Items(
 *                  @OA\Property(property="id", type="number", example=1),
 *                  @OA\Property(property="title", type="string", example="Some title"),
 *                  @OA\Property(property="link", type="integer", example=33),
 *
 *              )),
 *          ),
 *      ),
 *  ),
 *  @OA\Get(
 *     path="/api/post/{post}",
 *     summary="Единичная запись",
 *     tags={"Post"},
 *     security={{ "bearerAuth" : {} }},
 *
 *     @OA\Parameter(
 *         description="ID поста",
 *         in="path",
 *         name="post",
 *         required=true,
 *         example=1
 *     ),
 *
 *     @OA\Response(
 *          response=200,
 *          description="Ok",
 *          @OA\JsonContent(
 *              @OA\Property(property="data", type="object",
 *                  @OA\Property(property="id", type="number", example=1),
 *                  @OA\Property(property="title", type="string", example="Some title"),
 *                  @OA\Property(property="link", type="integer", example=33),
 *              ),
 *          ),
 *      ),
 * ),
 *
 * @OA\Patch(
 *     path="/api/post/{post}",
 *     summary="Оновлення",
 *     tags={"Post"},
 *     security={{ "bearerAuth" : {} }},
 *
 *     @OA\Parameter(
 *         name="post",
 *         description="id поста",
 *         required=true,
 *         in="path",
 *         @OA\Schema(
 *              type="integer"
 *          ),
 *         example=2
 *     ),
 *
 *    @OA\RequestBody(
 *         @OA\MediaType(
 *             mediaType="application/json",
 *             @OA\Schema(
 *                      @OA\Property(property="title", type="string"),
 *                      @OA\Property(property="link", type="integer"),
 *
 *                      example={ "title":"Some title", "link": 33, }
 *             )
 *         )
 *      ),
 *
 *     @OA\Response(
 *          response=200,
 *          description="Ok",
 *          @OA\JsonContent(
 *              @OA\Property(property="data", type="object",
 *                  @OA\Property(property="id", type="number", example=1),
 *                  @OA\Property(property="title", type="string", example="Some title"),
 *                  @OA\Property(property="link", type="integer", example=33),
 *              ),
 *          ),
 *      ),
 * ),
 *
 * @OA\Delete(
 *     path="/api/post/{post}",
 *     summary="Видалення",
 *     tags={"Post"},
 *     security={{ "bearerAuth" : {} }},
 *
 *     @OA\Parameter(
 *         description="ID поста",
 *         in="path",
 *         name="post",
 *         required=true,
 *         example=1
 *     ),
 *
 *     @OA\Response(
 *          response=200,
 *          description="Ok",
 *          @OA\JsonContent(
 *              @OA\Property(property="message", type="object",example="done"),
 *          ),
 *      ),
 * ),
 */

class PostController extends Controller
{

}
