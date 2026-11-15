.class public abstract Lio/appmetrica/analytics/impl/fn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()J
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/impl/Jj;->a:Lio/appmetrica/analytics/impl/Kj;

    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Kj;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
