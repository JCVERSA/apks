.class public final Lio/appmetrica/analytics/impl/ih;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast v0, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/x5;->d()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->j:Lio/appmetrica/analytics/impl/vk;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object v0

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/hk;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/hk;->g:Z

    iget-object v0, v0, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/yk;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :cond_1
    iput v1, p0, Lio/appmetrica/analytics/impl/vk;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :goto_1
    monitor-exit p0

    throw p1
.end method
