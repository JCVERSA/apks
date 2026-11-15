.class public Lcom/hunantv/media/drm/cenc/CencDrmStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_ERROR_COUNTER:I = 0x3

.field public static final RESUME_INTERVAL:I = 0x36ee80

.field public static final TAG:Ljava/lang/String; = "CencDrmStrategy"

.field public static sErrorCounter:I = 0x0

.field public static sErrorZone:Z = false

.field public static sErrorZoneTimestamp:J

.field public static sLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCencSupported()Z
    .locals 9

    sget-object v0, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZone:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-wide v3, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZoneTimestamp:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v7, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZoneTimestamp:J

    sub-long/2addr v3, v7

    const-wide/32 v7, 0x36ee80

    cmp-long v1, v3, v7

    if-gez v1, :cond_0

    const-string v1, "CencDrmStrategy"

    const-string v3, "not support because in error zone"

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "CencDrmStrategy"

    const-string v3, "jump error zone cause beyond time"

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput v2, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorCounter:I

    sput-boolean v2, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZone:Z

    sput-wide v5, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZoneTimestamp:J

    :cond_1
    const-string v1, "HUAWEI"

    invoke-static {}, Lcom/hunantv/media/report/c/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-static {v1}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static notifyError()V
    .locals 5

    sget-object v0, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorCounter:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorCounter:I

    const-string v1, "CencDrmStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyError sErrorCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorCounter:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const-string v1, "CencDrmStrategy"

    const-string v3, "goto Error Zone"

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZone:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZoneTimestamp:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static notifySuccess()V
    .locals 3

    sget-object v0, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CencDrmStrategy"

    const-string v2, "notifySuccess"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorCounter:I

    sput-boolean v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZone:Z

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->sErrorZoneTimestamp:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
