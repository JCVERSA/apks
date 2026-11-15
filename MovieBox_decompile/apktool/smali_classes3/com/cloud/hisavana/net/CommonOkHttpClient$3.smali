.class Lcom/cloud/hisavana/net/CommonOkHttpClient$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/net/CommonOkHttpClient;->p(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

.field final synthetic b:Lcom/cloud/hisavana/net/RequestParams;

.field final synthetic c:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/impl/IHttpCallback;Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->b:Lcom/cloud/hisavana/net/RequestParams;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->c:Lokhttp3/Request;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const/16 p1, 0x1e0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v2, p2, Ljava/net/SocketTimeoutException;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const/16 v2, 0x1e1

    .line 14
    .line 15
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    instance-of v2, p2, Ljava/net/UnknownHostException;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0x1e4

    .line 26
    .line 27
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    instance-of v2, p2, Ljava/net/NoRouteToHostException;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    const/16 v2, 0x1e5

    .line 36
    .line 37
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    instance-of v2, p2, Ljava/net/ProtocolException;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    const/16 v2, 0x1e6

    .line 46
    .line 47
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    instance-of v2, p2, Ljava/net/ConnectException;

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    const/16 v2, 0x1e3

    .line 56
    .line 57
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    instance-of v2, p2, Lorg/chromium/net/QuicException;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    const/16 v2, 0x1e7

    .line 66
    .line 67
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    instance-of v2, p2, Lorg/chromium/net/NetworkException;

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    move-object v1, p2

    .line 76
    check-cast v1, Lorg/chromium/net/NetworkException;

    .line 77
    .line 78
    invoke-virtual {v1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->c(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 87
    .line 88
    invoke-interface {v2, v1, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    invoke-interface {v1, p1, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 97
    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    invoke-interface {v2, p1, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-static {v1}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->d(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-eqz p2, :cond_5

    .line 8
    .line 9
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->b:Lcom/cloud/hisavana/net/RequestParams;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/RequestParams;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->b:Lcom/cloud/hisavana/net/RequestParams;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/RequestParams;->g()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 47
    .line 48
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->f(I[BLokhttp3/Headers;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->b:Lcom/cloud/hisavana/net/RequestParams;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->c:Lokhttp3/Request;

    .line 62
    .line 63
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2, p2, v0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->f(Lcom/cloud/hisavana/net/RequestParams;Ljava/lang/String;Lokhttp3/Response;[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "ADSDK"

    .line 76
    .line 77
    const/4 v3, 0x3

    .line 78
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v3, "real download on response, code = "

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, ", adId = "

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->b:Lcom/cloud/hisavana/net/RequestParams;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/cloud/hisavana/net/RequestParams;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, ", \nurl = "

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->c:Lokhttp3/Request;

    .line 121
    .line 122
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v3, " , \nfilePath = "

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->b:Lcom/cloud/hisavana/net/RequestParams;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/cloud/hisavana/net/RequestParams;->g()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    invoke-static {v1}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->g(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_4

    .line 157
    .line 158
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 159
    .line 160
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-interface {v2, v3, v0, v1}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->e(I[BLjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/Exception;

    .line 171
    .line 172
    const-string v2, "fail to cache file to disk"

    .line 173
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const/16 v2, 0x402

    .line 178
    .line 179
    invoke-interface {v0, v2, p1, v1}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 184
    .line 185
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->e()Ljava/lang/Exception;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/16 v2, 0x403

    .line 190
    .line 191
    invoke-interface {v0, v2, p1, v1}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 196
    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    if-eqz p2, :cond_6

    .line 200
    .line 201
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-interface {v1, p2, p1, v0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 209
    .line 210
    if-eqz p1, :cond_7

    .line 211
    .line 212
    invoke-interface {p1}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->b()V

    .line 213
    .line 214
    .line 215
    :cond_7
    return-void
.end method
