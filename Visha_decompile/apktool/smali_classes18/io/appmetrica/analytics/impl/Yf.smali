.class public final Lio/appmetrica/analytics/impl/Yf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Sf;


# instance fields
.field public final a:Z

.field public final b:Lio/appmetrica/analytics/impl/ni;

.field public final c:Lio/appmetrica/analytics/impl/Ke;

.field public final d:Lio/appmetrica/analytics/impl/R7;

.field public final e:Lio/appmetrica/analytics/impl/gg;

.field public final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;)V
    .locals 1
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/Ke;->s()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lio/appmetrica/analytics/impl/Yf;-><init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;Z)V
    .locals 7

    .line 3
    new-instance v5, Lio/appmetrica/analytics/impl/R7;

    invoke-direct {v5, p4}, Lio/appmetrica/analytics/impl/R7;-><init>(Z)V

    new-instance v6, Lio/appmetrica/analytics/impl/gg;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/gg;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Yf;-><init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;ZLio/appmetrica/analytics/impl/R7;Lio/appmetrica/analytics/impl/gg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;ZLio/appmetrica/analytics/impl/R7;Lio/appmetrica/analytics/impl/gg;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yf;->b:Lio/appmetrica/analytics/impl/ni;

    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Yf;->c:Lio/appmetrica/analytics/impl/Ke;

    .line 7
    iput-boolean p4, p0, Lio/appmetrica/analytics/impl/Yf;->a:Z

    .line 8
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Yf;->d:Lio/appmetrica/analytics/impl/R7;

    .line 9
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Yf;->e:Lio/appmetrica/analytics/impl/gg;

    .line 10
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Yf;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Yf;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yf;->b:Lio/appmetrica/analytics/impl/ni;

    new-instance v1, Lio/appmetrica/analytics/impl/ig;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Yf;->f:Landroid/os/Handler;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/impl/ig;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/Sf;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v8

    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/e4;

    sget-object v2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v6, 0x1002

    const/4 v7, 0x0

    .line 7
    const-string v4, ""

    const-string v5, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 8
    iput-object p0, v1, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    .line 9
    iget-object p0, v0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 10
    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/DeferredDeeplinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yf;->d:Lio/appmetrica/analytics/impl/R7;

    .line 28
    iput-object p1, v0, Lio/appmetrica/analytics/impl/R7;->b:Lio/appmetrica/analytics/DeferredDeeplinkListener;

    .line 29
    iget-boolean p1, v0, Lio/appmetrica/analytics/impl/R7;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 30
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/R7;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/R7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Yf;->c:Lio/appmetrica/analytics/impl/Ke;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ke;->u()Lio/appmetrica/analytics/impl/Ke;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 33
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yf;->c:Lio/appmetrica/analytics/impl/Ke;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ke;->u()Lio/appmetrica/analytics/impl/Ke;

    .line 34
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yf;->d:Lio/appmetrica/analytics/impl/R7;

    .line 20
    iput-object p1, v0, Lio/appmetrica/analytics/impl/R7;->c:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;

    .line 21
    iget-boolean p1, v0, Lio/appmetrica/analytics/impl/R7;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/R7;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/R7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Yf;->c:Lio/appmetrica/analytics/impl/Ke;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ke;->u()Lio/appmetrica/analytics/impl/Ke;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 25
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yf;->c:Lio/appmetrica/analytics/impl/Ke;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ke;->u()Lio/appmetrica/analytics/impl/Ke;

    .line 26
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/cg;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/cg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/cg;->a:Ljava/lang/String;

    .line 13
    :goto_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Yf;->a:Z

    if-nez v0, :cond_1

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yf;->d:Lio/appmetrica/analytics/impl/R7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yf;->e:Lio/appmetrica/analytics/impl/gg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/gg;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/P7;

    move-result-object p1

    .line 16
    iput-object p1, v0, Lio/appmetrica/analytics/impl/R7;->d:Lio/appmetrica/analytics/impl/P7;

    .line 17
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/R7;->a()V

    .line 18
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
