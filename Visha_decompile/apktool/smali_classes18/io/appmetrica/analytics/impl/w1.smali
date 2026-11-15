.class public final Lio/appmetrica/analytics/impl/w1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/F1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/w1;->a:Lio/appmetrica/analytics/impl/F1;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/w1;->a:Lio/appmetrica/analytics/impl/F1;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/w1;->a:Lio/appmetrica/analytics/impl/F1;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/F1;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F1;->b:Lio/appmetrica/analytics/impl/u1;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/u1;->onCreate()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
