.class public Lcom/hunantv/media/drm/MgtvDrmHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WIDEVINE_UUID:Ljava/util/UUID;

.field private static final WISEPLAY_DRM_UUID:Ljava/util/UUID;

.field private static sWpSupportMsg:Ljava/lang/String;

.field private static sWvSupportMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmHelper;->WIDEVINE_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x3d5e6d359b9a41e8L    # 4.3238798128379746E-13

    const-wide v3, -0x47bc22c3918d3bd4L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmHelper;->WISEPLAY_DRM_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getWidevineSupportMsg()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/hunantv/media/drm/MgtvDrmHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmHelper;->sWvSupportMsg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getWisePlaySupportMsg()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/hunantv/media/drm/MgtvDrmHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "ng"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static updateWidevineSupportMsg()V
    .locals 4

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmHelper;->sWvSupportMsg:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmHelper;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/media/MediaDrm;

    invoke-direct {v2, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    const/4 v0, 0x1

    const-string v1, "securityLevel"

    invoke-virtual {v2, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hunantv/media/drm/MgtvDrmHelper;->sWvSupportMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catch_0
    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmHelper;->sWvSupportMsg:Ljava/lang/String;

    :cond_1
    return-void
.end method
