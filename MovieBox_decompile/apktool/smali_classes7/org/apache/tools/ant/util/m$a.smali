.class final Lorg/apache/tools/ant/util/m$a;
.super Ljava/io/OutputStream;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private final synthetic b:Lorg/apache/tools/ant/util/m;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/util/m;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/m$a;->a:Z

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/m;->a(Lorg/apache/tools/ant/util/m;)I

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/util/m;Lorg/apache/tools/ant/util/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/m$a;-><init>(Lorg/apache/tools/ant/util/m;)V

    return-void
.end method

.method static synthetic b(Lorg/apache/tools/ant/util/m$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/tools/ant/util/m$a;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lorg/apache/tools/ant/util/m$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/m$a;->a:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/m;->d(Lorg/apache/tools/ant/util/m;Lorg/apache/tools/ant/util/m$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    .line 5
    .line 6
    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->b(Lorg/apache/tools/ant/util/m;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    .line 10
    .line 11
    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->c(Lorg/apache/tools/ant/util/m;)Ljava/io/OutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->b(Lorg/apache/tools/ant/util/m;)V

    .line 3
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->c(Lorg/apache/tools/ant/util/m;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([B)V
    .locals 2

    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->b(Lorg/apache/tools/ant/util/m;)V

    .line 7
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->c(Lorg/apache/tools/ant/util/m;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([BII)V
    .locals 2

    .line 9
    iget-object v0, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->b(Lorg/apache/tools/ant/util/m;)V

    .line 11
    iget-object v1, p0, Lorg/apache/tools/ant/util/m$a;->b:Lorg/apache/tools/ant/util/m;

    invoke-static {v1}, Lorg/apache/tools/ant/util/m;->c(Lorg/apache/tools/ant/util/m;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
