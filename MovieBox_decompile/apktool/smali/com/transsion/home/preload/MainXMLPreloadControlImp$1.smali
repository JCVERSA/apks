.class final Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/preload/MainXMLPreloadControlImp;-><init>(Landroid/app/Activity;)V
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
    c = "com.transsion.home.preload.MainXMLPreloadControlImp$1"
    f = "MainXMLPreloadControlImp.kt"
    l = {
        0x33,
        0x3a,
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/preload/MainXMLPreloadControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/preload/MainXMLPreloadControlImp;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->this$0:Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->$activity:Landroid/app/Activity;

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
    .locals 3
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
    new-instance v0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->this$0:Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->$activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;-><init>(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lkotlinx/coroutines/n0;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object v6, v3

    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_2
    iget-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 68
    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v6, 0x1e

    .line 72
    .line 73
    if-ne v1, v6, :cond_4

    .line 74
    .line 75
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 76
    .line 77
    const-string v6, "TCL"

    .line 78
    .line 79
    invoke-static {v1, v6, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    new-instance v9, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1$postListDeferred$1;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->$activity:Landroid/app/Activity;

    .line 95
    .line 96
    invoke-direct {v9, v1, v5}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1$postListDeferred$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 97
    .line 98
    .line 99
    const/4 v10, 0x2

    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    move-object v6, p1

    .line 103
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v6, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->this$0:Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v6, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    iput v4, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->label:I

    .line 114
    .line 115
    invoke-interface {v1, p0}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-ne v1, v0, :cond_5

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_5
    move-object v4, p1

    .line 123
    move-object p1, v1

    .line 124
    move-object v1, v6

    .line 125
    :goto_0
    check-cast p1, Landroid/view/View;

    .line 126
    .line 127
    invoke-static {v1, p1}, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->i(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 131
    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v7, "---- postListView preload success, ThreadName = "

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const/4 v10, 0x4

    .line 158
    const/4 v11, 0x0

    .line 159
    const-string v7, "MainXMLPreload"

    .line 160
    .line 161
    const/4 v9, 0x0

    .line 162
    move-object v6, p1

    .line 163
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    new-instance v9, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1$rankingDeferred$1;

    .line 171
    .line 172
    iget-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->$activity:Landroid/app/Activity;

    .line 173
    .line 174
    invoke-direct {v9, v1, v5}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1$rankingDeferred$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 175
    .line 176
    .line 177
    const/4 v10, 0x2

    .line 178
    const/4 v8, 0x0

    .line 179
    move-object v6, v4

    .line 180
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v8, "---- itemRanking preload success, ThreadName = "

    .line 198
    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    const/4 v10, 0x4

    .line 210
    const-string v7, "MainXMLPreload"

    .line 211
    .line 212
    const/4 v9, 0x0

    .line 213
    move-object v6, p1

    .line 214
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->this$0:Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 218
    .line 219
    iput-object v4, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$1:Ljava/lang/Object;

    .line 222
    .line 223
    iput v3, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->label:I

    .line 224
    .line 225
    invoke-interface {v1, p0}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-ne v1, v0, :cond_6

    .line 230
    .line 231
    return-object v0

    .line 232
    :cond_6
    move-object v6, v4

    .line 233
    move-object v12, v1

    .line 234
    move-object v1, p1

    .line 235
    move-object p1, v12

    .line 236
    :goto_1
    check-cast p1, Landroid/view/View;

    .line 237
    .line 238
    invoke-static {v1, p1}, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->h(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    new-instance v9, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1$opMovieRankDeferred$1;

    .line 246
    .line 247
    iget-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->$activity:Landroid/app/Activity;

    .line 248
    .line 249
    invoke-direct {v9, p1, v5}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1$opMovieRankDeferred$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 250
    .line 251
    .line 252
    const/4 v10, 0x2

    .line 253
    const/4 v11, 0x0

    .line 254
    const/4 v8, 0x0

    .line 255
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 260
    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v4, "---- itemSubjectOpView preload success, ThreadName = "

    .line 275
    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    const/4 v10, 0x4

    .line 287
    const-string v7, "MainXMLPreload"

    .line 288
    .line 289
    const/4 v9, 0x0

    .line 290
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->this$0:Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 294
    .line 295
    iput-object v1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$0:Ljava/lang/Object;

    .line 296
    .line 297
    iput-object v5, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->L$1:Ljava/lang/Object;

    .line 298
    .line 299
    iput v2, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;->label:I

    .line 300
    .line 301
    invoke-interface {p1, p0}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    if-ne p1, v0, :cond_7

    .line 306
    .line 307
    return-object v0

    .line 308
    :cond_7
    move-object v0, v1

    .line 309
    :goto_2
    check-cast p1, Landroid/view/View;

    .line 310
    .line 311
    invoke-static {v0, p1}, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->g(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/view/View;)V

    .line 312
    .line 313
    .line 314
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 315
    .line 316
    return-object p1
.end method
