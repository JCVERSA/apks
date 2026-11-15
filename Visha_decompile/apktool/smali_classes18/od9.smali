.class public final Lod9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# instance fields
.field public final b:Lpd7;

.field public final c:Z

.field public d:Lrc2;

.field public e:Z

.field public f:Lqf;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lpd7;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lod9;-><init>(Lpd7;Z)V

    return-void
.end method

.method public constructor <init>(Lpd7;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lod9;->b:Lpd7;

    .line 4
    iput-boolean p2, p0, Lod9;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lod9;->f:Lqf;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lod9;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lod9;->f:Lqf;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lod9;->b:Lpd7;

    invoke-virtual {v0, v1}, Lqf;->a(Lpd7;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lod9;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lod9;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lod9;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lod9;->g:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lod9;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lod9;->f:Lqf;

    if-nez v0, :cond_2

    new-instance v0, Lqf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqf;-><init>(I)V

    iput-object v0, p0, Lod9;->f:Lqf;

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqf;->b(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lod9;->g:Z

    iput-boolean v0, p0, Lod9;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lod9;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lod9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lod9;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lod9;->e:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lod9;->g:Z

    iget-object v0, p0, Lod9;->f:Lqf;

    if-nez v0, :cond_2

    new-instance v0, Lqf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqf;-><init>(I)V

    iput-object v0, p0, Lod9;->f:Lqf;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean v1, p0, Lod9;->c:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lqf;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lqf;->d(Ljava/lang/Object;)V

    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    iput-boolean v1, p0, Lod9;->g:Z

    iput-boolean v1, p0, Lod9;->e:Z

    const/4 v1, 0x0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    iget-object p0, p0, Lod9;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lod9;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lod9;->d:Lrc2;

    invoke-interface {p1}, Lrc2;->dispose()V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lod9;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lod9;->g:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lod9;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lod9;->f:Lqf;

    if-nez v0, :cond_3

    new-instance v0, Lqf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqf;-><init>(I)V

    iput-object v0, p0, Lod9;->f:Lqf;

    :cond_3
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqf;->b(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lod9;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lod9;->b:Lpd7;

    invoke-interface {v0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lod9;->a()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lod9;->d:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lod9;->d:Lrc2;

    iget-object p1, p0, Lod9;->b:Lpd7;

    invoke-interface {p1, p0}, Lpd7;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method
