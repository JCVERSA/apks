.class public final Lcom/transsnet/downloader/core/task/GetFileInfoTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001\u001bB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0019R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsnet/downloader/core/task/GetFileInfoTask;",
        "Ljava/lang/Runnable;",
        "Lcom/transsnet/downloader/core/c;",
        "downloadResponse",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadInfo",
        "Lcom/transsnet/downloader/proxy/b;",
        "proxyHelper",
        "Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;",
        "onGetFileInfoListener",
        "<init>",
        "(Lcom/transsnet/downloader/core/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/proxy/b;Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;)V",
        "",
        "executeConnection",
        "()V",
        "Ljava/net/HttpURLConnection;",
        "httpConnection",
        "",
        "isAcceptRanges",
        "parseHttpResponse",
        "(Ljava/net/HttpURLConnection;Z)V",
        "checkIfPause",
        "run",
        "Lcom/transsnet/downloader/proxy/b;",
        "Lcom/transsnet/downloader/core/c;",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final downloadResponse:Lcom/transsnet/downloader/core/c;

.field private final onGetFileInfoListener:Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;

.field private final proxyHelper:Lcom/transsnet/downloader/proxy/b;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/core/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/proxy/b;Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;)V
    .locals 1

    .line 1
    const-string v0, "downloadResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxyHelper"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onGetFileInfoListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->proxyHelper:Lcom/transsnet/downloader/proxy/b;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadResponse:Lcom/transsnet/downloader/core/c;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 29
    .line 30
    return-void
.end method

.method private final checkIfPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isPause()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/exception/DownloadPauseException;

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/exception/DownloadPauseException;-><init>(I)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private final executeConnection()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/baselib/db/download/DownloadException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/net/URLConnection;

    .line 23
    .line 24
    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    const v1, 0xea60

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 38
    .line 39
    .line 40
    const-string v1, "GET"

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "Range"

    .line 46
    .line 47
    const-string v3, "bytes=0-"

    .line 48
    .line 49
    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v3, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->proxyHelper:Lcom/transsnet/downloader/proxy/b;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "getContentType(...)"

    .line 63
    .line 64
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-nez v5, :cond_0

    .line 74
    .line 75
    const-string v5, ""

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object v1, v2

    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :catch_0
    move-exception v1

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    move-object v1, v2

    .line 85
    goto :goto_3

    .line 86
    :catch_2
    move-exception v1

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :catch_3
    move-exception v0

    .line 90
    move-object v1, v2

    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_0
    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/transsnet/downloader/proxy/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/16 v3, 0xc8

    .line 97
    .line 98
    if-eq v1, v3, :cond_2

    .line 99
    .line 100
    const/16 v3, 0xce

    .line 101
    .line 102
    if-ne v1, v3, :cond_1

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, v2, v1}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->parseHttpResponse(Ljava/net/HttpURLConnection;Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    .line 110
    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v5, "error response code:"

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const/4 v4, 0x3

    .line 129
    invoke-direct {v3, v4, v1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v3

    .line 133
    :cond_2
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, v2, v1}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->parseHttpResponse(Ljava/net/HttpURLConnection;Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    goto :goto_7

    .line 143
    :catch_4
    move-exception v2

    .line 144
    move-object v8, v2

    .line 145
    move-object v2, v1

    .line 146
    move-object v1, v8

    .line 147
    goto :goto_2

    .line 148
    :catch_5
    move-exception v2

    .line 149
    move-object v8, v2

    .line 150
    move-object v2, v1

    .line 151
    move-object v1, v8

    .line 152
    goto :goto_5

    .line 153
    :catch_6
    move-exception v0

    .line 154
    goto :goto_6

    .line 155
    :goto_2
    :try_start_2
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-nez v4, :cond_3

    .line 162
    .line 163
    const-string v4, "header error"

    .line 164
    .line 165
    :cond_3
    invoke-direct {v3, v0, v4, v1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :catch_7
    :goto_3
    :try_start_3
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 170
    .line 171
    const-string v3, "download"

    .line 172
    .line 173
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v5, "file downloadPauseException downloadInfo: "

    .line 185
    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const/4 v6, 0x4

    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    .line 201
    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    .line 206
    .line 207
    :cond_4
    :goto_4
    return-void

    .line 208
    :goto_5
    :try_start_4
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    if-nez v4, :cond_5

    .line 215
    .line 216
    const-string v4, "Protocol error"

    .line 217
    .line 218
    :cond_5
    invoke-direct {v3, v0, v4, v1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    :goto_6
    :try_start_5
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadException;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    if-nez v3, :cond_6

    .line 229
    .line 230
    const-string v3, "Bad url."

    .line 231
    .line 232
    :cond_6
    const/4 v4, 0x2

    .line 233
    invoke-direct {v2, v4, v3, v0}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 237
    :goto_7
    if-eqz v1, :cond_7

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 240
    .line 241
    .line 242
    :cond_7
    throw v0
.end method

.method private final parseHttpResponse(Ljava/net/HttpURLConnection;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/baselib/db/download/DownloadException;
        }
    .end annotation

    .line 1
    const-string p2, "0"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "Content-Length"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v0, p2

    .line 14
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    const-string p2, "-1"

    .line 28
    .line 29
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    int-to-long v0, p2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    move-object p2, v2

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/c0;->h(J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v3, Ljava/util/Random;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x64

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, "-"

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    if-eqz p1, :cond_6

    .line 115
    .line 116
    const-string v0, "Content-Disposition"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    move-object v3, p1

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move-object v3, v2

    .line 125
    :goto_2
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "file contentDis  "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    const/4 v8, 0x4

    .line 145
    const/4 v9, 0x0

    .line 146
    const-string v5, "download"

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    move-object v4, p1

    .line 150
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    const-string v0, "filename="

    .line 156
    .line 157
    filled-new-array {v0}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const/4 v7, 0x6

    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v5, 0x0

    .line 164
    const/4 v6, 0x0

    .line 165
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    goto :goto_3

    .line 170
    :cond_7
    move-object v0, v2

    .line 171
    :goto_3
    if-eqz v0, :cond_8

    .line 172
    .line 173
    move-object v1, v0

    .line 174
    check-cast v1, Ljava/util/Collection;

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const/4 v3, 0x1

    .line 181
    xor-int/2addr v1, v3

    .line 182
    if-ne v1, v3, :cond_8

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-le v1, v3, :cond_8

    .line 189
    .line 190
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Lkotlin/text/Regex;

    .line 205
    .line 206
    const-string v3, "[\\\\/:*?\"<>|]"

    .line 207
    .line 208
    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v3, ""

    .line 212
    .line 213
    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 218
    .line 219
    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 234
    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 258
    .line 259
    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 274
    .line 275
    iget-object v4, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :goto_4
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v3, "filename  "

    .line 322
    .line 323
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    const/4 v8, 0x4

    .line 334
    const/4 v9, 0x0

    .line 335
    const-string v5, "download"

    .line 336
    .line 337
    const/4 v7, 0x0

    .line 338
    move-object v4, p1

    .line 339
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    if-eqz p2, :cond_a

    .line 343
    .line 344
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 345
    .line 346
    .line 347
    move-result-wide p1

    .line 348
    const-wide/16 v0, 0x0

    .line 349
    .line 350
    cmp-long p1, p1, v0

    .line 351
    .line 352
    if-gtz p1, :cond_9

    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_9
    invoke-direct {p0}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->checkIfPause()V

    .line 356
    .line 357
    .line 358
    throw v2

    .line 359
    :cond_a
    :goto_5
    new-instance p1, Lcom/transsion/baselib/db/download/DownloadException;

    .line 360
    .line 361
    const/4 p2, 0x6

    .line 362
    const-string v0, "content-length <= 0"

    .line 363
    .line 364
    invoke-direct {p1, p2, v0}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "GetFileInfoTask --> run() --> executeConnection() --> e = "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->executeConnection()V
    :try_end_0
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v2

    .line 9
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v0, v1}, Lwf/a$a;->j(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadResponse:Lcom/transsnet/downloader/core/c;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 32
    .line 33
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    .line 34
    .line 35
    const/16 v4, 0x9

    .line 36
    .line 37
    invoke-direct {v3, v4, v2}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1, v3}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v2

    .line 45
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3, v0, v1}, Lwf/a$a;->j(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadResponse:Lcom/transsnet/downloader/core/c;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 68
    .line 69
    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method
