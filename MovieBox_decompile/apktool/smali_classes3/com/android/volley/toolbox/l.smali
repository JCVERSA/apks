.class abstract Lcom/android/volley/toolbox/l;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/l$b;
    }
.end annotation


# direct methods
.method static a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/l$b;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/k;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lcom/android/volley/Request;->getTimeoutMs()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    :try_start_0
    invoke-static {p1}, Lcom/android/volley/toolbox/l$b;->a(Lcom/android/volley/toolbox/l$b;)Lcom/android/volley/VolleyError;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-interface {v3, v5}, Lcom/android/volley/k;->b(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/volley/toolbox/l$b;->b(Lcom/android/volley/toolbox/l$b;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p1, v2, v1

    .line 30
    .line 31
    aput-object v3, v2, v0

    .line 32
    .line 33
    const-string p1, "%s-retry [timeout=%s]"

    .line 34
    .line 35
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v3

    .line 44
    invoke-static {p1}, Lcom/android/volley/toolbox/l$b;->b(Lcom/android/volley/toolbox/l$b;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p1, v2, v1

    .line 55
    .line 56
    aput-object v4, v2, v0

    .line 57
    .line 58
    const-string p1, "%s-timeout-giveup [timeout=%s]"

    .line 59
    .line 60
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v3
.end method

.method static b(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/g;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/c$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/volley/g;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/16 v1, 0x130

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p3, p0}, Lcom/android/volley/toolbox/d;->a(Ljava/util/List;Lcom/android/volley/c$a;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    new-instance p3, Lcom/android/volley/g;

    .line 25
    .line 26
    iget-object v6, p0, Lcom/android/volley/c$a;->a:[B

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    const/16 v5, 0x130

    .line 30
    .line 31
    move-object v4, p3

    .line 32
    move-wide v8, p1

    .line 33
    invoke-direct/range {v4 .. v10}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object p3
.end method

.method static c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B
    .locals 5

    .line 1
    const-string v0, "Error occurred when closing InputStream"

    .line 2
    .line 3
    new-instance v1, Lcom/android/volley/toolbox/m;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/android/volley/toolbox/m;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x400

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->a(I)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/volley/toolbox/m;->write([BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v3

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v0, p0}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->b([B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/volley/toolbox/m;->close()V

    .line 45
    .line 46
    .line 47
    return-object v3

    .line 48
    :catchall_1
    move-exception v3

    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_2
    if-eqz p0, :cond_1

    .line 51
    .line 52
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v0, p0}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->b([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/volley/toolbox/m;->close()V

    .line 65
    .line 66
    .line 67
    throw v3
.end method

.method static d(JLcom/android/volley/Request;[BI)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/volley/l;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0xbb8

    .line 6
    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    array-length p1, p3

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p1, "null"

    .line 24
    .line 25
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/k;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-interface {p4}, Lcom/android/volley/k;->a()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aput-object p2, v0, v1

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    aput-object p0, v0, p2

    .line 49
    .line 50
    const/4 p0, 0x2

    .line 51
    aput-object p1, v0, p0

    .line 52
    .line 53
    const/4 p0, 0x3

    .line 54
    aput-object p3, v0, p0

    .line 55
    .line 56
    const/4 p0, 0x4

    .line 57
    aput-object p4, v0, p0

    .line 58
    .line 59
    const-string p0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 60
    .line 61
    invoke-static {p0, v0}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method static e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/e;[B)Lcom/android/volley/toolbox/l$b;
    .locals 9

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    .line 7
    .line 8
    new-instance p1, Lcom/android/volley/TimeoutError;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/android/volley/TimeoutError;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p2, "socket"

    .line 14
    .line 15
    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    .line 20
    .line 21
    if-nez v0, :cond_9

    .line 22
    .line 23
    if-eqz p4, :cond_7

    .line 24
    .line 25
    invoke-virtual {p4}, Lcom/android/volley/toolbox/e;->d()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v0, v3, v4

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v2, v3, v0

    .line 45
    .line 46
    const-string v0, "Unexpected response code %d for %s"

    .line 47
    .line 48
    invoke-static {v0, v3}, Lcom/android/volley/l;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz p5, :cond_6

    .line 52
    .line 53
    invoke-virtual {p4}, Lcom/android/volley/toolbox/e;->c()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    new-instance p4, Lcom/android/volley/g;

    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    sub-long v6, v2, p2

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v2, p4

    .line 67
    move v3, p1

    .line 68
    move-object v4, p5

    .line 69
    invoke-direct/range {v2 .. v8}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    .line 70
    .line 71
    .line 72
    const/16 p2, 0x191

    .line 73
    .line 74
    if-eq p1, p2, :cond_5

    .line 75
    .line 76
    const/16 p2, 0x193

    .line 77
    .line 78
    if-ne p1, p2, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 p2, 0x190

    .line 82
    .line 83
    if-lt p1, p2, :cond_3

    .line 84
    .line 85
    const/16 p2, 0x1f3

    .line 86
    .line 87
    if-le p1, p2, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance p0, Lcom/android/volley/ClientError;

    .line 91
    .line 92
    invoke-direct {p0, p4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/g;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    :goto_0
    const/16 p2, 0x1f4

    .line 97
    .line 98
    if-lt p1, p2, :cond_4

    .line 99
    .line 100
    const/16 p2, 0x257

    .line 101
    .line 102
    if-gt p1, p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    .line 111
    .line 112
    new-instance p1, Lcom/android/volley/ServerError;

    .line 113
    .line 114
    invoke-direct {p1, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/g;)V

    .line 115
    .line 116
    .line 117
    const-string p2, "server"

    .line 118
    .line 119
    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_4
    new-instance p0, Lcom/android/volley/ServerError;

    .line 124
    .line 125
    invoke-direct {p0, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/g;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_5
    :goto_1
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    .line 130
    .line 131
    new-instance p1, Lcom/android/volley/AuthFailureError;

    .line 132
    .line 133
    invoke-direct {p1, p4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/g;)V

    .line 134
    .line 135
    .line 136
    const-string p2, "auth"

    .line 137
    .line 138
    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_6
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    .line 143
    .line 144
    new-instance p1, Lcom/android/volley/NetworkError;

    .line 145
    .line 146
    invoke-direct {p1}, Lcom/android/volley/NetworkError;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string p2, "network"

    .line 150
    .line 151
    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_7
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryConnectionErrors()Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_8

    .line 160
    .line 161
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    .line 162
    .line 163
    new-instance p1, Lcom/android/volley/NoConnectionError;

    .line 164
    .line 165
    invoke-direct {p1}, Lcom/android/volley/NoConnectionError;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string p2, "connection"

    .line 169
    .line 170
    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    .line 171
    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_8
    new-instance p0, Lcom/android/volley/NoConnectionError;

    .line 175
    .line 176
    invoke-direct {p0, p1}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_9
    new-instance p2, Ljava/lang/RuntimeException;

    .line 181
    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string p4, "Bad URL "

    .line 188
    .line 189
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw p2
.end method
