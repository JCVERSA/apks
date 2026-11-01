.class public final Lru/zdevs/zarchiver/archiver/a;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "SourceFile"

# interfaces
.implements Le0/d;


# instance fields
.field public final a:Lru/zdevs/zarchiver/archiver/NArc;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:[J

.field public final e:Z

.field public f:Z

.field public g:Landroid/os/ParcelFileDescriptor;

.field public h:J

.field public i:Z

.field public j:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/archiver/NArc;ILjava/lang/String;[JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 5
    .line 6
    iput p2, p0, Lru/zdevs/zarchiver/archiver/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/archiver/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    .line 11
    .line 12
    iput-boolean p5, p0, Lru/zdevs/zarchiver/archiver/a;->e:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 16
    .line 17
    const-wide/16 p2, 0x0

    .line 18
    .line 19
    iput-wide p2, p0, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 20
    .line 21
    aget-wide p2, p4, p1

    .line 22
    .line 23
    long-to-int p3, p2

    .line 24
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    iput-boolean p1, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 13
    .line 14
    :cond_1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 15
    .line 16
    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/a;->onRelease()V

    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "NFileDescriptorCallback"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onGetSize()J
    .locals 3

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final onRead(JI[B)I
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-boolean v0, v1, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-wide v3, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 9
    .line 10
    const-wide/16 v5, 0x0

    .line 11
    .line 12
    cmp-long v0, v3, p1

    .line 13
    .line 14
    if-lez v0, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    iget-object v3, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :catch_0
    :try_start_1
    iget-object v3, v1, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 27
    .line 28
    iget v4, v1, Lru/zdevs/zarchiver/archiver/a;->b:I

    .line 29
    .line 30
    iget-object v7, v1, Lru/zdevs/zarchiver/archiver/a;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v4, v7}, Lru/zdevs/zarchiver/archiver/NArc;->i(ILjava/lang/String;)[J

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcPasswordException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    nop

    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iput-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 41
    .line 42
    iput-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->d:[J

    .line 43
    .line 44
    aget-wide v3, v0, v2

    .line 45
    .line 46
    long-to-int v0, v3

    .line 47
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-wide/32 v2, 0x7fffffff

    .line 55
    .line 56
    .line 57
    iput-wide v2, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 58
    .line 59
    new-instance v0, Landroid/system/ErrnoException;

    .line 60
    .line 61
    const-string v2, "recreateStream"

    .line 62
    .line 63
    sget v3, Landroid/system/OsConstants;->EIO:I

    .line 64
    .line 65
    invoke-direct {v0, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    :goto_1
    iget-wide v3, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 70
    .line 71
    cmp-long v0, v3, p1

    .line 72
    .line 73
    if-gez v0, :cond_7

    .line 74
    .line 75
    sub-long v7, p1, v3

    .line 76
    .line 77
    cmp-long v0, v7, v5

    .line 78
    .line 79
    if-gtz v0, :cond_4

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    iget-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-wide/16 v9, 0x800

    .line 89
    .line 90
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    long-to-int v10, v9

    .line 95
    new-array v9, v10, [B

    .line 96
    .line 97
    move-wide v11, v7

    .line 98
    :goto_2
    cmp-long v13, v11, v5

    .line 99
    .line 100
    if-lez v13, :cond_6

    .line 101
    .line 102
    int-to-long v13, v10

    .line 103
    :try_start_2
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v13

    .line 107
    long-to-int v14, v13

    .line 108
    invoke-static {v0, v9, v2, v14}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 109
    .line 110
    .line 111
    move-result v13
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    if-gez v13, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    int-to-long v13, v13

    .line 116
    sub-long/2addr v11, v13

    .line 117
    goto :goto_2

    .line 118
    :catch_2
    move-exception v0

    .line 119
    new-instance v2, Landroid/system/ErrnoException;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sget v3, Landroid/system/OsConstants;->EINTR:I

    .line 126
    .line 127
    invoke-direct {v2, v0, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    throw v2

    .line 131
    :cond_6
    :goto_3
    sub-long v5, v7, v11

    .line 132
    .line 133
    :goto_4
    add-long/2addr v3, v5

    .line 134
    iput-wide v3, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 135
    .line 136
    cmp-long v0, v3, p1

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    return v2

    .line 141
    :cond_7
    move/from16 v0, p3

    .line 142
    .line 143
    :goto_5
    if-lez v0, :cond_9

    .line 144
    .line 145
    :try_start_3
    iget-object v2, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    sub-int v3, p3, v0

    .line 152
    .line 153
    move-object/from16 v4, p4

    .line 154
    .line 155
    invoke-static {v2, v4, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-gtz v2, :cond_8

    .line 160
    .line 161
    return v3

    .line 162
    :cond_8
    sub-int/2addr v0, v2

    .line 163
    iget-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 164
    .line 165
    int-to-long v2, v2

    .line 166
    add-long/2addr v5, v2

    .line 167
    iput-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :catch_3
    new-instance v0, Landroid/system/ErrnoException;

    .line 171
    .line 172
    const-string v2, "onRead"

    .line 173
    .line 174
    sget v3, Landroid/system/OsConstants;->EIO:I

    .line 175
    .line 176
    invoke-direct {v0, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_9
    sub-int v0, p3, v0

    .line 181
    .line 182
    return v0
.end method

.method public final onRelease()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

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
    iput-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    invoke-static {v0}, Ln0/e;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 15
    .line 16
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->a()V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 24
    .line 25
    iget-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    aget-wide v2, v1, v2

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lru/zdevs/zarchiver/archiver/NArc;->o(J)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->e:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-wide/16 v0, 0x32

    .line 38
    .line 39
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 43
    .line 44
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method
