.class public Lrr9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lrr9;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lrr9;->d:J

    return-wide v0
.end method

.method public final c([BI)J
    .locals 6

    aget-byte p0, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p2, p0, 0x80

    const/16 v2, 0x80

    if-ne p2, v2, :cond_0

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v2

    :cond_0
    and-int/lit16 p2, v0, 0x80

    if-ne p2, v2, :cond_1

    and-int/lit8 p2, v0, 0x7f

    add-int/lit16 v0, p2, 0x80

    :cond_1
    and-int/lit16 p2, v1, 0x80

    if-ne p2, v2, :cond_2

    and-int/lit8 p2, v1, 0x7f

    add-int/lit16 v1, p2, 0x80

    :cond_2
    and-int/lit16 p2, p1, 0x80

    if-ne p2, v2, :cond_3

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr p1, v2

    :cond_3
    int-to-long v2, p0

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    int-to-long v4, v0

    const/16 p0, 0x10

    shl-long/2addr v4, p0

    add-long/2addr v2, v4

    int-to-long v0, v1

    const/16 p0, 0x8

    shl-long/2addr v0, p0

    add-long/2addr v2, v0

    int-to-long p0, p1

    add-long/2addr v2, p0

    return-wide v2
.end method

.method public final d([BI)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lrr9;->c([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Lrr9;->c([BI)J

    move-result-wide p0

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr p0, v2

    const-wide v2, 0x100000000L

    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public e(Ljava/lang/String;I)Z
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lrr9;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    const/16 p2, 0x30

    new-array v1, p2, [B

    new-instance v2, Ljava/net/DatagramPacket;

    const/16 v3, 0x7b

    invoke-direct {v2, v1, p2, p1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 p1, 0x1b

    aput-byte p1, v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 p1, 0x28

    invoke-virtual {p0, v1, p1, v3, v4}, Lrr9;->f([BIJ)V

    iget-object v7, p0, Lrr9;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object p2, p0, Lrr9;->e:Ljava/net/DatagramSocket;

    invoke-virtual {p2, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/16 p2, 0x18

    invoke-virtual {p0, v1, p2}, Lrr9;->d([BI)J

    move-result-wide v9

    const/16 p2, 0x20

    invoke-virtual {p0, v1, p2}, Lrr9;->d([BI)J

    move-result-wide v11

    invoke-virtual {p0, v1, p1}, Lrr9;->d([BI)J

    move-result-wide p1

    sub-long/2addr v7, v5

    iput-wide v7, p0, Lrr9;->c:J

    sub-long/2addr v11, v9

    sub-long/2addr p1, v3

    add-long/2addr v11, p1

    const-wide/16 p1, 0x2

    div-long/2addr v11, p1

    add-long/2addr v3, v11

    iput-wide v3, p0, Lrr9;->a:J

    iput-wide v11, p0, Lrr9;->b:J

    iput-wide v5, p0, Lrr9;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lrr9;->e:Ljava/net/DatagramSocket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lrr9;->e:Ljava/net/DatagramSocket;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    return v0

    :goto_0
    iget-object p0, p0, Lrr9;->e:Ljava/net/DatagramSocket;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw p1
.end method

.method public final f([BIJ)V
    .locals 9

    const-wide/16 v0, 0x3e8

    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    const/16 p0, 0x18

    shr-long v4, v2, p0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x10

    shr-long v6, v2, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    add-int/lit8 v4, p2, 0x2

    const/16 v6, 0x8

    shr-long v7, v2, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    add-int/lit8 v4, p2, 0x3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v4

    const-wide v2, 0x100000000L

    mul-long/2addr p3, v2

    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x4

    shr-long v1, p3, p0

    long-to-int p0, v1

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p0, p2, 0x5

    shr-long v0, p3, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p2, 0x6

    shr-long v0, p3, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p2, p2, 0x7

    long-to-int p0, p3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method
