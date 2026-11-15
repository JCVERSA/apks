.class public Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmManager;


# static fields
.field public static final VERSION:Ljava/lang/String; = "CBCS_1.0"

.field private static sInstance:Lcom/hunantv/media/drm/IDrmManager;


# instance fields
.field private volatile mErrorCode:Ljava/lang/String;

.field private volatile mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

.field private volatile mStatus:I

.field private wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mStatus:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hunantv/media/drm/IDrmManager;
    .locals 2

    const-class v0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;

    invoke-direct {v1}, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;-><init>()V

    sput-object v1, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;
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


# virtual methods
.method public bindWasabiDrmManager(Lcom/hunantv/media/drm/IDrmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    return-void
.end method

.method public genDrmSession(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)Lcom/hunantv/media/drm/IDrmSession;
    .locals 1

    new-instance v0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;

    invoke-direct {v0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;-><init>(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->bindWasabiDrmManager(Lcom/hunantv/media/drm/IDrmManager;)V

    return-object v0
.end method

.method public getCurrentStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mStatus:I

    return p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "CBCS_1.0"

    return-object p0
.end method

.method public init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->isInited()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->isIniting()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInited()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIniting()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()I
    .locals 0

    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/drm/LightPlayDrmManager;->release()V

    const/4 p0, 0x0

    return p0
.end method

.method public setOnInitListener(Lcom/hunantv/media/drm/IDrmManager$OnInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    return-void
.end method
