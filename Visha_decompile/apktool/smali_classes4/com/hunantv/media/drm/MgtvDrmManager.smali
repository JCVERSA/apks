.class public final Lcom/hunantv/media/drm/MgtvDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/hunantv/media/drm/IDrmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hunantv/media/drm/IDrmManager;
    .locals 2

    const-class v0, Lcom/hunantv/media/drm/MgtvDrmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v1

    sput-object v1, Lcom/hunantv/media/drm/MgtvDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setDebugHttpsTrust(Z)V
    .locals 1

    const-class v0, Lcom/hunantv/media/drm/MgtvDrmManager;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/hunantv/media/report/b/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
