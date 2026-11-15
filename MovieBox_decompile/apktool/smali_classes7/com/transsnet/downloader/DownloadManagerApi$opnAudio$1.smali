.class final Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->v0(Landroid/content/Context;)V
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
    c = "com.transsnet.downloader.DownloadManagerApi$opnAudio$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x3b1,
        0x3b1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->$context:Landroid/content/Context;

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
    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

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
    iget v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v4, :cond_1

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object/from16 v4, p1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v4, p1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_3
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->$context:Landroid/content/Context;

    .line 62
    .line 63
    instance-of v6, v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move-object v2, v3

    .line 71
    :goto_0
    if-nez v2, :cond_5

    .line 72
    .line 73
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_5
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 77
    .line 78
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iget-object v7, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 83
    .line 84
    invoke-static {v7}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v6, v7}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 92
    .line 93
    .line 94
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 95
    .line 96
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->v(Lcom/transsnet/downloader/DownloadManagerApi;)Lsi/a;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iget-object v7, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 101
    .line 102
    invoke-static {v7}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-nez v7, :cond_6

    .line 114
    .line 115
    iget-object v7, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 116
    .line 117
    invoke-static {v7}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :cond_6
    iput-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput v4, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->label:I

    .line 131
    .line 132
    invoke-interface {v6, v7, v0}, Lsi/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-ne v4, v1, :cond_7

    .line 137
    .line 138
    return-object v1

    .line 139
    :cond_7
    :goto_1
    check-cast v4, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 140
    .line 141
    if-nez v4, :cond_9

    .line 142
    .line 143
    iget-object v4, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 144
    .line 145
    invoke-static {v4}, Lcom/transsnet/downloader/DownloadManagerApi;->v(Lcom/transsnet/downloader/DownloadManagerApi;)Lsi/a;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 150
    .line 151
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iput-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    iput v5, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->label:I

    .line 165
    .line 166
    invoke-interface {v4, v6, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    if-ne v4, v1, :cond_8

    .line 171
    .line 172
    return-object v1

    .line 173
    :cond_8
    move-object v1, v2

    .line 174
    :goto_2
    check-cast v4, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 175
    .line 176
    move-object v2, v1

    .line 177
    :cond_9
    const/4 v1, 0x0

    .line 178
    if-nez v4, :cond_c

    .line 179
    .line 180
    new-instance v4, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 181
    .line 182
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 183
    .line 184
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 196
    .line 197
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    const-wide/16 v9, 0x0

    .line 209
    .line 210
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 215
    .line 216
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 228
    .line 229
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 241
    .line 242
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 254
    .line 255
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    if-eqz v6, :cond_a

    .line 260
    .line 261
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    move/from16 v25, v6

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_a
    move/from16 v25, v1

    .line 269
    .line 270
    :goto_3
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 271
    .line 272
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    if-eqz v6, :cond_b

    .line 277
    .line 278
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    move/from16 v26, v6

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_b
    move/from16 v26, v1

    .line 286
    .line 287
    :goto_4
    const v27, 0x3ffc0

    .line 288
    .line 289
    .line 290
    const/16 v28, 0x0

    .line 291
    .line 292
    const/4 v13, 0x0

    .line 293
    const/4 v14, 0x0

    .line 294
    const/4 v15, 0x0

    .line 295
    const/16 v16, 0x0

    .line 296
    .line 297
    const/16 v17, 0x0

    .line 298
    .line 299
    const/16 v18, 0x0

    .line 300
    .line 301
    const/16 v19, 0x0

    .line 302
    .line 303
    const/16 v20, 0x0

    .line 304
    .line 305
    const/16 v21, 0x0

    .line 306
    .line 307
    const/16 v22, 0x0

    .line 308
    .line 309
    const/16 v23, 0x0

    .line 310
    .line 311
    const/16 v24, 0x0

    .line 312
    .line 313
    move-object v6, v4

    .line 314
    invoke-direct/range {v6 .. v28}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 315
    .line 316
    .line 317
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 318
    .line 319
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 334
    .line 335
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 350
    .line 351
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 366
    .line 367
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    :cond_c
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 382
    .line 383
    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->C(Lcom/transsnet/downloader/DownloadManagerApi;)Lep/b;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    if-eqz v6, :cond_d

    .line 388
    .line 389
    new-instance v7, Ljava/lang/ref/WeakReference;

    .line 390
    .line 391
    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v6, v7, v4}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 395
    .line 396
    .line 397
    :cond_d
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 398
    .line 399
    invoke-static {v2}, Lcom/transsnet/downloader/DownloadManagerApi;->B(Lcom/transsnet/downloader/DownloadManagerApi;)Lep/a;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-eqz v2, :cond_e

    .line 404
    .line 405
    invoke-static {v2, v4, v1, v5, v3}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    :cond_e
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 409
    .line 410
    return-object v1
.end method
