.class final Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->M(Z)V
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
    c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getDownloadedList$1"
    f = "DownloadViewModel.kt"
    l = {
        0xdb
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $fromDb:Z

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;


# direct methods
.method constructor <init>(ZLcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->$fromDb:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

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
    new-instance p1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->$fromDb:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->label:I

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
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-boolean v4, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->$fromDb:Z

    .line 38
    .line 39
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->label:I

    .line 40
    .line 41
    invoke-virtual {v2, v4, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->A(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-ne v2, v1, :cond_2

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    check-cast v1, Ljava/util/Collection;

    .line 52
    .line 53
    const-string v4, "access$getTAG$p(...)"

    .line 54
    .line 55
    if-eqz v1, :cond_13

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_3
    move-object v1, v2

    .line 66
    check-cast v1, Ljava/lang/Iterable;

    .line 67
    .line 68
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const-string v7, "collection:"

    .line 82
    .line 83
    const-string v8, "subject:"

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    if-eqz v6, :cond_9

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    move-object v10, v6

    .line 93
    check-cast v10, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 94
    .line 95
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    if-eqz v11, :cond_4

    .line 100
    .line 101
    invoke-static {v11}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-nez v12, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v11, v9

    .line 109
    :goto_2
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    if-eqz v10, :cond_5

    .line 114
    .line 115
    invoke-static {v10}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-nez v12, :cond_5

    .line 120
    .line 121
    move-object v9, v10

    .line 122
    :cond_5
    if-eqz v11, :cond_6

    .line 123
    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    if-eqz v9, :cond_7

    .line 141
    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    new-instance v7, Ljava/lang/Object;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    :goto_3
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-nez v8, :cond_8

    .line 168
    .line 169
    new-instance v8, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_8
    check-cast v8, Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 189
    .line 190
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_12

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 208
    .line 209
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    if-eqz v11, :cond_a

    .line 214
    .line 215
    invoke-static {v11}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-nez v12, :cond_a

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    move-object v11, v9

    .line 223
    :goto_5
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    if-eqz v12, :cond_b

    .line 228
    .line 229
    invoke-static {v12}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    if-nez v13, :cond_b

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_b
    move-object v12, v9

    .line 237
    :goto_6
    if-nez v11, :cond_c

    .line 238
    .line 239
    if-nez v12, :cond_c

    .line 240
    .line 241
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_c
    if-eqz v11, :cond_d

    .line 246
    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    goto :goto_7

    .line 263
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    :goto_7
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    if-eqz v11, :cond_e

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_e
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    check-cast v11, Ljava/util/List;

    .line 290
    .line 291
    move-object v12, v11

    .line 292
    check-cast v12, Ljava/util/Collection;

    .line 293
    .line 294
    if-eqz v12, :cond_11

    .line 295
    .line 296
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    if-eqz v12, :cond_f

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    if-ne v12, v3, :cond_10

    .line 308
    .line 309
    check-cast v11, Ljava/util/Collection;

    .line 310
    .line 311
    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_10
    iget-object v12, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 316
    .line 317
    invoke-static {v12, v11}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->A(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    :cond_11
    :goto_8
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :cond_12
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 330
    .line 331
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 332
    .line 333
    invoke-static {v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->y(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v4, "getDownloadedList, size = "

    .line 350
    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    filled-new-array {v2}, [Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    const/16 v16, 0x4

    .line 366
    .line 367
    const/16 v17, 0x0

    .line 368
    .line 369
    const/4 v15, 0x0

    .line 370
    invoke-static/range {v12 .. v17}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 374
    .line 375
    invoke-static {v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 383
    .line 384
    invoke-static {v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    iget-object v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 389
    .line 390
    invoke-static {v3, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)Ljava/util/Map;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 398
    .line 399
    return-object v1

    .line 400
    :cond_13
    :goto_9
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 401
    .line 402
    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 403
    .line 404
    invoke-static {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->y(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v1, "getDownloadedList, is empty"

    .line 412
    .line 413
    filled-new-array {v1}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    const/4 v6, 0x4

    .line 418
    const/4 v7, 0x0

    .line 419
    const/4 v5, 0x0

    .line 420
    invoke-static/range {v2 .. v7}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 424
    .line 425
    invoke-static {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 438
    .line 439
    invoke-static {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 451
    .line 452
    return-object v1
.end method
