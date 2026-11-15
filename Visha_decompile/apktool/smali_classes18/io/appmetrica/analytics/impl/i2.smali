.class public final Lio/appmetrica/analytics/impl/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/mc;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/h2;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lio/appmetrica/analytics/impl/h2;-><init>(Lio/appmetrica/analytics/impl/mc;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
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
