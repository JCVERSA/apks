.class Lcom/danikula/videocache/e;
.super Lcom/danikula/videocache/m;
.source "source.java"


# instance fields
.field private i:Lcom/danikula/videocache/b;

.field private final j:Lcom/danikula/videocache/a;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/m;-><init>(Lcom/danikula/videocache/a;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    .line 5
    .line 6
    return-void
.end method

.method private varargs i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private j(Lcom/danikula/videocache/d;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v4, v0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    .line 6
    .line 7
    invoke-interface {v4}, Lcom/danikula/videocache/a;->z()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v6, v0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    .line 16
    .line 17
    invoke-interface {v6}, Lcom/danikula/videocache/a;->A()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    iget-object v8, v0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    .line 22
    .line 23
    invoke-interface {v8}, Lcom/danikula/videocache/a;->G()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    iget-wide v10, v1, Lcom/danikula/videocache/d;->b:J

    .line 28
    .line 29
    const-wide/16 v12, 0x0

    .line 30
    .line 31
    cmp-long v12, v6, v12

    .line 32
    .line 33
    if-ltz v12, :cond_0

    .line 34
    .line 35
    const/4 v12, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v12, 0x0

    .line 38
    :goto_0
    iget-boolean v13, v1, Lcom/danikula/videocache/d;->c:Z

    .line 39
    .line 40
    if-eqz v13, :cond_1

    .line 41
    .line 42
    sub-long v14, v6, v10

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-wide v14, v6

    .line 46
    :goto_1
    if-eqz v12, :cond_2

    .line 47
    .line 48
    if-eqz v13, :cond_2

    .line 49
    .line 50
    const/4 v13, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v13, 0x0

    .line 53
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "header\uff0c offset = "

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", rangeEnd = "

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", totalSize = "

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ", contentLength = "

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " , contentType = "

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-boolean v1, v1, Lcom/danikula/videocache/d;->c:Z

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    const-string v1, "HTTP/1.1 206 PARTIAL CONTENT\n"

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    const-string v1, "HTTP/1.1 200 OK\n"

    .line 118
    .line 119
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, "Accept-Ranges: bytes\n"

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ""

    .line 128
    .line 129
    if-eqz v12, :cond_4

    .line 130
    .line 131
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/4 v12, 0x1

    .line 136
    new-array v14, v12, [Ljava/lang/Object;

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    aput-object v3, v14, v12

    .line 140
    .line 141
    const-string v3, "Content-Length: %d\n"

    .line 142
    .line 143
    invoke-direct {v0, v3, v14}, Lcom/danikula/videocache/e;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    move-object v3, v1

    .line 149
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    if-eqz v13, :cond_5

    .line 153
    .line 154
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    const/4 v7, 0x3

    .line 167
    new-array v7, v7, [Ljava/lang/Object;

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    aput-object v3, v7, v9

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    aput-object v8, v7, v3

    .line 174
    .line 175
    const/4 v8, 0x2

    .line 176
    aput-object v6, v7, v8

    .line 177
    .line 178
    const-string v6, "Content-Range: bytes %d-%d/%d\n"

    .line 179
    .line 180
    invoke-direct {v0, v6, v7}, Lcom/danikula/videocache/e;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    goto :goto_5

    .line 185
    :cond_5
    const/4 v3, 0x1

    .line 186
    move-object v6, v1

    .line 187
    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    if-nez v5, :cond_6

    .line 191
    .line 192
    const-string v1, "Content-Type: %s\n"

    .line 193
    .line 194
    new-array v3, v3, [Ljava/lang/Object;

    .line 195
    .line 196
    const/4 v5, 0x0

    .line 197
    aput-object v4, v3, v5

    .line 198
    .line 199
    invoke-direct {v0, v1, v3}, Lcom/danikula/videocache/e;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, "\n"

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    return-object v1
.end method

.method private m(Ljava/io/OutputStream;JLjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "responseWithCache\uff0c offset = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x2000

    .line 22
    .line 23
    new-array v7, v0, [B

    .line 24
    .line 25
    :goto_0
    move-object v1, p0

    .line 26
    move-object v2, v7

    .line 27
    move-wide v3, p2

    .line 28
    move v5, v0

    .line 29
    move-object v6, p4

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/danikula/videocache/m;->d([BJILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, -0x1

    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/danikula/videocache/m;->e:Z

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v7, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    int-to-long v1, v1

    .line 46
    add-long/2addr p2, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p4, "responseWithCache\uff0c --------------------end,offset = "

    .line 57
    .line 58
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "\uff0c threadName = "

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public k(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/danikula/videocache/d;->b:J

    .line 2
    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v3, "processRequest\uff0c offset = "

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v3, "\uff0c threadName = "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/danikula/videocache/m;->a(J)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {v2, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/danikula/videocache/e;->j(Lcom/danikula/videocache/d;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v3, "UTF-8"

    .line 56
    .line 57
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lcom/danikula/videocache/d;->a:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/danikula/videocache/n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/danikula/videocache/e;->m(Ljava/io/OutputStream;JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public l(Lcom/danikula/videocache/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/e;->i:Lcom/danikula/videocache/b;

    .line 2
    .line 3
    return-void
.end method
