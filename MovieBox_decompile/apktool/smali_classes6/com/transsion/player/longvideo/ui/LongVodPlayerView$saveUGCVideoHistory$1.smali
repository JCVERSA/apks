.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->e2()V
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
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$saveUGCVideoHistory$1"
    f = "LongVodPlayerView.kt"
    l = {
        0xa91,
        0xab7,
        0xabd
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

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
    new-instance p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 64

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    iget v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v2, 0x2

    .line 12
    const-wide/16 v12, 0x0

    .line 13
    .line 14
    const/4 v14, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eq v0, v14, :cond_2

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_16

    .line 45
    .line 46
    :cond_2
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v5, p1

    .line 58
    .line 59
    move-object v8, v0

    .line 60
    move-object v7, v4

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    :cond_4
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move-object v0, v3

    .line 106
    :goto_1
    if-nez v0, :cond_6

    .line 107
    .line 108
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_6
    iget-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 112
    .line 113
    invoke-static {v4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v4}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_7

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-nez v4, :cond_9

    .line 136
    .line 137
    :cond_7
    iget-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 138
    .line 139
    invoke-static {v4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    invoke-virtual {v4}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    if-eqz v4, :cond_8

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    goto :goto_2

    .line 156
    :cond_8
    move-object v4, v3

    .line 157
    :cond_9
    :goto_2
    if-nez v4, :cond_a

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v5, "SINGLE_"

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    :cond_a
    iget-object v5, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 177
    .line 178
    invoke-static {v5}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getUgcVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    iput-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    iput v14, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    .line 187
    .line 188
    invoke-interface {v5, v4, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-ne v5, v10, :cond_b

    .line 193
    .line 194
    return-object v10

    .line 195
    :cond_b
    move-object v7, v0

    .line 196
    move-object v8, v4

    .line 197
    :goto_3
    check-cast v5, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 198
    .line 199
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_c

    .line 206
    .line 207
    invoke-virtual {v0}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    :goto_4
    move/from16 v23, v0

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_c
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_d

    .line 227
    .line 228
    invoke-virtual {v0}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_d

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    goto :goto_5

    .line 239
    :cond_d
    move-object v0, v3

    .line 240
    :goto_5
    if-eqz v0, :cond_e

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    goto :goto_4

    .line 247
    :cond_e
    move/from16 v23, v14

    .line 248
    .line 249
    :goto_6
    const-string v0, ", ugcVideoId:"

    .line 250
    .line 251
    if-nez v5, :cond_20

    .line 252
    .line 253
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 254
    .line 255
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v18

    .line 259
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 260
    .line 261
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 262
    .line 263
    .line 264
    move-result-wide v4

    .line 265
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    if-eqz v1, :cond_f

    .line 272
    .line 273
    invoke-virtual {v1}, Lln/a;->n()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    int-to-long v14, v1

    .line 278
    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    move-object/from16 v33, v1

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_f
    move-object/from16 v33, v3

    .line 286
    .line 287
    :goto_7
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 288
    .line 289
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    if-eqz v1, :cond_11

    .line 294
    .line 295
    invoke-virtual {v1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    if-eqz v1, :cond_11

    .line 300
    .line 301
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    if-nez v1, :cond_10

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_10
    :goto_8
    move-object/from16 v20, v1

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_11
    :goto_9
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 312
    .line 313
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-eqz v1, :cond_12

    .line 318
    .line 319
    invoke-virtual {v1}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-eqz v1, :cond_12

    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    goto :goto_8

    .line 330
    :cond_12
    move-object/from16 v20, v3

    .line 331
    .line 332
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v29

    .line 336
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 337
    .line 338
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    if-eqz v1, :cond_13

    .line 343
    .line 344
    invoke-virtual {v1}, Lln/a;->c()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    move-object/from16 v21, v1

    .line 349
    .line 350
    goto :goto_b

    .line 351
    :cond_13
    move-object/from16 v21, v3

    .line 352
    .line 353
    :goto_b
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 354
    .line 355
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    if-eqz v1, :cond_14

    .line 360
    .line 361
    invoke-virtual {v1}, Lln/a;->s()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    move-object/from16 v22, v1

    .line 366
    .line 367
    goto :goto_c

    .line 368
    :cond_14
    move-object/from16 v22, v3

    .line 369
    .line 370
    :goto_c
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 371
    .line 372
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    if-eqz v1, :cond_15

    .line 377
    .line 378
    invoke-virtual {v1}, Lln/a;->b()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    move-object/from16 v34, v1

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_15
    move-object/from16 v34, v3

    .line 386
    .line 387
    :goto_d
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 388
    .line 389
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_17

    .line 394
    .line 395
    invoke-virtual {v1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v1, :cond_17

    .line 400
    .line 401
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-nez v1, :cond_16

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_16
    :goto_e
    move-object/from16 v24, v1

    .line 409
    .line 410
    goto :goto_10

    .line 411
    :cond_17
    :goto_f
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 412
    .line 413
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    if-eqz v1, :cond_18

    .line 418
    .line 419
    invoke-virtual {v1}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    if-eqz v1, :cond_18

    .line 424
    .line 425
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    goto :goto_e

    .line 430
    :cond_18
    move-object/from16 v24, v3

    .line 431
    .line 432
    :goto_10
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 433
    .line 434
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-eqz v1, :cond_19

    .line 439
    .line 440
    invoke-virtual {v1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    if-eqz v1, :cond_19

    .line 445
    .line 446
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev1()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    if-eqz v1, :cond_19

    .line 451
    .line 452
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    move-object/from16 v25, v1

    .line 457
    .line 458
    goto :goto_11

    .line 459
    :cond_19
    move-object/from16 v25, v3

    .line 460
    .line 461
    :goto_11
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 462
    .line 463
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    if-eqz v1, :cond_1a

    .line 468
    .line 469
    invoke-virtual {v1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    if-eqz v1, :cond_1a

    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev2()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    if-eqz v1, :cond_1a

    .line 480
    .line 481
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    move-object/from16 v26, v1

    .line 486
    .line 487
    goto :goto_12

    .line 488
    :cond_1a
    move-object/from16 v26, v3

    .line 489
    .line 490
    :goto_12
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 491
    .line 492
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    if-eqz v1, :cond_1b

    .line 497
    .line 498
    invoke-virtual {v1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    if-eqz v1, :cond_1b

    .line 503
    .line 504
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev3()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    if-eqz v1, :cond_1b

    .line 509
    .line 510
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    move-object/from16 v27, v1

    .line 515
    .line 516
    goto :goto_13

    .line 517
    :cond_1b
    move-object/from16 v27, v3

    .line 518
    .line 519
    :goto_13
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 520
    .line 521
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    if-eqz v1, :cond_1c

    .line 526
    .line 527
    invoke-virtual {v1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    if-eqz v1, :cond_1c

    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev4()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    if-eqz v1, :cond_1c

    .line 538
    .line 539
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    move-object/from16 v28, v1

    .line 544
    .line 545
    goto :goto_14

    .line 546
    :cond_1c
    move-object/from16 v28, v3

    .line 547
    .line 548
    :goto_14
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 549
    .line 550
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    if-eqz v1, :cond_1d

    .line 555
    .line 556
    invoke-virtual {v1}, Lln/a;->g()Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    move/from16 v36, v1

    .line 561
    .line 562
    goto :goto_15

    .line 563
    :cond_1d
    move/from16 v36, v11

    .line 564
    .line 565
    :goto_15
    sget-object v1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    .line 566
    .line 567
    invoke-virtual {v1}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v37

    .line 571
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 572
    .line 573
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isRewardUnlock$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 574
    .line 575
    .line 576
    move-result v46

    .line 577
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 578
    .line 579
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    if-eqz v1, :cond_1e

    .line 584
    .line 585
    invoke-virtual {v1}, Lln/a;->q()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    :cond_1e
    move-object/from16 v48, v3

    .line 590
    .line 591
    sget-object v1, Lij/o;->a:Lij/o;

    .line 592
    .line 593
    invoke-virtual {v1}, Lij/o;->d()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v54

    .line 597
    new-instance v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 598
    .line 599
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 600
    .line 601
    .line 602
    move-result-object v32

    .line 603
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 604
    .line 605
    .line 606
    move-result-object v43

    .line 607
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 608
    .line 609
    .line 610
    move-result-object v44

    .line 611
    const/16 v56, 0x7

    .line 612
    .line 613
    const/16 v57, 0x0

    .line 614
    .line 615
    const/16 v31, 0x0

    .line 616
    .line 617
    const/16 v35, 0x0

    .line 618
    .line 619
    const/16 v38, 0x0

    .line 620
    .line 621
    const/16 v39, 0x0

    .line 622
    .line 623
    const/16 v40, 0x0

    .line 624
    .line 625
    const-wide/16 v41, 0x0

    .line 626
    .line 627
    const/16 v45, 0x0

    .line 628
    .line 629
    const/16 v47, 0x0

    .line 630
    .line 631
    const/16 v49, 0x0

    .line 632
    .line 633
    const/16 v50, 0x0

    .line 634
    .line 635
    const/16 v51, 0x0

    .line 636
    .line 637
    const/16 v52, 0x0

    .line 638
    .line 639
    const/16 v53, 0x0

    .line 640
    .line 641
    const v55, -0x3f5de000

    .line 642
    .line 643
    .line 644
    move-object v15, v1

    .line 645
    move-object/from16 v16, v8

    .line 646
    .line 647
    move-object/from16 v17, v7

    .line 648
    .line 649
    invoke-direct/range {v15 .. v57}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 650
    .line 651
    .line 652
    sget-object v58, Lwf/a;->a:Lwf/a$a;

    .line 653
    .line 654
    iget-object v3, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 655
    .line 656
    invoke-static {v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 657
    .line 658
    .line 659
    move-result-wide v3

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .line 664
    .line 665
    const-string v6, "saveUGCVideoHistory new,collectionId:"

    .line 666
    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string v0, " , progress "

    .line 680
    .line 681
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v60

    .line 691
    const/16 v62, 0x4

    .line 692
    .line 693
    const/16 v63, 0x0

    .line 694
    .line 695
    const-string v59, "LongVodPlayerView"

    .line 696
    .line 697
    const/16 v61, 0x0

    .line 698
    .line 699
    invoke-static/range {v58 .. v63}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 703
    .line 704
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getUgcVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    iput-object v7, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    .line 709
    .line 710
    iput-object v8, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    .line 711
    .line 712
    iput v2, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    .line 713
    .line 714
    invoke-interface {v0, v1, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    if-ne v0, v10, :cond_1f

    .line 719
    .line 720
    return-object v10

    .line 721
    :cond_1f
    move-object v1, v7

    .line 722
    move-object v0, v8

    .line 723
    goto :goto_16

    .line 724
    :cond_20
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 725
    .line 726
    iget-object v2, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 727
    .line 728
    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 729
    .line 730
    .line 731
    move-result-wide v2

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v5, "saveUGCVideoHistory old,collectionId:"

    .line 738
    .line 739
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string v0, ", progress "

    .line 752
    .line 753
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v16

    .line 763
    const/16 v18, 0x4

    .line 764
    .line 765
    const/16 v19, 0x0

    .line 766
    .line 767
    const-string v15, "LongVodPlayerView"

    .line 768
    .line 769
    const/16 v17, 0x0

    .line 770
    .line 771
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 775
    .line 776
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getUgcVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 781
    .line 782
    .line 783
    move-result-wide v3

    .line 784
    iget-object v2, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 785
    .line 786
    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 787
    .line 788
    .line 789
    move-result-wide v5

    .line 790
    iput-object v7, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    .line 791
    .line 792
    iput-object v8, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    .line 793
    .line 794
    iput v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    .line 795
    .line 796
    move-object v1, v8

    .line 797
    move-object v2, v7

    .line 798
    move-object v14, v7

    .line 799
    move/from16 v7, v23

    .line 800
    .line 801
    move-object v15, v8

    .line 802
    move-object/from16 v8, p0

    .line 803
    .line 804
    invoke-interface/range {v0 .. v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    if-ne v0, v10, :cond_21

    .line 809
    .line 810
    return-object v10

    .line 811
    :cond_21
    move-object v1, v14

    .line 812
    move-object v0, v15

    .line 813
    :goto_16
    new-instance v2, Lyw/e;

    .line 814
    .line 815
    const/4 v3, 0x1

    .line 816
    invoke-direct {v2, v3, v11}, Lyw/e;-><init>(ZZ)V

    .line 817
    .line 818
    .line 819
    sget-object v3, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 820
    .line 821
    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 822
    .line 823
    invoke-virtual {v3, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    check-cast v5, Lcom/transsnet/flow/event/FlowEventBus;

    .line 828
    .line 829
    const-class v6, Lyw/e;

    .line 830
    .line 831
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v6

    .line 835
    const-string v7, "getName(...)"

    .line 836
    .line 837
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v5, v6, v2, v12, v13}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 841
    .line 842
    .line 843
    new-instance v2, Lyw/g;

    .line 844
    .line 845
    iget-object v5, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 846
    .line 847
    invoke-static {v5}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 848
    .line 849
    .line 850
    move-result-wide v5

    .line 851
    invoke-direct {v2, v1, v0, v5, v6}, Lyw/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 859
    .line 860
    const-class v1, Lyw/g;

    .line 861
    .line 862
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 870
    .line 871
    .line 872
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 873
    .line 874
    return-object v0
.end method
