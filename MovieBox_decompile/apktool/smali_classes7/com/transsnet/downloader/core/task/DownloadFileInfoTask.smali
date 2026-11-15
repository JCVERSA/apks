.class public final Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->d(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c(Lcom/transsion/baselib/db/download/DownloadBean;J)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "-------try_update_download_size, net size = "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", real size = "

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "download"

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v0, v3, v2, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    cmp-long v2, v5, p2

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v6, "-------update_download_size, net size = "

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v3, v1, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSize(Ljava/lang/Long;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method

.method private final d(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p3, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;-><init>(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-eq v2, v3, :cond_1

    .line 43
    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    iget-object p1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Ljava/lang/Throwable;

    .line 55
    .line 56
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    const/4 p3, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    :try_start_0
    sget-object v8, Lcom/transsnet/downloader/core/b;->c:Lcom/transsnet/downloader/core/b$a;

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/transsnet/downloader/core/b$a;->a()Lcom/transsnet/downloader/core/b;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v8}, Lcom/transsnet/downloader/core/b;->c()Lokhttp3/OkHttpClient;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    new-instance v9, Lokhttp3/Request$Builder;

    .line 84
    .line 85
    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v9, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 93
    .line 94
    .line 95
    const-string v10, "Range"

    .line 96
    .line 97
    const-string v11, "bytes=0-"

    .line 98
    .line 99
    invoke-virtual {v9, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    const/16 v10, 0xc8

    .line 119
    .line 120
    if-eq v9, v10, :cond_4

    .line 121
    .line 122
    const/16 v10, 0xce

    .line 123
    .line 124
    if-eq v9, v10, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-eqz v8, :cond_5

    .line 132
    .line 133
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    .line 134
    .line 135
    .line 136
    move-result-wide v8

    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move-wide v8, v6

    .line 141
    :goto_1
    invoke-direct {p0, p1, v8, v9}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->c(Lcom/transsion/baselib/db/download/DownloadBean;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    move p3, v5

    .line 145
    move-wide v6, v8

    .line 146
    :goto_2
    if-eqz v2, :cond_6

    .line 147
    .line 148
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 149
    .line 150
    .line 151
    :cond_6
    iput v5, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 152
    .line 153
    invoke-interface {p2, p3, v6, v7, v0}, Lcom/transsnet/downloader/core/task/a;->a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-ne p1, v1, :cond_8

    .line 158
    .line 159
    return-object v1

    .line 160
    :goto_3
    :try_start_1
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 161
    .line 162
    const-string v9, "download"

    .line 163
    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v11, "DownloadFileInfoTask --> checkWithOkhttp --> e = "

    .line 170
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v8, v9, p1, v5}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .line 183
    .line 184
    if-eqz v2, :cond_7

    .line 185
    .line 186
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 187
    .line 188
    .line 189
    :cond_7
    iput v4, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 190
    .line 191
    invoke-interface {p2, p3, v6, v7, v0}, Lcom/transsnet/downloader/core/task/a;->a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-ne p1, v1, :cond_8

    .line 196
    .line 197
    return-object v1

    .line 198
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object p1

    .line 201
    :catchall_1
    move-exception p1

    .line 202
    if-eqz v2, :cond_9

    .line 203
    .line 204
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 205
    .line 206
    .line 207
    :cond_9
    iput-object p1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->L$0:Ljava/lang/Object;

    .line 208
    .line 209
    iput v3, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 210
    .line 211
    invoke-interface {p2, p3, v6, v7, v0}, Lcom/transsnet/downloader/core/task/a;->a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    if-ne p2, v1, :cond_a

    .line 216
    .line 217
    return-object v1

    .line 218
    :cond_a
    :goto_5
    throw p1
.end method


# virtual methods
.method public final b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkFileInfo$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkFileInfo$1;-><init>(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method
