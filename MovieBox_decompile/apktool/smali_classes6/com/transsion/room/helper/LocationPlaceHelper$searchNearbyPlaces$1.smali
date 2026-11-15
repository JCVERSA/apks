.class final Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper;->x(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.room.helper.LocationPlaceHelper$searchNearbyPlaces$1"
    f = "LocationPlaceHelper.kt"
    l = {
        0x23e,
        0x242
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $curLat:Ljava/lang/Double;

.field final synthetic $curLon:Ljava/lang/Double;

.field final synthetic $location:Ljava/lang/String;

.field final synthetic $radius:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$location:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$radius:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$apiKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$curLat:Ljava/lang/Double;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$curLon:Ljava/lang/Double;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$location:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$radius:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$apiKey:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$curLat:Ljava/lang/Double;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$curLon:Ljava/lang/Double;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eq v0, v5, :cond_1

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Throwable;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lokhttp3/Response;

    .line 24
    .line 25
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_7

    .line 32
    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    iget-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lokhttp3/Response;

    .line 45
    .line 46
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object v4, v5

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$location:Ljava/lang/String;

    .line 59
    .line 60
    iget v6, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$radius:I

    .line 61
    .line 62
    iget-object v7, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$apiKey:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v9, "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="

    .line 70
    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, "&radius="

    .line 78
    .line 79
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "&key="

    .line 86
    .line 87
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v6, Lokhttp3/OkHttpClient$Builder;

    .line 98
    .line 99
    invoke-direct {v6}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    const-wide/16 v8, 0x2710

    .line 105
    .line 106
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    new-instance v7, Lokhttp3/Request$Builder;

    .line 123
    .line 124
    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 136
    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v10, "searchNearbyPlaces url: "

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    const/4 v12, 0x4

    .line 155
    const/4 v13, 0x0

    .line 156
    const-string v9, "LocationP"

    .line 157
    .line 158
    const/4 v11, 0x0

    .line 159
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :try_start_2
    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    .line 167
    .line 168
    .line 169
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 170
    :try_start_3
    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    new-instance v7, Lorg/json/JSONObject;

    .line 189
    .line 190
    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v0, "results"

    .line 194
    .line 195
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    new-instance v8, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 205
    .line 206
    .line 207
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 208
    const/4 v0, 0x0

    .line 209
    move v10, v0

    .line 210
    :goto_0
    if-ge v10, v9, :cond_3

    .line 211
    .line 212
    :try_start_4
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v11, "name"

    .line 217
    .line 218
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    const-string v12, "vicinity"

    .line 223
    .line 224
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    const-string v13, "geometry"

    .line 229
    .line 230
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v13, "location"

    .line 235
    .line 236
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v13, "lat"

    .line 241
    .line 242
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v13

    .line 246
    const-string v15, "lng"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 247
    .line 248
    move-object/from16 p1, v6

    .line 249
    .line 250
    :try_start_5
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 251
    .line 252
    .line 253
    move-result-wide v5

    .line 254
    sget-object v0, Lij/s;->a:Lij/s;

    .line 255
    .line 256
    iget-object v15, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$curLat:Ljava/lang/Double;

    .line 257
    .line 258
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 259
    .line 260
    .line 261
    move-result-wide v15

    .line 262
    iget-object v3, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$curLon:Ljava/lang/Double;

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 265
    .line 266
    .line 267
    move-result-wide v17

    .line 268
    move-wide/from16 v23, v13

    .line 269
    .line 270
    move-object v14, v0

    .line 271
    move-wide/from16 v19, v23

    .line 272
    .line 273
    move-wide/from16 v21, v5

    .line 274
    .line 275
    invoke-virtual/range {v14 .. v22}, Lij/s;->a(DDDD)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    new-instance v3, Lcom/transsion/room/api/bean/LocationPlace;

    .line 280
    .line 281
    const/16 v18, 0xf

    .line 282
    .line 283
    const/16 v19, 0x0

    .line 284
    .line 285
    const/4 v14, 0x0

    .line 286
    const/4 v15, 0x0

    .line 287
    const/16 v16, 0x0

    .line 288
    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    move-object v13, v3

    .line 292
    invoke-direct/range {v13 .. v19}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v11}, Lcom/transsion/room/api/bean/LocationPlace;->setName(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v12}, Lcom/transsion/room/api/bean/LocationPlace;->setAddress(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static/range {v23 .. v24}, Lkotlin/coroutines/jvm/internal/Boxing;->b(D)Ljava/lang/Double;

    .line 305
    .line 306
    .line 307
    move-result-object v13

    .line 308
    invoke-virtual {v3, v13}, Lcom/transsion/room/api/bean/LocationPlace;->setLat(Ljava/lang/Double;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->b(D)Ljava/lang/Double;

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    invoke-virtual {v3, v13}, Lcom/transsion/room/api/bean/LocationPlace;->setLon(Ljava/lang/Double;)V

    .line 316
    .line 317
    .line 318
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 319
    .line 320
    const-string v15, "LocationP"

    .line 321
    .line 322
    new-instance v13, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v4, "====place list name: "

    .line 328
    .line 329
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v4, ", distance: "

    .line 336
    .line 337
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v0, ", address: "

    .line 344
    .line 345
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v0, ", lat:"

    .line 352
    .line 353
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    move-wide/from16 v11, v23

    .line 357
    .line 358
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v0, ", lng:"

    .line 362
    .line 363
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v0, ")"

    .line 370
    .line 371
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v16

    .line 378
    const/16 v18, 0x4

    .line 379
    .line 380
    const/16 v19, 0x0

    .line 381
    .line 382
    const/16 v17, 0x0

    .line 383
    .line 384
    invoke-static/range {v14 .. v19}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :catchall_2
    move-exception v0

    .line 396
    goto :goto_1

    .line 397
    :catchall_3
    move-exception v0

    .line 398
    move-object/from16 p1, v6

    .line 399
    .line 400
    :goto_1
    :try_start_6
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 401
    .line 402
    const-string v12, "LocationP"

    .line 403
    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    const-string v4, "place error2: "

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    const/4 v15, 0x4

    .line 422
    const/16 v16, 0x0

    .line 423
    .line 424
    const/4 v14, 0x0

    .line 425
    invoke-static/range {v11 .. v16}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    .line 430
    .line 431
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 432
    .line 433
    move-object/from16 v6, p1

    .line 434
    .line 435
    const/4 v3, 0x2

    .line 436
    const/4 v5, 0x1

    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :catchall_4
    move-exception v0

    .line 440
    move-object/from16 v4, p1

    .line 441
    .line 442
    goto :goto_4

    .line 443
    :cond_3
    move-object/from16 p1, v6

    .line 444
    .line 445
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    new-instance v3, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1$1;

    .line 450
    .line 451
    iget-object v4, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 452
    .line 453
    const/4 v5, 0x0

    .line 454
    invoke-direct {v3, v4, v8, v5}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 455
    .line 456
    .line 457
    move-object/from16 v4, p1

    .line 458
    .line 459
    :try_start_7
    iput-object v4, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->L$0:Ljava/lang/Object;

    .line 460
    .line 461
    const/4 v5, 0x1

    .line 462
    iput v5, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->label:I

    .line 463
    .line 464
    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 468
    if-ne v0, v2, :cond_4

    .line 469
    .line 470
    return-object v2

    .line 471
    :cond_4
    move-object v5, v4

    .line 472
    :goto_3
    if-eqz v5, :cond_8

    .line 473
    .line 474
    invoke-virtual {v5}, Lokhttp3/Response;->close()V

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :catchall_5
    move-exception v0

    .line 479
    goto :goto_4

    .line 480
    :catchall_6
    move-exception v0

    .line 481
    move-object v4, v6

    .line 482
    goto :goto_4

    .line 483
    :cond_5
    move-object v4, v6

    .line 484
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    .line 485
    .line 486
    const-string v3, "Response null"

    .line 487
    .line 488
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :cond_6
    move-object v4, v6

    .line 493
    new-instance v0, Ljava/io/IOException;

    .line 494
    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    const-string v5, "Unexpected code "

    .line 501
    .line 502
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 516
    :catchall_7
    move-exception v0

    .line 517
    const/4 v4, 0x0

    .line 518
    :goto_4
    :try_start_9
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    new-instance v5, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1$2;

    .line 523
    .line 524
    iget-object v6, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 525
    .line 526
    const/4 v7, 0x0

    .line 527
    invoke-direct {v5, v6, v7}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 528
    .line 529
    .line 530
    iput-object v4, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->L$0:Ljava/lang/Object;

    .line 531
    .line 532
    iput-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->L$1:Ljava/lang/Object;

    .line 533
    .line 534
    const/4 v6, 0x2

    .line 535
    iput v6, v1, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;->label:I

    .line 536
    .line 537
    invoke-static {v3, v5, v1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 541
    if-ne v3, v2, :cond_7

    .line 542
    .line 543
    return-object v2

    .line 544
    :cond_7
    move-object v2, v4

    .line 545
    :goto_5
    :try_start_a
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 546
    .line 547
    const-string v4, "LocationP"

    .line 548
    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    const-string v6, "place error: "

    .line 555
    .line 556
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    const/4 v7, 0x4

    .line 567
    const/4 v8, 0x0

    .line 568
    const/4 v6, 0x0

    .line 569
    invoke-static/range {v3 .. v8}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 573
    .line 574
    .line 575
    if-eqz v2, :cond_8

    .line 576
    .line 577
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 578
    .line 579
    .line 580
    :cond_8
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 581
    .line 582
    return-object v0

    .line 583
    :catchall_8
    move-exception v0

    .line 584
    move-object v2, v4

    .line 585
    :goto_7
    if-eqz v2, :cond_9

    .line 586
    .line 587
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 588
    .line 589
    .line 590
    :cond_9
    throw v0
.end method
