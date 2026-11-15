.class public Lcom/hunantv/media/player/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/hunantv/media/player/d/c;

.field private c:Lcom/hunantv/media/widget/IVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/player/d/c;->b()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/c;->b(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/hunantv/media/player/d/b;->c:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/c;->a(Lcom/hunantv/media/widget/IVideoView;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/c;->a([F)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(IIIIILcom/hunantv/media/player/d/a/b;)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/player/d/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/hunantv/media/player/d/c;-><init>(III)V

    iput-object v1, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    iget-object p1, p0, Lcom/hunantv/media/player/d/b;->c:Lcom/hunantv/media/widget/IVideoView;

    invoke-virtual {v1, p1}, Lcom/hunantv/media/player/d/c;->a(Lcom/hunantv/media/widget/IVideoView;)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    invoke-virtual {p1, p4, p5}, Lcom/hunantv/media/player/d/c;->a(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    invoke-virtual {p1, p6}, Lcom/hunantv/media/player/d/c;->a(Lcom/hunantv/media/player/d/a/b;)V

    iget-object p0, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->a()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/hunantv/media/player/d/a/b;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/c;->a(Lcom/hunantv/media/player/d/a/b;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/d/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/d/b;->b:Lcom/hunantv/media/player/d/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/c;->a(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
