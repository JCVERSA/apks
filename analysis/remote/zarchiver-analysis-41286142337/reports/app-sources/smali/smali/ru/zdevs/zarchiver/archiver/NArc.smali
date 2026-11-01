.class public Lru/zdevs/zarchiver/archiver/NArc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/archiver/NArc$NArcException;,
        Lru/zdevs/zarchiver/archiver/NArc$NArcItem;,
        Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition;,
        Lru/zdevs/zarchiver/archiver/NArc$NArcPasswordException;
    }
.end annotation


# instance fields
.field public volatile a:J

.field public final b:Ljava/lang/String;

.field public volatile c:Ljava/io/Closeable;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lru/zdevs/zarchiver/archiver/NArc;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/NArc;->d:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method private static native cArchiveOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native cCancel(J)V
.end method

.method private static native cClose(J)V
.end method

.method private static native cGetItem(JILjava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc$NArcItem;
.end method

.method private static native cGetItemCount(J)I
.end method

.method private static native cGetStream(JILjava/lang/String;)[J
.end method

.method private static native cSetComment(JLjava/lang/String;)I
.end method

.method private static native cWaitEndStream(JJ)V
.end method

.method public static j(Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;
    .locals 2

    .line 1
    const-string v0, "zip"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;
    .locals 3

    .line 1
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Lru/zdevs/zarchiver/archiver/NArc$NArcException;

    .line 13
    .line 14
    const-string p1, "Fail to load library"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lru/zdevs/zarchiver/archiver/NArc$NArcException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lru/zdevs/zarchiver/archiver/NArc;->cArchiveOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long v2, p1, v0

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_2
    invoke-static {p0}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lru/zdevs/zarchiver/archiver/NArc;

    .line 36
    .line 37
    invoke-direct {v0, p1, p2, p0}, Lru/zdevs/zarchiver/archiver/NArc;-><init>(JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public static l(Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;
    .locals 2

    .line 1
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Le0/h;->e(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Le0/h;->c(Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-static {p0}, La0/c;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p0, v1, v0}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-wide v1, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 11
    .line 12
    invoke-static {v1, v2}, Lru/zdevs/zarchiver/archiver/NArc;->cCancel(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final b(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 5
    .line 6
    instance-of v1, v0, Le0/g;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    check-cast v0, Le0/g;

    .line 11
    .line 12
    iget-object v1, v0, Le0/g;->b:Le0/d;

    .line 13
    .line 14
    invoke-interface {v1}, Le0/d;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Le0/g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 25
    .line 26
    .line 27
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->d:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_0
    iget-wide v1, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    iput-wide v3, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->c()V

    .line 25
    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_1
    invoke-static {v1, v2}, Lru/zdevs/zarchiver/archiver/NArc;->cClose(J)V

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0

    .line 36
    :catchall_1
    move-exception v1

    .line 37
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    throw v1
.end method

.method public final d(ILjava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    move-object v0, p0

    .line 9
    move v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/archiver/NArc;->e(Landroid/content/Context;ILjava/lang/String;IZ)Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;ILjava/lang/String;IZ)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    if-gez p2, :cond_1

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    :try_start_2
    invoke-static {p3}, La0/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object p3, v1

    .line 24
    :goto_0
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 25
    .line 26
    invoke-static {v2, v3, p2, p3}, Lru/zdevs/zarchiver/archiver/NArc;->cGetStream(JILjava/lang/String;)[J

    .line 27
    .line 28
    .line 29
    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    if-nez v6, :cond_2

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :cond_2
    if-eqz p4, :cond_5

    .line 35
    .line 36
    :try_start_3
    new-instance v0, Le0/e;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    aget-wide v2, v6, v2

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v7, v2, v4

    .line 44
    .line 45
    if-lez v7, :cond_3

    .line 46
    .line 47
    long-to-int v3, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const v3, 0x7fffffff

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz p5, :cond_4

    .line 57
    .line 58
    move-object v3, p0

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move-object v3, v1

    .line 61
    :goto_2
    invoke-direct {v0, v6, v2, v3}, Le0/e;-><init>([JILru/zdevs/zarchiver/archiver/NArc;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    new-instance v0, Lru/zdevs/zarchiver/archiver/a;

    .line 66
    .line 67
    move-object v2, v0

    .line 68
    move-object v3, p0

    .line 69
    move v4, p2

    .line 70
    move-object v5, p3

    .line 71
    move v7, p5

    .line 72
    invoke-direct/range {v2 .. v7}, Lru/zdevs/zarchiver/archiver/a;-><init>(Lru/zdevs/zarchiver/archiver/NArc;ILjava/lang/String;[JZ)V

    .line 73
    .line 74
    .line 75
    :goto_3
    const-string v2, "storage"

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/os/storage/StorageManager;

    .line 82
    .line 83
    invoke-interface {v0}, Le0/d;->getHandler()Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/high16 v4, 0x10000000

    .line 88
    .line 89
    invoke-virtual {v2, v4, v0, v3}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-instance v3, Le0/g;

    .line 94
    .line 95
    invoke-direct {v3, p0, v0, v2}, Le0/g;-><init>(Lru/zdevs/zarchiver/archiver/NArc;Le0/d;Landroid/os/ParcelFileDescriptor;)V

    .line 96
    .line 97
    .line 98
    iput-object v3, p0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-object v3

    .line 102
    :catch_0
    move-object v3, p3

    .line 103
    :try_start_4
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->m()Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_6

    .line 108
    .line 109
    move-object v0, p0

    .line 110
    move-object v1, p1

    .line 111
    move v2, p2

    .line 112
    move v4, p4

    .line 113
    move v5, p5

    .line 114
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/archiver/NArc;->e(Landroid/content/Context;ILjava/lang/String;IZ)Landroid/os/ParcelFileDescriptor;

    .line 115
    .line 116
    .line 117
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    monitor-exit p0

    .line 119
    return-object p1

    .line 120
    :catch_1
    :cond_6
    monitor-exit p0

    .line 121
    return-object v1

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    .line 124
    throw p1
.end method

.method public final declared-synchronized f(I)Lru/zdevs/zarchiver/archiver/NArc$NArcItem;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 12
    .line 13
    invoke-static {v2, v3, p1, v1}, Lru/zdevs/zarchiver/archiver/NArc;->cGetItem(JILjava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc$NArcItem;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final finalize()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final declared-synchronized g()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Lru/zdevs/zarchiver/archiver/NArc;->cGetItemCount(J)I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public final declared-synchronized h(ILjava/lang/String;)Le0/f;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_2
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p2}, La0/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-static {v2, v3, p1, v0}, Lru/zdevs/zarchiver/archiver/NArc;->cGetStream(JILjava/lang/String;)[J

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_2
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v1

    .line 32
    :cond_2
    :try_start_3
    new-instance v9, Le0/f;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aget-wide v2, v0, v2

    .line 36
    .line 37
    long-to-int v4, v2

    .line 38
    const/4 v2, 0x1

    .line 39
    aget-wide v5, v0, v2

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    aget-wide v7, v0, v2

    .line 43
    .line 44
    move-object v2, v9

    .line 45
    move-object v3, p0

    .line 46
    invoke-direct/range {v2 .. v8}, Le0/f;-><init>(Lru/zdevs/zarchiver/archiver/NArc;IJJ)V

    .line 47
    .line 48
    .line 49
    iput-object v9, p0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;
    :try_end_3
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object v9

    .line 53
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->m()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Le0/f;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return-object p1

    .line 65
    :cond_3
    monitor-exit p0

    .line 66
    return-object v1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
.end method

.method public final declared-synchronized i(ILjava/lang/String;)[J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 12
    .line 13
    invoke-static {v2, v3, p1, p2}, Lru/zdevs/zarchiver/archiver/NArc;->cGetStream(JILjava/lang/String;)[J

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->m()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lru/zdevs/zarchiver/archiver/NArc;->i(ILjava/lang/String;)[J

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-object p1

    .line 31
    :cond_1
    monitor-exit p0

    .line 32
    return-object v1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final isClosed()Z
    .locals 5

    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized m()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2, v2}, Lru/zdevs/zarchiver/archiver/NArc;->cArchiveOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iput-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 22
    .line 23
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return v1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public final declared-synchronized n(Ljava/lang/String;)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lru/zdevs/zarchiver/archiver/NArc;->cSetComment(JLjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final declared-synchronized o(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/NArc;->a:J

    .line 11
    .line 12
    invoke-static {v0, v1, p1, p2}, Lru/zdevs/zarchiver/archiver/NArc;->cWaitEndStream(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method
