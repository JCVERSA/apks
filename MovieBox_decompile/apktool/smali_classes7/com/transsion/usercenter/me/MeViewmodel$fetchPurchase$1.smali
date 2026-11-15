.class final Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/me/MeViewmodel;->y()V
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
    c = "com.transsion.usercenter.me.MeViewmodel$fetchPurchase$1"
    f = "MeViewmodel.kt"
    l = {
        0xd3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/me/MeViewmodel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/me/MeViewmodel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

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
    new-instance v0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->label:I

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
    iget-object v0, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/transsion/usercenter/me/MeViewmodel;

    .line 17
    .line 18
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v3, p1

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lkotlinx/coroutines/n0;

    .line 42
    .line 43
    iget-object v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    .line 44
    .line 45
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 46
    .line 47
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->k(Lcom/transsion/usercenter/me/MeViewmodel;)Lqx/a;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-interface {v4}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/transsnet/loginapi/bean/UserInfo;->getPhone()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    move-object v7, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v7, 0x0

    .line 78
    :goto_0
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->k(Lcom/transsion/usercenter/me/MeViewmodel;)Lqx/a;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v4}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move-object v8, v4

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/4 v8, 0x0

    .line 97
    :goto_1
    sget-object v4, Ltg/b;->a:Ltg/b;

    .line 98
    .line 99
    invoke-virtual {v4}, Ltg/b;->i()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    sget-object v4, Lmg/a;->a:Lmg/a$a;

    .line 104
    .line 105
    invoke-virtual {v4}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 106
    .line 107
    .line 108
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const-string v5, ""

    .line 110
    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    :try_start_2
    const-string v6, "custom_local_iso"

    .line 114
    .line 115
    invoke-virtual {v4, v6, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_4

    .line 120
    .line 121
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 122
    .line 123
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const-string v6, "toUpperCase(...)"

    .line 128
    .line 129
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    const/4 v4, 0x0

    .line 134
    :goto_2
    sget-object v14, Lmg/b;->a:Lmg/b$a;

    .line 135
    .line 136
    new-instance v16, Lcom/transsion/usercenter/profile/bean/ZeroBody;

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    move-object v6, v5

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move-object v6, v4

    .line 143
    :goto_3
    const/16 v13, 0x60

    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    const/4 v11, 0x0

    .line 147
    const/4 v12, 0x0

    .line 148
    move-object/from16 v5, v16

    .line 149
    .line 150
    move-object v15, v14

    .line 151
    move-object v14, v4

    .line 152
    invoke-direct/range {v5 .. v14}, Lcom/transsion/usercenter/profile/bean/ZeroBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    .line 154
    .line 155
    invoke-static/range {v16 .. v16}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const-string v5, "toJson(...)"

    .line 160
    .line 161
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15, v4}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    if-nez v4, :cond_6

    .line 169
    .line 170
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_6
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->r(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-eqz v5, :cond_7

    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/transsion/usercenter/profile/bean/ZeroConfig;->getUrlPath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    const/4 v15, 0x0

    .line 185
    :goto_4
    if-eqz v15, :cond_8

    .line 186
    .line 187
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-nez v5, :cond_9

    .line 192
    .line 193
    :cond_8
    const-string v15, "campaign/v1/freebuy/campaign/recent"

    .line 194
    .line 195
    :cond_9
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->m(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/d;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    iput-object v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    .line 200
    .line 201
    iput v3, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->label:I

    .line 202
    .line 203
    invoke-interface {v5, v4, v15, v1}, Lcom/transsion/usercenter/profile/d;->a(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-ne v3, v0, :cond_a

    .line 208
    .line 209
    return-object v0

    .line 210
    :cond_a
    move-object v0, v2

    .line 211
    :goto_5
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 212
    .line 213
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 214
    .line 215
    const-string v5, "MeViewmodel"

    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v6, "zero entrance:"

    .line 223
    .line 224
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const/4 v8, 0x4

    .line 235
    const/4 v9, 0x0

    .line 236
    const/4 v7, 0x0

    .line 237
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v4, "0"

    .line 245
    .line 246
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_c

    .line 251
    .line 252
    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->s(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->s(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Lcom/transsion/usercenter/profile/bean/ZeroResponse;

    .line 268
    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/ZeroResponse;->getItems()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-eqz v3, :cond_b

    .line 276
    .line 277
    :goto_6
    check-cast v3, Ljava/util/Collection;

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    goto :goto_6

    .line 285
    :goto_7
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    .line 287
    .line 288
    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->t(Lcom/transsion/usercenter/me/MeViewmodel;)V

    .line 289
    .line 290
    .line 291
    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 292
    .line 293
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    goto :goto_9

    .line 298
    :goto_8
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 299
    .line 300
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :goto_9
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    if-eqz v0, :cond_d

    .line 313
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v3, "error:"

    .line 320
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 328
    .line 329
    return-object v0
.end method
