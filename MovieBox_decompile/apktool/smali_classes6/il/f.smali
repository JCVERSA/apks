.class public Lil/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final a:Lil/e;

.field private b:Ljava/net/HttpURLConnection;

.field private c:Ljava/io/InputStream;

.field private d:I


# direct methods
.method public constructor <init>(Lil/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iput-object v0, p0, Lil/f;->c:Ljava/io/InputStream;

    .line 8
    .line 9
    const/16 v0, 0x1e0

    .line 10
    .line 11
    iput v0, p0, Lil/f;->d:I

    .line 12
    .line 13
    iput-object p1, p0, Lil/f;->a:Lil/e;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lil/f;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkl/d;->a(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lil/f;->c:Ljava/io/InputStream;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public b()J
    .locals 5

    .line 1
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    int-to-long v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    cmp-long v0, v1, v3

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Lil/f;->c()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lil/f;->c()Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :goto_1
    int-to-long v1, v0

    .line 41
    :catchall_1
    :cond_1
    return-wide v1
.end method

.method public c()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lil/f;->c:Ljava/io/InputStream;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x190

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    iput-object v0, p0, Lil/f;->c:Ljava/io/InputStream;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lil/f;->c:Ljava/io/InputStream;

    .line 33
    .line 34
    return-object v0
.end method

.method public e()Lil/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lil/f;->a:Lil/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lil/f;->d:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/16 v0, 0x194

    .line 9
    .line 10
    return v0
.end method

.method public i()V
    .locals 5

    .line 1
    new-instance v0, Lel/c;

    .line 2
    .line 3
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Lil/e;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lel/c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lel/c;->b()Ljava/net/URL;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/net/URLConnection;

    .line 25
    .line 26
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    iput-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 31
    .line 32
    invoke-virtual {v1}, Lil/e;->j()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 40
    .line 41
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 42
    .line 43
    invoke-virtual {v1}, Lil/e;->a()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 51
    .line 52
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 57
    .line 58
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 59
    .line 60
    invoke-virtual {v1}, Lil/e;->l()Ljavax/net/ssl/SSLSocketFactory;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 68
    .line 69
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 70
    .line 71
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 72
    .line 73
    invoke-virtual {v1}, Lil/e;->g()Ljavax/net/ssl/HostnameVerifier;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object v0, p0, Lil/f;->a:Lil/e;

    .line 81
    .line 82
    invoke-virtual {v0}, Lil/e;->h()Lcom/transsion/http/d/h;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/transsion/http/d/h;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 96
    .line 97
    invoke-virtual {v1}, Lil/e;->f()Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 104
    .line 105
    invoke-virtual {v1}, Lil/e;->f()Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/lang/String;

    .line 128
    .line 129
    iget-object v3, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 130
    .line 131
    iget-object v4, p0, Lil/f;->a:Lil/e;

    .line 132
    .line 133
    invoke-virtual {v4}, Lil/e;->f()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v3, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    sget-object v1, Lcom/transsion/http/d/h;->b:Lcom/transsion/http/d/h;

    .line 148
    .line 149
    if-eq v0, v1, :cond_2

    .line 150
    .line 151
    sget-object v1, Lcom/transsion/http/d/h;->c:Lcom/transsion/http/d/h;

    .line 152
    .line 153
    if-eq v0, v1, :cond_2

    .line 154
    .line 155
    sget-object v1, Lcom/transsion/http/d/h;->d:Lcom/transsion/http/d/h;

    .line 156
    .line 157
    if-eq v0, v1, :cond_2

    .line 158
    .line 159
    sget-object v1, Lcom/transsion/http/d/h;->h:Lcom/transsion/http/d/h;

    .line 160
    .line 161
    if-ne v0, v1, :cond_5

    .line 162
    .line 163
    :cond_2
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 164
    .line 165
    const-string v1, "connection"

    .line 166
    .line 167
    const-string v2, "Keep-Alive"

    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 173
    .line 174
    const-string v1, "charset"

    .line 175
    .line 176
    const-string v2, "utf-8"

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 182
    .line 183
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 184
    .line 185
    invoke-virtual {v1}, Lil/e;->d()Lcom/transsion/http/d/a;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/transsion/http/d/a;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v2, "Content-Type"

    .line 194
    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lil/f;->a:Lil/e;

    .line 199
    .line 200
    invoke-virtual {v0}, Lil/e;->c()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    array-length v0, v0

    .line 209
    int-to-long v0, v0

    .line 210
    const-wide/16 v2, 0x0

    .line 211
    .line 212
    cmp-long v2, v0, v2

    .line 213
    .line 214
    if-gez v2, :cond_3

    .line 215
    .line 216
    iget-object v2, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 217
    .line 218
    const/high16 v3, 0x40000

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_3
    const-wide/32 v2, 0x7fffffff

    .line 225
    .line 226
    .line 227
    cmp-long v2, v0, v2

    .line 228
    .line 229
    if-gez v2, :cond_4

    .line 230
    .line 231
    iget-object v2, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 232
    .line 233
    long-to-int v3, v0

    .line 234
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_4
    iget-object v2, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 239
    .line 240
    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 241
    .line 242
    .line 243
    :goto_1
    iget-object v2, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 244
    .line 245
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v1, "Content-Length"

    .line 250
    .line 251
    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 255
    .line 256
    const/4 v1, 0x1

    .line 257
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const/16 v1, 0x1e1

    .line 267
    .line 268
    iput v1, p0, Lil/f;->d:I

    .line 269
    .line 270
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 271
    .line 272
    invoke-virtual {v1}, Lil/e;->c()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 287
    .line 288
    .line 289
    :cond_5
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    iput v0, p0, Lil/f;->d:I

    .line 296
    .line 297
    const/16 v1, 0x12e

    .line 298
    .line 299
    if-eq v1, v0, :cond_6

    .line 300
    .line 301
    const/16 v1, 0x12d

    .line 302
    .line 303
    if-ne v1, v0, :cond_7

    .line 304
    .line 305
    :cond_6
    iget-object v0, p0, Lil/f;->b:Ljava/net/HttpURLConnection;

    .line 306
    .line 307
    const-string v1, "Location"

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_7

    .line 318
    .line 319
    invoke-virtual {p0}, Lil/f;->a()V

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lil/f;->a:Lil/e;

    .line 323
    .line 324
    invoke-virtual {v1, v0}, Lil/e;->b(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lil/f;->i()V

    .line 328
    .line 329
    .line 330
    :cond_7
    return-void
.end method
