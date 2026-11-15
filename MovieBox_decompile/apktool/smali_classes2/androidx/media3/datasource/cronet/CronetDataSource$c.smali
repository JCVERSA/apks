.class final Landroidx/media3/datasource/cronet/CronetDataSource$c;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private volatile a:Z

.field final synthetic b:Landroidx/media3/datasource/cronet/CronetDataSource;


# direct methods
.method constructor <init>(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    move-object p1, p3

    .line 13
    check-cast p1, Lorg/chromium/net/NetworkException;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 23
    .line 24
    new-instance p2, Ljava/net/UnknownHostException;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 36
    .line 37
    invoke-static {p1, p3}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 41
    .line 42
    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method

.method public declared-synchronized onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    throw p1
.end method

.method public declared-synchronized onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->h(Landroidx/media3/datasource/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->i(Landroidx/media3/datasource/cronet/CronetDataSource;)Lw1/h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v6, v0

    .line 35
    check-cast v6, Lw1/h;

    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget v0, v6, Lw1/h;->c:I

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x133

    .line 47
    .line 48
    if-eq v2, v0, :cond_1

    .line 49
    .line 50
    const/16 v0, 0x134

    .line 51
    .line 52
    if-ne v2, v0, :cond_2

    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 55
    .line 56
    new-instance p3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 57
    .line 58
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget-object v7, Landroidx/media3/common/util/a1;->f:[B

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v1, p3

    .line 70
    invoke-direct/range {v1 .. v7}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lw1/h;[B)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p3}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 77
    .line 78
    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 91
    .line 92
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->o(Landroidx/media3/datasource/cronet/CronetDataSource;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 99
    .line 100
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->p(Landroidx/media3/datasource/cronet/CronetDataSource;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->q(Landroidx/media3/datasource/cronet/CronetDataSource;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v3, 0x1

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    iget v0, v6, Lw1/h;->c:I

    .line 113
    .line 114
    if-ne v0, v1, :cond_4

    .line 115
    .line 116
    const/16 v0, 0x12e

    .line 117
    .line 118
    if-ne v2, v0, :cond_4

    .line 119
    .line 120
    move v0, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const/4 v0, 0x0

    .line 123
    :goto_0
    if-nez v0, :cond_5

    .line 124
    .line 125
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 126
    .line 127
    invoke-static {v2}, Landroidx/media3/datasource/cronet/CronetDataSource;->r(Landroidx/media3/datasource/cronet/CronetDataSource;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    const-string v2, "Set-Cookie"

    .line 143
    .line 144
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Ljava/util/List;

    .line 149
    .line 150
    invoke-static {p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->s(Ljava/util/List;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    .line 164
    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :cond_6
    if-nez v0, :cond_7

    .line 168
    .line 169
    :try_start_4
    iget p1, v6, Lw1/h;->c:I

    .line 170
    .line 171
    if-ne p1, v1, :cond_7

    .line 172
    .line 173
    invoke-virtual {v6}, Lw1/h;->a()Lw1/h$b;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, p3}, Lw1/h$b;->j(Ljava/lang/String;)Lw1/h$b;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, v3}, Lw1/h$b;->d(I)Lw1/h$b;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const/4 p3, 0x0

    .line 186
    invoke-virtual {p1, p3}, Lw1/h$b;->c([B)Lw1/h$b;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    goto :goto_1

    .line 195
    :cond_7
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v6, p1}, Lw1/h;->g(Landroid/net/Uri;)Lw1/h;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    if-nez p3, :cond_8

    .line 208
    .line 209
    new-instance p3, Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v0, v6, Lw1/h;->e:Ljava/util/Map;

    .line 215
    .line 216
    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    const-string v0, "Cookie"

    .line 220
    .line 221
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lw1/h;->a()Lw1/h$b;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, p3}, Lw1/h$b;->e(Ljava/util/Map;)Lw1/h$b;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    :cond_8
    iget-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 237
    .line 238
    invoke-static {p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->t(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    .line 240
    .line 241
    :try_start_5
    iget-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 242
    .line 243
    invoke-static {p2, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->j(Landroidx/media3/datasource/cronet/CronetDataSource;Lw1/h;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    .line 245
    .line 246
    :try_start_6
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 247
    .line 248
    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->h(Landroidx/media3/datasource/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    .line 254
    .line 255
    monitor-exit p0

    .line 256
    return-void

    .line 257
    :catch_0
    move-exception p1

    .line 258
    :try_start_7
    iget-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 259
    .line 260
    invoke-static {p2, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 261
    .line 262
    .line 263
    monitor-exit p0

    .line 264
    return-void

    .line 265
    :goto_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 266
    throw p1
.end method

.method public declared-synchronized onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->k(Landroidx/media3/datasource/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method public declared-synchronized onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->l(Landroidx/media3/datasource/cronet/CronetDataSource;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method
