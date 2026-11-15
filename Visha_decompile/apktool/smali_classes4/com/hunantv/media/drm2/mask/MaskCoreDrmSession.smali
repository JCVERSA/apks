.class public Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;
    }
.end annotation


# static fields
.field public static final STATUS_CLOSE:I = 0x9

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MaskCoreDrmSession"


# instance fields
.field currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

.field drmInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private keyId:[B

.field private licenseListener:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

.field locker:Ljava/lang/Object;

.field mPlayer:Lcom/hunantv/media/player/h;

.field selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

.field selectedLicenseUrl:Ljava/lang/String;

.field volatile status:I


# direct methods
.method public constructor <init>([BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->keyId:[B

    iput-object p2, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->drmInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->init()V

    return-void
.end method

.method public constructor <init>([BLjava/util/List;Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;",
            "Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->keyId:[B

    iput-object p2, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->drmInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;)Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseInner(Z)V

    return-void
.end method

.method private doLicenseInner(Z)V
    .locals 2

    iget p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object p1, p1, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    const-string v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string p1, "MaskCoreDrmSession"

    const-string v1, "lightplay selected"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/drm/LightPlayDrmManager;->isProvisioned()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseLightPlay(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doProvisionLightPlay()V

    :goto_0
    return-void

    :cond_2
    const/16 p1, 0xce

    const-string v1, ""

    invoke-direct {p0, p1, v1, v0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private doLicenseLightPlay(Z)V
    .locals 8

    const/4 p1, 0x2

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->keyId:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    const-string v3, "MaskCoreDrmSession"

    if-eqz v0, :cond_2

    :try_start_1
    array-length v4, v0

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/drm/utils/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, "keyid"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/drm/LightPlayDrmManager;->openSession()Lcom/mgtv/drm/ILightPlayDrmSession;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    invoke-interface {v0}, Lcom/mgtv/drm/ILightPlayDrmSession;->getLicenseRequest()[B

    move-result-object v5

    invoke-static {}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->getContentType()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doLicenseLightPlay selectedUrl:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,keyid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const v1, 0x61b95

    invoke-direct {p0, v1, v2, v0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v7, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;

    invoke-direct {v7, p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;-><init>(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;)V

    const/4 v4, 0x1

    move-object v2, v6

    move-object v3, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doLicenseLightPlay keyid invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->keyId:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd8

    invoke-direct {p0, v0, v2, p1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0xc8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    :goto_2
    return-void
.end method

.method private declared-synchronized doLicenseListenerFailed(ILjava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    if-eq p3, v1, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const p3, 0x61da2

    goto :goto_0

    :cond_0
    const p3, 0x61da4

    goto :goto_0

    :cond_1
    const p3, 0x61da3

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p3, p1, p2}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;->onFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method private getDrmInfo(Ljava/lang/String;)Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
    .locals 3

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->drmInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaskCoreDrmSession"

    invoke-static {v2, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private releaseDRM()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/drm/ILightPlayDrmSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    :cond_0
    return-void
.end method


# virtual methods
.method public autoSelectDrmSolution()V
    .locals 3

    const-string v0, "pssh auto select drm solution in. "

    const-string v1, "MaskCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->drmInfoList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "6"

    invoke-direct {p0, v0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->getDrmInfo(Ljava/lang/String;)Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object v0, v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoSelectDrmSolution selectedLicenseUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xda

    const-string v1, "drm info invalid"

    goto :goto_0

    :cond_1
    const/16 v0, 0xd9

    const-string v1, "drm info empty"

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public bindMediaPlayer(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "MaskCoreDrmSession"

    const-string v1, "close in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x9

    :try_start_0
    iput v1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    invoke-direct {p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->releaseDRM()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "MaskCoreDrmSession"

    const-string v0, "close out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public doLicense()V
    .locals 2

    const-string v0, "MaskCoreDrmSession"

    const-string v1, "doLicense in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseInner(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "MaskCoreDrmSession"

    const-string v0, "doLicense out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public doProvisionLightPlay()V
    .locals 8

    iget v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->status:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/drm/LightPlayDrmManager;->getProvisionRequest()[B

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->getContentType()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doProvision provisionUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaskCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    const/4 v1, 0x0

    const v2, 0x61b95

    invoke-direct {p0, v2, v0, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    return-void

    :cond_1
    new-instance v7, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;

    invoke-direct {v7, p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;-><init>(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;)V

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V

    return-void

    :cond_2
    const/16 v0, 0xd2

    const-string v2, "provision"

    invoke-direct {p0, v0, v2, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    return-object p0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isMgtvDrmLibLoaded()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "MaskCoreDrmSession"

    const-string v0, "mgtvdrm lib load failed. not use"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnDoLicenseListener(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
