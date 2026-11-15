.class final Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;->r(Lcom/wecloud/load/lib/SoDownloadRequest;)V
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
    c = "com.wecloud.load.lib.SoLoadService$downloadAndLoadSoInternal$1"
    f = "SoLoadService.kt"
    l = {
        0xd1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $soZipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/wecloud/load/lib/SoLoadService;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;",
            "Lcom/wecloud/load/lib/SoLoadService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$1:I

    .line 15
    .line 16
    iget v4, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$0:I

    .line 17
    .line 18
    iget-object v5, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$3:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Ljava/util/Iterator;

    .line 21
    .line 22
    iget-object v6, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, Lcom/wecloud/load/lib/SoLoadService;

    .line 25
    .line 26
    iget-object v7, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 29
    .line 30
    iget-object v8, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    move-object v11, v5

    .line 38
    move-object v12, v6

    .line 39
    move-object v13, v7

    .line 40
    move-object v14, v8

    .line 41
    move v6, v2

    .line 42
    move v2, v4

    .line 43
    move-object/from16 v4, p1

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 62
    .line 63
    const-string v5, "SoLoadService"

    .line 64
    .line 65
    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v7, "\u5f00\u59cb\u5904\u7406 "

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, " \u4e2aZIP\u5305"

    .line 85
    .line 86
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const/4 v8, 0x4

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 100
    .line 101
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 105
    .line 106
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v5, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    .line 110
    .line 111
    check-cast v5, Ljava/lang/Iterable;

    .line 112
    .line 113
    iget-object v6, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const/4 v7, 0x0

    .line 120
    move-object v8, v2

    .line 121
    move v2, v7

    .line 122
    move-object v7, v4

    .line 123
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    add-int/lit8 v9, v2, 0x1

    .line 134
    .line 135
    if-gez v2, :cond_2

    .line 136
    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 138
    .line 139
    .line 140
    :cond_2
    check-cast v4, Lcom/wecloud/load/lib/bean/SoZipInfo;

    .line 141
    .line 142
    invoke-static {v6}, Lcom/wecloud/load/lib/SoLoadService;->d(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    if-eqz v10, :cond_3

    .line 147
    .line 148
    invoke-interface {v10}, Lkotlinx/coroutines/t1;->isCancelled()Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-ne v10, v3, :cond_3

    .line 153
    .line 154
    move v2, v9

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {v4}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getSo_names()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    if-nez v10, :cond_4

    .line 161
    .line 162
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    :cond_4
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 167
    .line 168
    const-string v12, "SoLoadService"

    .line 169
    .line 170
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    new-instance v13, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v14, "\u5904\u7406\u7b2c "

    .line 180
    .line 181
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v14, " \u4e2aZIP\u5305\uff0c\u5305\u542b "

    .line 188
    .line 189
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v10, " \u4e2aSO\u6587\u4ef6"

    .line 196
    .line 197
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    const/4 v15, 0x4

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const/4 v14, 0x0

    .line 208
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iput-object v8, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$0:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v7, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$1:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v6, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$2:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v5, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$3:Ljava/lang/Object;

    .line 218
    .line 219
    iput v9, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$0:I

    .line 220
    .line 221
    iput v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$1:I

    .line 222
    .line 223
    iput v3, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->label:I

    .line 224
    .line 225
    invoke-static {v6, v4, v2, v1}, Lcom/wecloud/load/lib/SoLoadService;->n(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-ne v4, v0, :cond_5

    .line 230
    .line 231
    return-object v0

    .line 232
    :cond_5
    move-object v11, v5

    .line 233
    move-object v12, v6

    .line 234
    move-object v13, v7

    .line 235
    move-object v14, v8

    .line 236
    move v6, v2

    .line 237
    move v2, v9

    .line 238
    :goto_1
    check-cast v4, Lcom/wecloud/load/lib/SoLoadService$b;

    .line 239
    .line 240
    iget v5, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->c()I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    add-int/2addr v5, v7

    .line 247
    iput v5, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 248
    .line 249
    iget v5, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 250
    .line 251
    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->a()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    add-int/2addr v5, v7

    .line 256
    iput v5, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 257
    .line 258
    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->c()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->a()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->d()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->b()Ljava/util/Map;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    move-object v5, v12

    .line 275
    invoke-static/range {v5 .. v10}, Lcom/wecloud/load/lib/SoLoadService;->k(Lcom/wecloud/load/lib/SoLoadService;IIILjava/util/List;Ljava/util/Map;)V

    .line 276
    .line 277
    .line 278
    move-object v5, v11

    .line 279
    move-object v6, v12

    .line 280
    move-object v7, v13

    .line 281
    move-object v8, v14

    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_6
    sget-object v0, Lcom/wecloud/load/lib/b;->a:Lcom/wecloud/load/lib/b;

    .line 285
    .line 286
    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 287
    .line 288
    invoke-virtual {v0, v2}, Lcom/wecloud/load/lib/b;->a(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 292
    .line 293
    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    .line 294
    .line 295
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    iget v3, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 300
    .line 301
    iget v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 302
    .line 303
    invoke-static {v0, v2, v3, v4}, Lcom/wecloud/load/lib/SoLoadService;->i(Lcom/wecloud/load/lib/SoLoadService;III)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :goto_2
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v4, "\u5904\u7406\u5f02\u5e38: "

    .line 319
    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    const/16 v10, 0x8

    .line 331
    .line 332
    const/4 v11, 0x0

    .line 333
    const-string v6, "SoLoadService"

    .line 334
    .line 335
    const/4 v9, 0x0

    .line 336
    move-object v8, v0

    .line 337
    invoke-static/range {v5 .. v11}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/16 v3, 0x3e9

    .line 362
    .line 363
    invoke-static {v2, v3, v0}, Lcom/wecloud/load/lib/SoLoadService;->j(Lcom/wecloud/load/lib/SoLoadService;ILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_3

    .line 367
    :catch_1
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 368
    .line 369
    const/4 v8, 0x4

    .line 370
    const/4 v9, 0x0

    .line 371
    const-string v5, "SoLoadService"

    .line 372
    .line 373
    const-string v6, "\u4efb\u52a1\u88ab\u53d6\u6d88"

    .line 374
    .line 375
    const/4 v7, 0x0

    .line 376
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 380
    .line 381
    return-object v0
.end method
