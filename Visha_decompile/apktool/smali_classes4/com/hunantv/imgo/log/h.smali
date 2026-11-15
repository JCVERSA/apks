.class public Lcom/hunantv/imgo/log/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/log/h$a;
    }
.end annotation


# static fields
.field private static g:Lcom/hunantv/imgo/log/h;


# instance fields
.field public a:[Ljava/net/InetAddress;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/hunantv/imgo/log/h$a;

.field private d:I

.field private e:[Z

.field private final f:[J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1770

    iput v0, p0, Lcom/hunantv/imgo/log/h;->d:I

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/hunantv/imgo/log/h;->f:[J

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/log/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/log/h;->g:Lcom/hunantv/imgo/log/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hunantv/imgo/log/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/log/h;->g:Lcom/hunantv/imgo/log/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hunantv/imgo/log/h;

    invoke-direct {v1}, Lcom/hunantv/imgo/log/h;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/log/h;->g:Lcom/hunantv/imgo/log/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/hunantv/imgo/log/h;->g:Lcom/hunantv/imgo/log/h;

    return-object v0
.end method

.method private a(Ljava/net/InetSocketAddress;II)V
    .locals 4

    const/4 v0, 0x0

    .line 24
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 26
    invoke-virtual {v1, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 28
    iget-object v0, p0, Lcom/hunantv/imgo/log/h;->f:[J

    sub-long/2addr p1, v2

    aput-wide p1, v0, p3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_1

    .line 31
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/hunantv/imgo/log/h;->f:[J

    const-wide/16 v1, -0x2

    aput-wide v1, p0, p3

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 33
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 34
    :goto_1
    :try_start_5
    iget-object p0, p0, Lcom/hunantv/imgo/log/h;->f:[J

    const-wide/16 v1, -0x1

    aput-wide v1, p0, p3

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    .line 36
    :try_start_6
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :cond_1
    :goto_4
    throw p0
.end method

.method private a(Ljava/net/InetAddress;Ljava/lang/String;)Z
    .locals 10

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 9
    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x50

    invoke-direct {v2, p1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 10
    iget-object p1, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect to host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "...\n"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hunantv/imgo/log/h$a;->b(Ljava/lang/String;)V

    move p1, v1

    :goto_0
    const/4 p2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x4

    if-ge p1, v4, :cond_3

    .line 11
    iget v5, p0, Lcom/hunantv/imgo/log/h;->d:I

    invoke-direct {p0, v2, v5, p1}, Lcom/hunantv/imgo/log/h;->a(Ljava/net/InetSocketAddress;II)V

    .line 12
    iget-object v5, p0, Lcom/hunantv/imgo/log/h;->f:[J

    aget-wide v5, v5, p1

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 13
    iget-object v5, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\'s time=TimeOut,  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/hunantv/imgo/log/h$a;->b(Ljava/lang/String;)V

    .line 14
    iget v5, p0, Lcom/hunantv/imgo/log/h;->d:I

    add-int/lit16 v5, v5, 0xfa0

    iput v5, p0, Lcom/hunantv/imgo/log/h;->d:I

    if-lez p1, :cond_2

    .line 15
    iget-object v5, p0, Lcom/hunantv/imgo/log/h;->f:[J

    add-int/lit8 v6, p1, -0x1

    aget-wide v5, v5, v6

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    move p1, v3

    goto :goto_1

    :cond_0
    const-wide/16 v7, -0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 16
    iget-object v5, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\'s time=IOException"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-interface {v5, v6}, Lcom/hunantv/imgo/log/h$a;->b(Ljava/lang/String;)V

    if-lez p1, :cond_2

    .line 18
    iget-object v5, p0, Lcom/hunantv/imgo/log/h;->f:[J

    add-int/lit8 v6, p1, -0x1

    aget-wide v5, v5, v6

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    move p1, p2

    goto :goto_1

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'s time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/imgo/log/h;->f:[J

    aget-wide v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms,  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/hunantv/imgo/log/h$a;->b(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_3
    move p1, v1

    :goto_1
    if-ne p1, v3, :cond_4

    goto :goto_3

    :cond_4
    if-ne p1, p2, :cond_5

    goto :goto_3

    :cond_5
    const-wide/16 p1, 0x0

    move-wide v5, p1

    move v2, v1

    :goto_2
    if-ge v1, v4, :cond_7

    .line 20
    iget-object v3, p0, Lcom/hunantv/imgo/log/h;->f:[J

    aget-wide v7, v3, v1

    cmp-long v3, v7, p1

    if-lez v3, :cond_6

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-lez v2, :cond_8

    int-to-long p1, v2

    .line 21
    div-long/2addr v5, p1

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "average="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x1

    .line 23
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/hunantv/imgo/log/h$a;->b(Ljava/lang/String;)V

    return v1
.end method

.method private c()Z
    .locals 7

    iget-object v0, p0, Lcom/hunantv/imgo/log/h;->a:[Ljava/net/InetAddress;

    const-string v1, "\n"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/hunantv/imgo/log/h;->b:Ljava/util/List;

    if-eqz v3, :cond_3

    array-length v0, v0

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/hunantv/imgo/log/h;->e:[Z

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    invoke-interface {v4, v1}, Lcom/hunantv/imgo/log/h$a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/hunantv/imgo/log/h;->e:[Z

    iget-object v5, p0, Lcom/hunantv/imgo/log/h;->a:[Ljava/net/InetAddress;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/hunantv/imgo/log/h;->b:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/hunantv/imgo/log/h;->a(Ljava/net/InetAddress;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/imgo/log/h;->e:[Z

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    aget-boolean v5, v0, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object p0, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    invoke-interface {p0, v1}, Lcom/hunantv/imgo/log/h$a;->a(Ljava/lang/String;)V

    return v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    const-string v3, "DNS\u89e3\u6790\u5931\u8d25,\u4e3b\u673a\u5730\u5740\u4e0d\u53ef\u8fbe"

    invoke-interface {v0, v3}, Lcom/hunantv/imgo/log/h$a;->a(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    invoke-interface {p0, v1}, Lcom/hunantv/imgo/log/h$a;->a(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/log/h$a;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/hunantv/imgo/log/h;->c:Lcom/hunantv/imgo/log/h$a;

    return-void
.end method

.method public b()Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/log/h;->c()Z

    move-result p0

    return p0
.end method
