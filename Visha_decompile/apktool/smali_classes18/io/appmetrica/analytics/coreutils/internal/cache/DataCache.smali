.class public abstract Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/cache/UpdateConditionsChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreapi/internal/cache/UpdateConditionsChecker;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;

.field protected final mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 8
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DataCache-%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    move-object v2, v0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;-><init>(JJLjava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    return-void
.end method


# virtual methods
.method public getCachedData()Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->a:Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;->scheduleUpdateIfNeededNow()V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->shouldClearData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->setData(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->getData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setUpdateScheduler(Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->a:Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;

    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->shouldUpdateData()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract shouldUpdate(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public updateCacheControl(JJ)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->setExpirationPolicy(JJ)V

    return-void
.end method

.method public updateData(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->shouldUpdate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->mCachedData:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->setData(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/cache/DataCache;->a:Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/cache/CacheUpdateScheduler;->onStateUpdated()V

    :cond_0
    return-void
.end method
