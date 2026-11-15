.class final Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3;->a(Lcom/transsion/moviedetailapi/DownloadItem;)V
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
    c = "com.transsion.audio.fragment.SubjectListFragment$initView$1$3$onPlayItem$1"
    f = "SubjectListFragment.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $download:Lcom/transsion/moviedetailapi/DownloadItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            "Lcom/transsion/audio/fragment/SubjectListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

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
    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

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
    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->label:I

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
    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 41
    .line 42
    invoke-static {v5}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lsi/a;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    iput v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->label:I

    .line 49
    .line 50
    invoke-interface {v5, v2, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-ne v2, v1, :cond_2

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_2
    :goto_0
    move-object v4, v2

    .line 58
    check-cast v4, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 59
    .line 60
    :cond_3
    const-wide/16 v1, 0x0

    .line 61
    .line 62
    const-class v5, Lep/a;

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    const/4 v7, 0x0

    .line 66
    if-eqz v4, :cond_b

    .line 67
    .line 68
    sget-object v8, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v8, v4}, Lcom/transsion/audio/player/AudioPlayer;->y(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_5

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ne v1, v6, :cond_4

    .line 85
    .line 86
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x4

    .line 96
    invoke-virtual {v4, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    new-array v1, v7, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lep/a;

    .line 115
    .line 116
    if-eqz v1, :cond_d

    .line 117
    .line 118
    invoke-interface {v1}, Lep/a;->stop()V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_4
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 136
    .line 137
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 142
    .line 143
    .line 144
    new-array v1, v7, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lep/a;

    .line 151
    .line 152
    if-eqz v1, :cond_d

    .line 153
    .line 154
    invoke-interface {v1}, Lep/a;->prepare()V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :cond_5
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    if-eqz v8, :cond_6

    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v8

    .line 169
    goto :goto_1

    .line 170
    :cond_6
    move-wide v8, v1

    .line 171
    :goto_1
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    if-eqz v10, :cond_7

    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v10

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    const-wide/16 v10, -0x1f4

    .line 183
    .line 184
    :goto_2
    cmp-long v8, v8, v10

    .line 185
    .line 186
    if-ltz v8, :cond_8

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    move v3, v7

    .line 190
    :goto_3
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    const/4 v9, 0x6

    .line 195
    if-eq v8, v9, :cond_9

    .line 196
    .line 197
    if-eqz v3, :cond_a

    .line 198
    .line 199
    :cond_9
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v4, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    .line 204
    .line 205
    .line 206
    :cond_a
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 219
    .line 220
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 225
    .line 226
    .line 227
    new-array v1, v7, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Lep/a;

    .line 234
    .line 235
    if-eqz v1, :cond_d

    .line 236
    .line 237
    invoke-interface {v1, v4, v7}, Lep/a;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :cond_b
    new-instance v4, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 243
    .line 244
    iget-object v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    if-nez v3, :cond_c

    .line 251
    .line 252
    const-string v3, ""

    .line 253
    .line 254
    :cond_c
    move-object v9, v3

    .line 255
    iget-object v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 256
    .line 257
    invoke-static {v3}, Lcom/transsion/audio/fragment/SubjectListFragment;->n0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v16

    .line 287
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v21

    .line 293
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v22

    .line 299
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 300
    .line 301
    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->o0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v23

    .line 305
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 306
    .line 307
    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->j0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v24

    .line 311
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 312
    .line 313
    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->p0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v26

    .line 317
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    .line 320
    .line 321
    .line 322
    move-result v27

    .line 323
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    .line 326
    .line 327
    .line 328
    move-result v28

    .line 329
    const v29, 0x10700

    .line 330
    .line 331
    .line 332
    const/16 v30, 0x0

    .line 333
    .line 334
    const-string v15, ""

    .line 335
    .line 336
    const/16 v17, 0x0

    .line 337
    .line 338
    const/16 v18, 0x0

    .line 339
    .line 340
    const/16 v19, 0x0

    .line 341
    .line 342
    const-string v20, ""

    .line 343
    .line 344
    const/16 v25, 0x0

    .line 345
    .line 346
    move-object v8, v4

    .line 347
    invoke-direct/range {v8 .. v30}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 351
    .line 352
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 357
    .line 358
    .line 359
    new-array v1, v7, [Ljava/lang/Object;

    .line 360
    .line 361
    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Lep/a;

    .line 366
    .line 367
    if-eqz v1, :cond_d

    .line 368
    .line 369
    invoke-interface {v1, v4, v7}, Lep/a;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    .line 370
    .line 371
    .line 372
    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 373
    .line 374
    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 375
    .line 376
    invoke-static {v1, v2, v4}, Lcom/transsion/audio/fragment/SubjectListFragment;->r0(Lcom/transsion/audio/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 377
    .line 378
    .line 379
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 380
    .line 381
    return-object v1
.end method
