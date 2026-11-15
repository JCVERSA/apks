.class final Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleManagerImp;->C()V
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
    c = "com.transsion.subtitle.VideoSubtitleManagerImp$initOldSubtitleMoveDB$1"
    f = "VideoSubtitleManagerImp.kt"
    l = {
        0x174,
        0x188,
        0x1bd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

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
    iget v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    if-eq v2, v5, :cond_3

    .line 15
    .line 16
    if-eq v2, v4, :cond_2

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/util/Iterator;

    .line 27
    .line 28
    iget-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    move v4, v3

    .line 36
    goto/16 :goto_e

    .line 37
    .line 38
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_2
    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 49
    .line 50
    iget-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Ljava/util/Iterator;

    .line 53
    .line 54
    iget-object v7, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v7, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v8, p1

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v2, p1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->q(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Lui/v0;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iput v5, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    .line 81
    .line 82
    invoke-interface {v2, v0}, Lui/v0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-ne v2, v1, :cond_5

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_5
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 90
    .line 91
    sget-object v6, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const-string v7, "subtitle_old_db_move"

    .line 98
    .line 99
    invoke-virtual {v6, v7, v5}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    move-object v6, v2

    .line 103
    check-cast v6, Ljava/util/Collection;

    .line 104
    .line 105
    if-eqz v6, :cond_1d

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_6

    .line 112
    .line 113
    goto/16 :goto_f

    .line 114
    .line 115
    :cond_6
    invoke-static {}, Lcom/transsion/subtitle/helper/c;->a()Ljava/util/Locale;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v6, v2}, Lcom/transsion/subtitle/helper/c;->c(Ljava/lang/String;Ljava/util/List;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_8

    .line 131
    .line 132
    const-string v6, "en"

    .line 133
    .line 134
    invoke-static {v6, v2}, Lcom/transsion/subtitle/helper/c;->c(Ljava/lang/String;Ljava/util/List;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    const/4 v6, 0x0

    .line 142
    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_1c

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    if-eqz v8, :cond_0

    .line 163
    .line 164
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_9

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_9
    sget-object v8, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 173
    .line 174
    invoke-virtual {v8}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSe()I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getEp()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    iput-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v7, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    .line 198
    .line 199
    iput v4, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    .line 200
    .line 201
    invoke-virtual {v8, v9, v10, v11, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->J(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    if-ne v8, v1, :cond_a

    .line 206
    .line 207
    return-object v1

    .line 208
    :cond_a
    move-object/from16 v40, v6

    .line 209
    .line 210
    move-object v6, v2

    .line 211
    move-object v2, v7

    .line 212
    move-object/from16 v7, v40

    .line 213
    .line 214
    :goto_4
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 215
    .line 216
    if-nez v8, :cond_b

    .line 217
    .line 218
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 219
    .line 220
    sget-object v9, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 221
    .line 222
    invoke-virtual {v9}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    iget-object v10, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 227
    .line 228
    invoke-static {v10}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    new-instance v11, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v10, " \u8f6c\u79fb\u6570\u636e\u5e93,\u8d44\u6e90\u4e3a\u7a7a\uff0csubjectId:"

    .line 245
    .line 246
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v8, v9, v2, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_b
    if-eqz v7, :cond_c

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-nez v9, :cond_c

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->isDownloaded()Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_c

    .line 277
    .line 278
    :goto_5
    move-object v2, v6

    .line 279
    move-object v6, v7

    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :cond_c
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    const/4 v10, 0x4

    .line 287
    if-eqz v9, :cond_d

    .line 288
    .line 289
    move v13, v10

    .line 290
    goto :goto_6

    .line 291
    :cond_d
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isStream()Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_e

    .line 296
    .line 297
    move v13, v4

    .line 298
    goto :goto_6

    .line 299
    :cond_e
    move v13, v5

    .line 300
    :goto_6
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v14

    .line 308
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-eqz v9, :cond_10

    .line 313
    .line 314
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostIdNotNull()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    :cond_f
    :goto_7
    move-object/from16 v22, v9

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_10
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    if-nez v9, :cond_f

    .line 326
    .line 327
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    goto :goto_7

    .line 332
    :goto_8
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getUrl()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    const-string v11, ""

    .line 337
    .line 338
    if-nez v9, :cond_11

    .line 339
    .line 340
    move-object/from16 v17, v11

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_11
    move-object/from16 v17, v9

    .line 344
    .line 345
    :goto_9
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPath()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v31

    .line 349
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLanName()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v23

    .line 361
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSize()Ljava/lang/Long;

    .line 362
    .line 363
    .line 364
    move-result-object v18

    .line 365
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    if-nez v9, :cond_12

    .line 370
    .line 371
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    :cond_12
    move-object/from16 v24, v9

    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getEp()I

    .line 378
    .line 379
    .line 380
    move-result v25

    .line 381
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSe()I

    .line 382
    .line 383
    .line 384
    move-result v26

    .line 385
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    if-nez v9, :cond_13

    .line 390
    .line 391
    move-object/from16 v28, v11

    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_13
    move-object/from16 v28, v9

    .line 395
    .line 396
    :goto_a
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getStatus()I

    .line 397
    .line 398
    .line 399
    move-result v9

    .line 400
    const/4 v11, 0x5

    .line 401
    if-eq v9, v5, :cond_16

    .line 402
    .line 403
    if-eq v9, v4, :cond_15

    .line 404
    .line 405
    if-eq v9, v3, :cond_14

    .line 406
    .line 407
    const/4 v9, 0x0

    .line 408
    :goto_b
    move/from16 v29, v9

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_14
    move/from16 v29, v4

    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_15
    move/from16 v29, v11

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_16
    const/4 v9, 0x6

    .line 418
    goto :goto_b

    .line 419
    :goto_c
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getType()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-eq v2, v4, :cond_1a

    .line 424
    .line 425
    if-eq v2, v3, :cond_19

    .line 426
    .line 427
    if-eq v2, v10, :cond_18

    .line 428
    .line 429
    if-eq v2, v11, :cond_17

    .line 430
    .line 431
    move/from16 v21, v5

    .line 432
    .line 433
    goto :goto_d

    .line 434
    :cond_17
    move/from16 v21, v11

    .line 435
    .line 436
    goto :goto_d

    .line 437
    :cond_18
    move/from16 v21, v10

    .line 438
    .line 439
    goto :goto_d

    .line 440
    :cond_19
    move/from16 v21, v3

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_1a
    move/from16 v21, v4

    .line 444
    .line 445
    :goto_d
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v35

    .line 449
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v36

    .line 453
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v37

    .line 457
    new-instance v2, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 458
    .line 459
    move-object v11, v2

    .line 460
    const v38, 0x748180

    .line 461
    .line 462
    .line 463
    const/16 v39, 0x0

    .line 464
    .line 465
    const/16 v19, 0x0

    .line 466
    .line 467
    const/16 v20, 0x0

    .line 468
    .line 469
    const/16 v27, 0x0

    .line 470
    .line 471
    const/16 v30, 0x0

    .line 472
    .line 473
    const/16 v32, 0x0

    .line 474
    .line 475
    const/16 v33, 0x0

    .line 476
    .line 477
    const/16 v34, 0x0

    .line 478
    .line 479
    invoke-direct/range {v11 .. v39}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 480
    .line 481
    .line 482
    iget-object v8, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 483
    .line 484
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 485
    .line 486
    sget-object v10, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 487
    .line 488
    invoke-virtual {v10}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    invoke-static {v8}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectId()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v12

    .line 504
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    .line 505
    .line 506
    .line 507
    move-result v13

    .line 508
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    .line 509
    .line 510
    .line 511
    move-result v14

    .line 512
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v15

    .line 516
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v8, " \u8f6c\u79fb\u6570\u636e\u5e93,name = "

    .line 533
    .line 534
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v8, " subjectId:"

    .line 541
    .line 542
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v8, " ep:"

    .line 549
    .line 550
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v8, " se:"

    .line 557
    .line 558
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v8, "\uff0csubLan:"

    .line 565
    .line 566
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v8, "\uff0ctype:"

    .line 573
    .line 574
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v4, "\uff0cstatus:"

    .line 581
    .line 582
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    const/4 v4, 0x1

    .line 593
    invoke-virtual {v9, v10, v3, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 594
    .line 595
    .line 596
    sget-object v3, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 597
    .line 598
    iput-object v7, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    .line 599
    .line 600
    iput-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    .line 601
    .line 602
    iput-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    .line 603
    .line 604
    const/4 v4, 0x3

    .line 605
    iput v4, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    .line 606
    .line 607
    invoke-virtual {v3, v2, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->m(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    if-ne v2, v1, :cond_1b

    .line 612
    .line 613
    return-object v1

    .line 614
    :cond_1b
    move-object v2, v6

    .line 615
    move-object v6, v7

    .line 616
    :goto_e
    move v3, v4

    .line 617
    const/4 v4, 0x2

    .line 618
    const/4 v5, 0x1

    .line 619
    goto/16 :goto_3

    .line 620
    .line 621
    :cond_1c
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 622
    .line 623
    return-object v1

    .line 624
    :cond_1d
    :goto_f
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 625
    .line 626
    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 627
    .line 628
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    iget-object v3, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 633
    .line 634
    invoke-static {v3}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v3, " \u8f6c\u79fb\u6570\u636e\u5e93, \u539f\u59cb\u6570\u636e\u5e93\u5217\u8868\u4e3a\u7a7a"

    .line 647
    .line 648
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    const/4 v4, 0x1

    .line 656
    invoke-virtual {v1, v2, v3, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 657
    .line 658
    .line 659
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 660
    .line 661
    return-object v1
.end method
