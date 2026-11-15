.class final Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->L0()V
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
    c = "com.transsnet.downloader.view.DownloadingTipsDialogFragment$opnAudio$1"
    f = "DownloadingTipsDialogFragment.kt"
    l = {
        0x12f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

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
    new-instance p1, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;-><init>(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

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
    iget v2, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v3, p1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    instance-of v5, v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v2, v4

    .line 50
    :goto_0
    if-nez v2, :cond_3

    .line 51
    .line 52
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_3
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 56
    .line 57
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->x0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsnet/downloader/manager/g;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v6, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 62
    .line 63
    invoke-static {v6}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v5, v6}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 71
    .line 72
    .line 73
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 74
    .line 75
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->v0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lsi/a;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v6, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 80
    .line 81
    invoke-static {v6}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iput-object v2, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    iput v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->label:I

    .line 95
    .line 96
    invoke-interface {v5, v6, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-ne v3, v1, :cond_4

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_4
    move-object v1, v2

    .line 104
    :goto_1
    check-cast v3, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    if-nez v3, :cond_a

    .line 108
    .line 109
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 123
    .line 124
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 136
    .line 137
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 149
    .line 150
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 162
    .line 163
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 175
    .line 176
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object/from16 v20, v3

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    move-object/from16 v20, v4

    .line 190
    .line 191
    :goto_2
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 192
    .line 193
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    if-eqz v3, :cond_6

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    move-object/from16 v19, v3

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move-object/from16 v19, v4

    .line 207
    .line 208
    :goto_3
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 209
    .line 210
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    move/from16 v24, v3

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_7
    move/from16 v24, v2

    .line 224
    .line 225
    :goto_4
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 226
    .line 227
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eqz v3, :cond_8

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    move/from16 v25, v3

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_8
    move/from16 v25, v2

    .line 241
    .line 242
    :goto_5
    iget-object v3, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 243
    .line 244
    invoke-static {v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    if-eqz v3, :cond_9

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    move-object/from16 v23, v3

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_9
    move-object/from16 v23, v4

    .line 258
    .line 259
    :goto_6
    new-instance v3, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 260
    .line 261
    move-object v5, v3

    .line 262
    const-wide/16 v12, 0x0

    .line 263
    .line 264
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    const v26, 0x19fc0

    .line 269
    .line 270
    .line 271
    const/16 v27, 0x0

    .line 272
    .line 273
    const/4 v12, 0x0

    .line 274
    const/4 v13, 0x0

    .line 275
    const/4 v14, 0x0

    .line 276
    const/4 v15, 0x0

    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/16 v17, 0x0

    .line 280
    .line 281
    const/16 v18, 0x0

    .line 282
    .line 283
    const/16 v21, 0x0

    .line 284
    .line 285
    const/16 v22, 0x0

    .line 286
    .line 287
    invoke-direct/range {v5 .. v27}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    .line 289
    .line 290
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 291
    .line 292
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 307
    .line 308
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 323
    .line 324
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 339
    .line 340
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->w0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_a
    iget-object v5, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 355
    .line 356
    invoke-static {v5}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->z0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lep/b;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    if-eqz v5, :cond_b

    .line 361
    .line 362
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 363
    .line 364
    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v5, v6, v3}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 368
    .line 369
    .line 370
    :cond_b
    iget-object v1, v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$opnAudio$1;->this$0:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 371
    .line 372
    invoke-static {v1}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->y0(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)Lep/a;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    if-eqz v1, :cond_c

    .line 377
    .line 378
    const/4 v5, 0x2

    .line 379
    invoke-static {v1, v3, v2, v5, v4}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_c
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 383
    .line 384
    return-object v1
.end method
