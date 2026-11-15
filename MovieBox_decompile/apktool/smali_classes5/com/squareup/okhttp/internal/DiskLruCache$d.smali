.class public final Lcom/squareup/okhttp/internal/DiskLruCache$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    .line 4
    invoke-static {p2}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->k(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache$d;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/DiskLruCache$d;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b:[Z

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->c:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->n(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->c:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, p0, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->n(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    .line 18
    .line 19
    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->o(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 26
    .line 27
    invoke-static {v1, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->n(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->d:Z

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method public f(I)Lokio/Sink;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b:[Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aput-boolean v2, v1, p1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->d(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->l(Lcom/squareup/okhttp/internal/DiskLruCache;)Lcom/squareup/okhttp/internal/io/FileSystem;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1, p1}, Lcom/squareup/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    new-instance v1, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;

    .line 47
    .line 48
    invoke-direct {v1, p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$d;Lokio/Sink;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-object v1

    .line 53
    :catch_0
    invoke-static {}, Lcom/squareup/okhttp/internal/DiskLruCache;->m()Lokio/Sink;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    monitor-exit v0

    .line 58
    return-object p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p1
.end method
