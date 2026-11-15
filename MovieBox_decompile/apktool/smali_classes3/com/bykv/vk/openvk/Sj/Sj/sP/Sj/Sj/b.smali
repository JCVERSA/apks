.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;


# instance fields
.field private volatile a:J

.field private final b:Ljava/lang/Object;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:J

.field private volatile f:J

.field private volatile g:Z

.field private volatile h:Z

.field private i:Ljava/io/RandomAccessFile;

.field private final j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x80000000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    .line 8
    .line 9
    new-instance p1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->f:J

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h:Z

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Le6/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Le6/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 71
    .line 72
    const-string v1, "r"

    .line 73
    .line 74
    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 83
    .line 84
    const-string v1, "rw"

    .line 85
    .line 86
    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 90
    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_1

    .line 96
    .line 97
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void

    .line 109
    :catchall_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method private d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private e()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0
.end method

.method static synthetic f(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic n(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    return-object p0
.end method

.method private p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 47
    .line 48
    const-string v3, "rw"

    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "Error renaming file "

    .line 71
    .line 72
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, " to "

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, " for completion!"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    .line 105
    .line 106
    :goto_2
    :try_start_3
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :catchall_2
    move-exception v1

    .line 109
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :goto_3
    monitor-exit v0

    .line 111
    throw v1
.end method


# virtual methods
.method public TKC()J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    const-wide/32 v4, -0x80000000

    .line 23
    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0xf

    .line 30
    .line 31
    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 32
    .line 33
    const-wide/16 v3, 0x5

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x4e20

    .line 39
    .line 40
    if-le v1, v2, :cond_1

    .line 41
    .line 42
    :try_start_2
    monitor-exit v0

    .line 43
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    return-wide v0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    new-instance v1, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v2, "total length InterruptException"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :cond_2
    monitor-exit v0

    .line 57
    :goto_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    .line 58
    .line 59
    return-wide v0

    .line 60
    :goto_1
    monitor-exit v0

    .line 61
    throw v1
.end method

.method public a(J[BII)I
    .locals 7

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    move v2, v0

    .line 11
    :goto_0
    iget-boolean v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    .line 12
    .line 13
    if-nez v3, :cond_4

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    cmp-long v4, p1, v4

    .line 23
    .line 24
    if-gez v4, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 27
    .line 28
    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    invoke-virtual {v2, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x21

    .line 41
    .line 42
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    .line 43
    .line 44
    const-wide/16 v5, 0x21

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 47
    .line 48
    .line 49
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-lez v2, :cond_2

    .line 51
    .line 52
    return v2

    .line 53
    :cond_2
    const/16 v3, 0x4e20

    .line 54
    .line 55
    if-ge v0, v3, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    :try_start_2
    new-instance p1, Ljava/net/SocketTimeoutException;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    goto :goto_3

    .line 66
    :goto_2
    monitor-exit v3

    .line 67
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :cond_4
    return v1

    .line 69
    :goto_3
    instance-of p2, p1, Ljava/io/IOException;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    check-cast p1, Ljava/io/IOException;

    .line 74
    .line 75
    throw p1

    .line 76
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public i()V
    .locals 6

    .line 1
    invoke-static {}, Lv5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lv5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->sP()Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 17
    .line 18
    const-string v1, "v_cache"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-long v1, v1

    .line 30
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dNu()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v4, v2

    .line 43
    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v4, v2

    .line 54
    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 67
    .line 68
    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "bytes="

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    .line 79
    .line 80
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, "-"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "RANGE"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "videoLoadWhenPlaying"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/16 v2, 0x9

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public sP()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    :cond_2
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    .line 34
    .line 35
    return-void
.end method
