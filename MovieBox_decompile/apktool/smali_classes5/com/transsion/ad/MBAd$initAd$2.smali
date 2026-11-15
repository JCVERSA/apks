.class final Lcom/transsion/ad/MBAd$initAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/MBAd;->d(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.MBAd$initAd$2"
    f = "MBAd.kt"
    l = {
        0xb1,
        0xbd,
        0xd5,
        0xd5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $params:Lcom/transsion/ad/MBAd$a;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/MBAd$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/MBAd$initAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/MBAd$initAd$2;->$params:Lcom/transsion/ad/MBAd$a;

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
    new-instance v0, Lcom/transsion/ad/MBAd$initAd$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/MBAd$initAd$2;->$params:Lcom/transsion/ad/MBAd$a;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/ad/MBAd$initAd$2;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/MBAd$initAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/MBAd$initAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/MBAd$initAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/MBAd$initAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, " ================= "

    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x1

    .line 15
    if-eqz v3, :cond_4

    .line 16
    .line 17
    if-eq v3, v7, :cond_3

    .line 18
    .line 19
    if-eq v3, v6, :cond_2

    .line 20
    .line 21
    if-eq v3, v5, :cond_1

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lxh/a;

    .line 30
    .line 31
    iget-object v4, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .line 35
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    move-object/from16 v5, p1

    .line 39
    .line 40
    move-object/from16 v17, v0

    .line 41
    .line 42
    :goto_0
    move-object v6, v3

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lxh/a;

    .line 59
    .line 60
    iget-object v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v6, Lkotlinx/coroutines/r0;

    .line 67
    .line 68
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    move-object/from16 v17, v0

    .line 72
    .line 73
    move-object v4, v5

    .line 74
    move-object/from16 v0, p1

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_2
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Lcom/transsion/ad/MBAd$a;

    .line 81
    .line 82
    iget-object v6, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v6, Lkotlinx/coroutines/n0;

    .line 85
    .line 86
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    move-object/from16 v17, v0

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Lcom/transsion/ad/MBAd$a;

    .line 96
    .line 97
    iget-object v7, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v7, Lkotlinx/coroutines/n0;

    .line 100
    .line 101
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    .line 104
    move-object/from16 v17, v0

    .line 105
    .line 106
    move-object v6, v7

    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, Lkotlinx/coroutines/n0;

    .line 115
    .line 116
    iget-object v9, v1, Lcom/transsion/ad/MBAd$initAd$2;->$params:Lcom/transsion/ad/MBAd$a;

    .line 117
    .line 118
    :try_start_4
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 119
    .line 120
    sget-object v11, Lxh/a;->a:Lxh/a;

    .line 121
    .line 122
    sget-object v10, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 123
    .line 124
    invoke-static {v10}, Lcom/transsion/ad/MBAd;->a(Lcom/transsion/ad/MBAd;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    sget-object v15, Lrh/e;->a:Lrh/e;

    .line 141
    .line 142
    invoke-virtual {v15}, Lrh/e;->a()Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    sget-object v16, Lcom/transsion/ad/strategy/u;->a:Lcom/transsion/ad/strategy/u;

    .line 147
    .line 148
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/strategy/u;->c()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    sget-object v16, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    .line 153
    .line 154
    invoke-virtual/range {v16 .. v16}, Lcom/tn/lib/net/dns/or/CacheIpPool;->l()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    sget-object v16, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    .line 159
    .line 160
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/scene/b;->k()Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/scene/b;->h()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    sget-object v7, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    .line 169
    .line 170
    move-object/from16 v17, v0

    .line 171
    .line 172
    invoke-virtual {v7}, Lcom/transsion/ad/strategy/NationalInformationManager;->d()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object/from16 v18, v2

    .line 177
    .line 178
    invoke-virtual {v9}, Lcom/transsion/ad/MBAd$a;->l()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move-object/from16 p1, v7

    .line 183
    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v10, " --> initAd() --> monopoly\u5e7f\u544aSDK \u5f00\u59cb\u521d\u59cb\u5316 \n--> SDK_VERSION = 4.0.3 \n--> \u5f53\u524d\u5305\u540d = "

    .line 193
    .line 194
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v10, " \n--> \u5f53\u524d\u5bbf\u4e3b\u7248\u672c\u53f7 = "

    .line 201
    .line 202
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v10, " \n--> \u5f53\u524d\u5bbf\u4e3b\u7248\u672c\u540d = "

    .line 209
    .line 210
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v10, " \n--> \u5f53\u524d\u662f\u5426\u662f\u4f1a\u5458 = "

    .line 217
    .line 218
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v10, " \n --> \u5f53\u524d\u662f\u5426\u662f\u65b0\u7528\u6237 = "

    .line 225
    .line 226
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v4, "\n--> host = "

    .line 233
    .line 234
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v4, "\n--> isOpenAd = "

    .line 241
    .line 242
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v4, "\n--> adLinkOff = "

    .line 249
    .line 250
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v4, "\n--> currentMcc = "

    .line 257
    .line 258
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v0, "\n --> AdInitParams = "

    .line 265
    .line 266
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    const/4 v15, 0x6

    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    const/4 v14, 0x0

    .line 281
    invoke-static/range {v11 .. v16}, Lxh/a;->c(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    sget-object v0, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

    .line 285
    .line 286
    invoke-virtual {v9}, Lcom/transsion/ad/MBAd$a;->c()Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v0, v2}, Lcom/transsion/ad/strategy/AppManager;->b(Lcom/transsion/ad/strategy/AppManager$AppEnum;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Lrh/d;->a:Lrh/d;

    .line 294
    .line 295
    invoke-virtual {v9}, Lcom/transsion/ad/MBAd$a;->f()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v0, v2}, Lrh/d;->b(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v2, "getApp(...)"

    .line 307
    .line 308
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 312
    .line 313
    iput-object v9, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 314
    .line 315
    const/4 v2, 0x1

    .line 316
    iput v2, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    .line 317
    .line 318
    move-object/from16 v2, p1

    .line 319
    .line 320
    invoke-virtual {v2, v0, v1}, Lcom/transsion/ad/strategy/NationalInformationManager;->f(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    move-object/from16 v2, v18

    .line 325
    .line 326
    if-ne v0, v2, :cond_5

    .line 327
    .line 328
    return-object v2

    .line 329
    :cond_5
    move-object v6, v3

    .line 330
    move-object v3, v9

    .line 331
    :goto_1
    sget-object v0, Lci/h;->a:Lci/h;

    .line 332
    .line 333
    sget-object v4, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    .line 334
    .line 335
    invoke-virtual {v4}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {v0, v5}, Lci/h;->a(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Lcom/transsion/ad/a;->a()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v0, v4}, Lci/h;->a(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3}, Lcom/transsion/ad/MBAd$a;->g()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-nez v0, :cond_6

    .line 354
    .line 355
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v4, Lcom/transsion/ad/MBAd$initAd$2$1$1;

    .line 360
    .line 361
    const/4 v5, 0x0

    .line 362
    invoke-direct {v4, v5}, Lcom/transsion/ad/MBAd$initAd$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 363
    .line 364
    .line 365
    iput-object v6, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 366
    .line 367
    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 368
    .line 369
    const/4 v5, 0x2

    .line 370
    iput v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    .line 371
    .line 372
    invoke-static {v0, v4, v1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    if-ne v0, v2, :cond_6

    .line 377
    .line 378
    return-object v2

    .line 379
    :cond_6
    :goto_2
    move-object v0, v6

    .line 380
    new-instance v4, Lcom/transsion/ad/strategy/AdObserveNetworkState;

    .line 381
    .line 382
    invoke-direct {v4}, Lcom/transsion/ad/strategy/AdObserveNetworkState;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/transsion/ad/MBAd$a;->a()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v4, v5}, Lcom/transsion/ad/strategy/AdObserveNetworkState;->f(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    new-instance v7, Lcom/transsion/ad/MBAd$initAd$2$1$sdkHi$1;

    .line 393
    .line 394
    const/4 v4, 0x0

    .line 395
    invoke-direct {v7, v3, v4}, Lcom/transsion/ad/MBAd$initAd$2$1$sdkHi$1;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    .line 396
    .line 397
    .line 398
    const/4 v8, 0x3

    .line 399
    const/4 v9, 0x0

    .line 400
    const/4 v5, 0x0

    .line 401
    const/4 v6, 0x0

    .line 402
    move-object v4, v0

    .line 403
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    new-instance v7, Lcom/transsion/ad/MBAd$initAd$2$1$sdkMb$1;

    .line 408
    .line 409
    const/4 v4, 0x0

    .line 410
    invoke-direct {v7, v3, v4}, Lcom/transsion/ad/MBAd$initAd$2$1$sdkMb$1;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    .line 411
    .line 412
    .line 413
    const/4 v8, 0x3

    .line 414
    const/4 v9, 0x0

    .line 415
    const/4 v5, 0x0

    .line 416
    const/4 v6, 0x0

    .line 417
    move-object v4, v0

    .line 418
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 423
    .line 424
    sget-object v4, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 425
    .line 426
    invoke-static {v4}, Lcom/transsion/ad/MBAd;->a(Lcom/transsion/ad/MBAd;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    iput-object v10, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 431
    .line 432
    iput-object v4, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    .line 435
    .line 436
    const/4 v5, 0x3

    .line 437
    iput v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    .line 438
    .line 439
    invoke-interface {v0, v1}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-ne v0, v2, :cond_7

    .line 444
    .line 445
    return-object v2

    .line 446
    :cond_7
    move-object v6, v10

    .line 447
    :goto_3
    iput-object v4, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    .line 448
    .line 449
    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    .line 450
    .line 451
    iput-object v0, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    .line 452
    .line 453
    const/4 v5, 0x4

    .line 454
    iput v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    .line 455
    .line 456
    invoke-interface {v6, v1}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    if-ne v5, v2, :cond_8

    .line 461
    .line 462
    return-object v2

    .line 463
    :cond_8
    move-object v2, v0

    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    move-object/from16 v3, v17

    .line 472
    .line 473
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v4, " --> initAd() --> "

    .line 480
    .line 481
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v2, " -- "

    .line 488
    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    const/4 v10, 0x4

    .line 503
    const/4 v11, 0x0

    .line 504
    const/4 v8, 0x6

    .line 505
    const/4 v9, 0x0

    .line 506
    invoke-static/range {v6 .. v11}, Lxh/a;->c(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 510
    .line 511
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 515
    goto :goto_6

    .line 516
    :goto_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 517
    .line 518
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    if-nez v0, :cond_9

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 534
    .line 535
    .line 536
    sget-object v2, Lxh/a;->a:Lxh/a;

    .line 537
    .line 538
    sget-object v3, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 539
    .line 540
    invoke-static {v3}, Lcom/transsion/ad/MBAd;->a(Lcom/transsion/ad/MBAd;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v3, " --> initAd() --> \u521d\u59cb\u5316\u5f02\u5e38 --> it = "

    .line 553
    .line 554
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    const/4 v6, 0x4

    .line 565
    const/4 v7, 0x0

    .line 566
    const/4 v4, 0x6

    .line 567
    const/4 v5, 0x0

    .line 568
    invoke-static/range {v2 .. v7}, Lxh/a;->c(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 572
    .line 573
    return-object v0
.end method
