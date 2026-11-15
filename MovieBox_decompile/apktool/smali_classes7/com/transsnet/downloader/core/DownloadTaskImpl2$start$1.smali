.class final Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl2;->start()V
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
    c = "com.transsnet.downloader.core.DownloadTaskImpl2$start$1"
    f = "DownloadTaskImpl2.kt"
    l = {
        0x6b,
        0x72,
        0x86
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

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
    new-instance p1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v6, :cond_2

    .line 15
    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    .line 18
    if-ne v1, v4, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_8

    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->m(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lui/n0;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    .line 74
    .line 75
    invoke-interface {v7, p1, p0}, Lui/n0;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 83
    .line 84
    if-eqz p1, :cond_8

    .line 85
    .line 86
    new-instance v11, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    check-cast p1, Ljava/util/Collection;

    .line 92
    .line 93
    invoke-interface {v11, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    goto :goto_1

    .line 111
    :cond_5
    move-wide v7, v2

    .line 112
    :goto_1
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->n(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    div-long/2addr v7, v9

    .line 117
    const-wide/16 v9, 0x1

    .line 118
    .line 119
    add-long/2addr v7, v9

    .line 120
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-nez v9, :cond_7

    .line 129
    .line 130
    int-to-long v9, p1

    .line 131
    cmp-long p1, v7, v9

    .line 132
    .line 133
    if-lez p1, :cond_7

    .line 134
    .line 135
    sget-object v7, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->n(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    iput v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    .line 148
    .line 149
    move-object v12, p0

    .line 150
    invoke-virtual/range {v7 .. v12}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->d(JLcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-ne p1, v0, :cond_6

    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_6
    :goto_2
    move-object v11, p1

    .line 158
    check-cast v11, Ljava/util/List;

    .line 159
    .line 160
    :cond_7
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast v11, Ljava/util/Collection;

    .line 169
    .line 170
    invoke-interface {p1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    :cond_8
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 178
    .line 179
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/util/Collection;

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    const-string v1, "download"

    .line 194
    .line 195
    if-nez p1, :cond_a

    .line 196
    .line 197
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v3, "DownloadTask2 has task, name = "

    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    filled-new-array {v0}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v1, v0, v6}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 234
    .line 235
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->k(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsnet/downloader/core/task/c;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    if-eqz p1, :cond_9

    .line 240
    .line 241
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const/4 v1, 0x0

    .line 248
    invoke-interface {p1, v0, v1}, Lcom/transsnet/downloader/core/task/c;->c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 249
    .line 250
    .line 251
    :cond_9
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 252
    .line 253
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->o(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 257
    .line 258
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->j(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsnet/downloader/core/c;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 263
    .line 264
    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-interface {p1, v0}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_a
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 273
    .line 274
    iget-object v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 275
    .line 276
    invoke-static {v5}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v8, "DownloadTask2 stat new task, name = "

    .line 290
    .line 291
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {p1, v1, v5, v6}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    .line 303
    .line 304
    sget-object p1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    .line 305
    .line 306
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 307
    .line 308
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->e(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 316
    .line 317
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    .line 322
    .line 323
    .line 324
    move-result-wide v7

    .line 325
    cmp-long p1, v7, v2

    .line 326
    .line 327
    if-gtz p1, :cond_b

    .line 328
    .line 329
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 330
    .line 331
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    sget-object v1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 336
    .line 337
    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 338
    .line 339
    invoke-static {v2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/util/DownloadUtil;->o(Lcom/transsion/baselib/db/download/DownloadBean;)J

    .line 344
    .line 345
    .line 346
    move-result-wide v1

    .line 347
    invoke-virtual {p1, v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDownloadHeaderSize(J)V

    .line 348
    .line 349
    .line 350
    :cond_b
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 351
    .line 352
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->k(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsnet/downloader/core/task/c;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    if-eqz p1, :cond_c

    .line 357
    .line 358
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 359
    .line 360
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-interface {p1, v1, v6}, Lcom/transsnet/downloader/core/task/c;->c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 365
    .line 366
    .line 367
    :cond_c
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 368
    .line 369
    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    .line 371
    .line 372
    iput v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    .line 373
    .line 374
    invoke-static {p1, p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->h(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    if-ne p1, v0, :cond_d

    .line 379
    .line 380
    return-object v0

    .line 381
    :cond_d
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 382
    .line 383
    return-object p1
.end method
