.class final Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment;->onPrepare(Lgn/e;)V
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
    c = "com.transsion.audio.fragment.SubjectListFragment$onPrepare$1"
    f = "SubjectListFragment.kt"
    l = {
        0x164
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $mediaSource:Lgn/e;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lgn/e;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgn/e;",
            "Lcom/transsion/audio/fragment/SubjectListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->$mediaSource:Lgn/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

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
    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->$mediaSource:Lgn/e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;-><init>(Lgn/e;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->label:I

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
    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$1:I

    .line 15
    .line 16
    iget v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$0:I

    .line 17
    .line 18
    iget-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$3:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v6, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 21
    .line 22
    iget-object v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v7, Ljava/util/Iterator;

    .line 25
    .line 26
    iget-object v8, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v8, Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 29
    .line 30
    iget-object v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v9, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v10, p1

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->$mediaSource:Lgn/e;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Lgn/e;->j()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v2, 0x0

    .line 62
    :goto_0
    iget-object v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 63
    .line 64
    invoke-static {v5}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_d

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_d

    .line 75
    .line 76
    check-cast v5, Ljava/lang/Iterable;

    .line 77
    .line 78
    iget-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 79
    .line 80
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v7, 0x0

    .line 85
    move-object v9, v2

    .line 86
    move-object v8, v6

    .line 87
    move v2, v7

    .line 88
    move-object v7, v5

    .line 89
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_c

    .line 94
    .line 95
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    add-int/lit8 v6, v2, 0x1

    .line 100
    .line 101
    if-gez v2, :cond_3

    .line 102
    .line 103
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 104
    .line 105
    .line 106
    :cond_3
    check-cast v5, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    if-eqz v10, :cond_5

    .line 113
    .line 114
    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lsi/a;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    if-eqz v11, :cond_5

    .line 119
    .line 120
    iput-object v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v8, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$1:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$2:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$3:Ljava/lang/Object;

    .line 127
    .line 128
    iput v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$0:I

    .line 129
    .line 130
    iput v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$1:I

    .line 131
    .line 132
    iput v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->label:I

    .line 133
    .line 134
    invoke-interface {v11, v10, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    if-ne v10, v1, :cond_4

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_4
    move/from16 v17, v6

    .line 142
    .line 143
    move-object v6, v5

    .line 144
    move/from16 v5, v17

    .line 145
    .line 146
    :goto_2
    check-cast v10, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 147
    .line 148
    move-object/from16 v17, v6

    .line 149
    .line 150
    move v6, v5

    .line 151
    move-object/from16 v5, v17

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const/4 v10, 0x0

    .line 155
    :goto_3
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 156
    .line 157
    sget-object v12, Lcom/transsion/audio/fragment/SubjectListFragment;->q:Lcom/transsion/audio/fragment/SubjectListFragment$a;

    .line 158
    .line 159
    invoke-virtual {v12}, Lcom/transsion/audio/fragment/SubjectListFragment$a;->a()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    if-eqz v10, :cond_6

    .line 168
    .line 169
    invoke-virtual {v10}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    goto :goto_4

    .line 174
    :cond_6
    const/4 v14, 0x0

    .line 175
    :goto_4
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    if-eqz v10, :cond_7

    .line 184
    .line 185
    invoke-virtual {v10}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    goto :goto_5

    .line 190
    :cond_7
    const/4 v15, 0x0

    .line 191
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "onPrepare forEachIndexed  "

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v4, "  previousUrl "

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v4, " url "

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    const/4 v15, 0x4

    .line 225
    const/16 v16, 0x0

    .line 226
    .line 227
    const/4 v14, 0x0

    .line 228
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    if-eqz v10, :cond_8

    .line 232
    .line 233
    invoke-virtual {v10}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    goto :goto_6

    .line 238
    :cond_8
    const/4 v3, 0x0

    .line 239
    :goto_6
    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_b

    .line 244
    .line 245
    const/4 v3, 0x4

    .line 246
    if-eqz v10, :cond_9

    .line 247
    .line 248
    invoke-virtual {v10, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 249
    .line 250
    .line 251
    :cond_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v5, v3}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    if-eqz v3, :cond_a

    .line 263
    .line 264
    invoke-virtual {v3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_a
    invoke-static {v8, v9}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_b
    move v2, v6

    .line 271
    const/4 v3, 0x1

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_c
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_d
    const/4 v4, 0x0

    .line 278
    :goto_7
    return-object v4
.end method
