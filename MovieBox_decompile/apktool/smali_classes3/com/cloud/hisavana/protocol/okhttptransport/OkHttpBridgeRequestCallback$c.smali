.class Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private volatile b:Z

.field final synthetic c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x8000

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->a(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "The request was canceled!"

    .line 12
    .line 13
    if-nez v0, :cond_9

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    move v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v0

    .line 22
    :goto_0
    const-string v4, "sink == null"

    .line 23
    .line 24
    invoke-static {v3, v4}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long v3, p2, v3

    .line 30
    .line 31
    if-ltz v3, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    :cond_1
    const-string v3, "byteCount < 0: %s"

    .line 35
    .line 36
    invoke-static {v0, v3, p2, p3}, Lcom/google/common/base/m;->h(ZLjava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Z

    .line 40
    .line 41
    xor-int/2addr v0, v2

    .line 42
    const-string v3, "closed"

    .line 43
    .line 44
    invoke-static {v0, v3}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-wide/16 v3, -0x1

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    return-wide v3

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v5, v0

    .line 69
    cmp-long v0, p2, v5

    .line 70
    .line 71
    if-gez v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    long-to-int p2, p2

    .line 76
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 80
    .line 81
    invoke-static {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 88
    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    :try_start_0
    iget-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 92
    .line 93
    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->e(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/BlockingQueue;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->d(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 104
    .line 105
    invoke-interface {p3, v5, v6, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 117
    .line 118
    .line 119
    move-object p3, p2

    .line 120
    :goto_1
    if-eqz p3, :cond_8

    .line 121
    .line 122
    sget-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$a;->a:[I

    .line 123
    .line 124
    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->a(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    aget v0, v0, v5

    .line 133
    .line 134
    if-eq v0, v2, :cond_7

    .line 135
    .line 136
    const/4 v5, 0x2

    .line 137
    if-eq v0, v5, :cond_6

    .line 138
    .line 139
    const/4 v2, 0x3

    .line 140
    if-eq v0, v2, :cond_5

    .line 141
    .line 142
    const/4 p2, 0x4

    .line 143
    if-ne v0, p2, :cond_4

    .line 144
    .line 145
    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    .line 151
    .line 152
    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 165
    .line 166
    .line 167
    int-to-long p1, p1

    .line 168
    return-wide p1

    .line 169
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 170
    .line 171
    const-string p2, "The switch block above is exhaustive!"

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_5
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    new-instance p1, Ljava/io/IOException;

    .line 180
    .line 181
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1

    .line 185
    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    .line 193
    .line 194
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    .line 195
    .line 196
    return-wide v3

    .line 197
    :cond_7
    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    .line 205
    .line 206
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->a:Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    new-instance p1, Ljava/io/IOException;

    .line 209
    .line 210
    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Lorg/chromium/net/CronetException;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 219
    .line 220
    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/cloud/hisavana/protocol/okhttptransport/CronetTimeoutException;

    .line 228
    .line 229
    invoke-direct {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/CronetTimeoutException;-><init>()V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 234
    .line 235
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method
