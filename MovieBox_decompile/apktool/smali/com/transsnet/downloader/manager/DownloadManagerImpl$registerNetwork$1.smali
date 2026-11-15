.class public final Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final a()V
    .locals 14

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v2, "---------Download, Network onConnected"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->Z(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Lcom/transsnet/downloader/proxy/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/b;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const-string v8, ",  cur status = "

    .line 29
    .line 30
    const-string v9, ",epse = "

    .line 31
    .line 32
    const/4 v10, 0x1

    .line 33
    if-eqz v7, :cond_0

    .line 34
    .line 35
    iget-object v11, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isRemoved()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-static {v11}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v5, "onConnected, start DownloadingPlay, name = "

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v4, 0x4

    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    move-object v0, v6

    .line 92
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v7, v10}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->s(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->W(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Iterable;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/4 v4, 0x6

    .line 129
    const/4 v5, 0x3

    .line 130
    if-eq v3, v4, :cond_2

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eq v3, v5, :cond_2

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_1

    .line 143
    .line 144
    :cond_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v13, "onConnected, caches, name = "

    .line 168
    .line 169
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v3, v4, v6, v10}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_3

    .line 199
    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreDownload(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 205
    .line 206
    .line 207
    :cond_3
    invoke-virtual {v1, v2, v10}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->s(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v4, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1$netConnected$3;

    .line 220
    .line 221
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 222
    .line 223
    const/4 v2, 0x0

    .line 224
    invoke-direct {v4, v0, v2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1$netConnected$3;-><init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x3

    .line 228
    const/4 v6, 0x0

    .line 229
    const/4 v3, 0x0

    .line 230
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 231
    .line 232
    .line 233
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a()V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a()V

    return-void
.end method

.method public onDisconnected()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v2, "---------Download, Network onDisconnected, cancel all request---------"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object v0, Lcom/transsnet/downloader/core/b;->c:Lcom/transsnet/downloader/core/b$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsnet/downloader/core/b$a;->a()Lcom/transsnet/downloader/core/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/transsnet/downloader/core/b;->c()Lokhttp3/OkHttpClient;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->S(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->Y(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->T(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
