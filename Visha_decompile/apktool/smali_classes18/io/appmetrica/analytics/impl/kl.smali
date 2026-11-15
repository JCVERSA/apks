.class public final Lio/appmetrica/analytics/impl/kl;
.super Lio/appmetrica/analytics/impl/B5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Cl;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Bl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/B5;-><init>(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Bl;)V
    .locals 5
    .param p1    # Lio/appmetrica/analytics/impl/Bl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/W5;

    .line 3
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->c()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v1

    .line 4
    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 5
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->u()Lio/appmetrica/analytics/impl/Ui;

    move-result-object v2

    .line 6
    sget-object v3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 7
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ua;->r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->b()Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/Bl;->b(Lio/appmetrica/analytics/impl/Bl;)Lio/appmetrica/analytics/impl/Bl;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lio/appmetrica/analytics/impl/W5;-><init>(Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/B5;->a(Lio/appmetrica/analytics/impl/W5;)V

    .line 10
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/kl;->a(Lio/appmetrica/analytics/impl/Bl;)V

    return-void
.end method
