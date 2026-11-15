.class final Lcom/transsion/startup/StartupManager$coldBootStage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/startup/StartupManager;->D()V
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
    c = "com.transsion.startup.StartupManager$coldBootStage$2"
    f = "StartupManager.kt"
    l = {
        0x12b,
        0x12c,
        0x12f,
        0x139,
        0x13c,
        0x13d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/startup/StartupManager;


# direct methods
.method constructor <init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/startup/StartupManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/startup/StartupManager$coldBootStage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

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
    new-instance p1, Lcom/transsion/startup/StartupManager$coldBootStage$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;-><init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/startup/StartupManager$coldBootStage$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const-string v4, "app"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :pswitch_0
    iget v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    .line 24
    .line 25
    iget v2, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    .line 26
    .line 27
    iget-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v6, Lcom/transsion/startup/StartupManager;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    move-object p1, v6

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :pswitch_1
    iget v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    .line 38
    .line 39
    iget v2, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    .line 40
    .line 41
    iget-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v6, Lcom/transsion/startup/StartupManager;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->r(Lcom/transsion/startup/StartupManager;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->i(Lcom/transsion/startup/StartupManager;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Ltg/b;->a:Ltg/b;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    .line 93
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move-object v1, v5

    .line 97
    :cond_1
    invoke-virtual {p1, v1}, Ltg/b;->b(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->k(Lcom/transsion/startup/StartupManager;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/transsion/payment/lib/f;->g()V

    .line 112
    .line 113
    .line 114
    const-class p1, Lim/b;

    .line 115
    .line 116
    new-array v1, v2, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lim/b;

    .line 123
    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    invoke-static {p1, v5, v3, v5}, Lim/b$a;->a(Lim/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 130
    .line 131
    const/4 v10, 0x4

    .line 132
    const/4 v11, 0x0

    .line 133
    const-string v7, "StartupManager"

    .line 134
    .line 135
    const-string v8, "stage 2 end"

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    move-object v6, p1

    .line 139
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->o(Lcom/transsion/startup/StartupManager;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->t(Lcom/transsion/startup/StartupManager;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->j(Lcom/transsion/startup/StartupManager;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->p(Lcom/transsion/startup/StartupManager;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->s(Lcom/transsion/startup/StartupManager;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->q(Lcom/transsion/startup/StartupManager;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->m(Lcom/transsion/startup/StartupManager;)V

    .line 175
    .line 176
    .line 177
    sget-object v1, Lcom/transsion/spwaitkiller/SpWaitKiller;->Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    .line 178
    .line 179
    iget-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 180
    .line 181
    invoke-static {v6}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    if-nez v6, :cond_3

    .line 186
    .line 187
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    move-object v6, v5

    .line 191
    :cond_3
    invoke-virtual {v1, v6}, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;->builder(Landroid/content/Context;)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->build()Lcom/transsion/spwaitkiller/SpWaitKiller;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/transsion/spwaitkiller/SpWaitKiller;->work()V

    .line 200
    .line 201
    .line 202
    sget-object v1, Lcom/transsion/spwaitkiller/gchacker/GCHacker;->INSTANCE:Lcom/transsion/spwaitkiller/gchacker/GCHacker;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/transsion/spwaitkiller/gchacker/GCHacker;->hookGCTimeout()V

    .line 205
    .line 206
    .line 207
    const/4 v10, 0x4

    .line 208
    const/4 v11, 0x0

    .line 209
    const-string v7, "StartupManager"

    .line 210
    .line 211
    const-string v8, "stage 3 end"

    .line 212
    .line 213
    const/4 v9, 0x0

    .line 214
    move-object v6, p1

    .line 215
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 219
    .line 220
    invoke-static {p1, v3}, Lcom/transsion/startup/StartupManager;->l(Lcom/transsion/startup/StartupManager;Z)V

    .line 221
    .line 222
    .line 223
    const-class p1, Lvw/b;

    .line 224
    .line 225
    new-array v1, v2, [Ljava/lang/Object;

    .line 226
    .line 227
    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lvw/b;

    .line 232
    .line 233
    if-eqz p1, :cond_4

    .line 234
    .line 235
    iput v3, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 236
    .line 237
    invoke-interface {p1, p0}, Lvw/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-ne p1, v0, :cond_4

    .line 242
    .line 243
    return-object v0

    .line 244
    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 245
    iput p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 246
    .line 247
    const-wide/16 v6, 0x1388

    .line 248
    .line 249
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-ne p1, v0, :cond_5

    .line 254
    .line 255
    return-object v0

    .line 256
    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 257
    .line 258
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 259
    .line 260
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-nez v1, :cond_6

    .line 265
    .line 266
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    move-object v1, v5

    .line 270
    :cond_6
    invoke-virtual {p1, v1}, Lcom/transsion/push/utils/NotificationUtil;->L(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    sget-object p1, Lcom/transsion/startup/work/a;->a:Lcom/transsion/startup/work/a;

    .line 274
    .line 275
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 276
    .line 277
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-nez v1, :cond_7

    .line 282
    .line 283
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object v1, v5

    .line 287
    :cond_7
    invoke-virtual {p1, v1}, Lcom/transsion/startup/work/a;->a(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    const/4 p1, 0x3

    .line 291
    iput p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 292
    .line 293
    const-wide/16 v6, 0x2710

    .line 294
    .line 295
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-ne p1, v0, :cond_8

    .line 300
    .line 301
    return-object v0

    .line 302
    :cond_8
    :goto_2
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-interface {p1}, Lcom/transsion/subtitle/h;->init()V

    .line 309
    .line 310
    .line 311
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 312
    .line 313
    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 314
    .line 315
    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-nez v1, :cond_9

    .line 320
    .line 321
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    move-object v1, v5

    .line 325
    :cond_9
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 326
    .line 327
    .line 328
    sget-object p1, Lyl/e;->a:Lyl/e;

    .line 329
    .line 330
    invoke-virtual {p1}, Lyl/e;->d()V

    .line 331
    .line 332
    .line 333
    sget-object p1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->a:Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->g()V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 339
    .line 340
    const/4 v1, 0x4

    .line 341
    iput v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 342
    .line 343
    invoke-static {p1, p0}, Lcom/transsion/startup/StartupManager;->y(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    if-ne p1, v0, :cond_a

    .line 348
    .line 349
    return-object v0

    .line 350
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    .line 351
    .line 352
    const v1, 0x7fffffff

    .line 353
    .line 354
    .line 355
    :goto_4
    if-ge v2, v1, :cond_d

    .line 356
    .line 357
    iput-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    .line 358
    .line 359
    iput v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    .line 360
    .line 361
    iput v2, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    .line 362
    .line 363
    const/4 v6, 0x5

    .line 364
    iput v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 365
    .line 366
    const-wide/32 v6, 0x3a980

    .line 367
    .line 368
    .line 369
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    if-ne v6, v0, :cond_b

    .line 374
    .line 375
    return-object v0

    .line 376
    :cond_b
    move-object v6, p1

    .line 377
    move v12, v2

    .line 378
    move v2, v1

    .line 379
    move v1, v12

    .line 380
    :goto_5
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 381
    .line 382
    invoke-static {v6}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    if-nez v7, :cond_c

    .line 387
    .line 388
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    move-object v7, v5

    .line 392
    :cond_c
    invoke-virtual {p1, v7}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    iput-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    .line 397
    .line 398
    iput v2, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    .line 399
    .line 400
    iput v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    .line 401
    .line 402
    const/4 v7, 0x6

    .line 403
    iput v7, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    .line 404
    .line 405
    invoke-interface {p1, p0}, Lcom/transsnet/downloader/manager/g;->B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    if-ne p1, v0, :cond_0

    .line 410
    .line 411
    return-object v0

    .line 412
    :goto_6
    add-int/2addr v1, v3

    .line 413
    move v12, v2

    .line 414
    move v2, v1

    .line 415
    move v1, v12

    .line 416
    goto :goto_4

    .line 417
    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 418
    .line 419
    return-object p1

    .line 420
    nop

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
