.class final Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment;->onProgress(JLgn/e;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsion.audio.fragment.SubjectListFragment$onProgress$1"
    f = "SubjectListFragment.kt"
    l = {
        0x17a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $mediaSource:Lgn/e;

.field final synthetic $progress:J

.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lgn/e;Lcom/transsion/audio/fragment/SubjectListFragment;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgn/e;",
            "Lcom/transsion/audio/fragment/SubjectListFragment;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$mediaSource:Lgn/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$progress:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$mediaSource:Lgn/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$progress:J

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;-><init>(Lgn/e;Lcom/transsion/audio/fragment/SubjectListFragment;JLkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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
    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->label:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v4, :cond_0

    .line 14
    .line 15
    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$1:I

    .line 16
    .line 17
    iget v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$0:I

    .line 18
    .line 19
    iget-wide v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->J$0:J

    .line 20
    .line 21
    iget-object v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$3:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v9, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 24
    .line 25
    iget-object v10, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v10, Ljava/util/Iterator;

    .line 28
    .line 29
    iget-object v11, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v11, Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 32
    .line 33
    iget-object v12, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v12, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v13, p1

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$mediaSource:Lgn/e;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lgn/e;->j()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v2, v5

    .line 65
    :goto_0
    iget-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 66
    .line 67
    invoke-static {v6}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-eqz v6, :cond_11

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_11

    .line 78
    .line 79
    check-cast v6, Ljava/lang/Iterable;

    .line 80
    .line 81
    iget-object v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 82
    .line 83
    iget-wide v8, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$progress:J

    .line 84
    .line 85
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    move-object v12, v2

    .line 90
    move-object v10, v6

    .line 91
    move-object v11, v7

    .line 92
    move-wide v7, v8

    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_10

    .line 99
    .line 100
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    add-int/lit8 v9, v2, 0x1

    .line 105
    .line 106
    if-gez v2, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 109
    .line 110
    .line 111
    :cond_3
    check-cast v6, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    if-eqz v13, :cond_5

    .line 118
    .line 119
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lsi/a;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    if-eqz v14, :cond_5

    .line 124
    .line 125
    iput-object v12, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v11, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v10, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$2:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$3:Ljava/lang/Object;

    .line 132
    .line 133
    iput-wide v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->J$0:J

    .line 134
    .line 135
    iput v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$0:I

    .line 136
    .line 137
    iput v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$1:I

    .line 138
    .line 139
    iput v4, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->label:I

    .line 140
    .line 141
    invoke-interface {v14, v13, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    if-ne v13, v1, :cond_4

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_4
    move/from16 v21, v9

    .line 149
    .line 150
    move-object v9, v6

    .line 151
    move/from16 v6, v21

    .line 152
    .line 153
    :goto_2
    check-cast v13, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 154
    .line 155
    move-object/from16 v21, v9

    .line 156
    .line 157
    move v9, v6

    .line 158
    move-object/from16 v6, v21

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    move-object v13, v5

    .line 162
    :goto_3
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-eqz v14, :cond_6

    .line 171
    .line 172
    invoke-static {v11, v12}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-nez v14, :cond_8

    .line 184
    .line 185
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    if-eqz v13, :cond_7

    .line 190
    .line 191
    invoke-virtual {v13}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    goto :goto_4

    .line 196
    :cond_7
    move-object v15, v5

    .line 197
    :goto_4
    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    if-eqz v14, :cond_8

    .line 202
    .line 203
    move v14, v4

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    const/4 v14, 0x0

    .line 206
    :goto_5
    sget-object v15, Lwf/a;->a:Lwf/a$a;

    .line 207
    .line 208
    sget-object v16, Lcom/transsion/audio/fragment/SubjectListFragment;->q:Lcom/transsion/audio/fragment/SubjectListFragment$a;

    .line 209
    .line 210
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/audio/fragment/SubjectListFragment$a;->a()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v4, "STATUS_PAUSED  index "

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v4, " needPause "

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v17

    .line 239
    const/16 v19, 0x4

    .line 240
    .line 241
    const/16 v20, 0x0

    .line 242
    .line 243
    const/16 v18, 0x0

    .line 244
    .line 245
    invoke-static/range {v15 .. v20}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    if-eqz v14, :cond_b

    .line 249
    .line 250
    const/4 v3, 0x4

    .line 251
    if-eqz v13, :cond_9

    .line 252
    .line 253
    invoke-virtual {v13, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 254
    .line 255
    .line 256
    :cond_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v6, v3}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    if-eqz v3, :cond_a

    .line 268
    .line 269
    invoke-virtual {v3, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_a
    invoke-static {v11, v12}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_b
    if-eqz v13, :cond_c

    .line 276
    .line 277
    invoke-virtual {v13}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    goto :goto_6

    .line 282
    :cond_c
    move-object v3, v5

    .line 283
    :goto_6
    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_f

    .line 288
    .line 289
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-nez v3, :cond_f

    .line 298
    .line 299
    if-eqz v13, :cond_d

    .line 300
    .line 301
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v13, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    .line 306
    .line 307
    .line 308
    :cond_d
    const/4 v3, 0x3

    .line 309
    if-eqz v13, :cond_e

    .line 310
    .line 311
    invoke-virtual {v13, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 312
    .line 313
    .line 314
    :cond_e
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v6, v3}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    if-eqz v3, :cond_f

    .line 326
    .line 327
    invoke-virtual {v3, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_f
    move v2, v9

    .line 331
    const/4 v4, 0x1

    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_10
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 335
    .line 336
    :cond_11
    return-object v5
.end method
