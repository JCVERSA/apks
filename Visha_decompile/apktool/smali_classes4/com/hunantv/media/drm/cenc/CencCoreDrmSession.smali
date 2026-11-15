.class public Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;
    }
.end annotation


# static fields
.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CencCoreDrmSession"

.field private static final sCandidateDRMSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field drm:Landroid/media/MediaDrm;

.field drmInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;"
        }
    .end annotation
.end field

.field drmSessionId:[B

.field private licenseListener:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

.field locker:Ljava/lang/Object;

.field psshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;"
        }
    .end annotation
.end field

.field selectedLicenseUrl:Ljava/lang/String;

.field selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

.field selectedUUID:Ljava/util/UUID;

.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$1;

    invoke-direct {v0}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$1;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->sCandidateDRMSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->locker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->status:I

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->psshMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmInfoList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectDrmSolution(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;",
            "Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->locker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->status:I

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->psshMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectDrmSolution(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;)Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized doLicenseListenerFailed(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->status:I

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static getContentType(Ljava/util/UUID;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "text/xml"

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "application/octet-stream"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "application/json"

    :goto_1
    return-object p0
.end method

.method private getLicenseUrl(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sCommercialDrmSolutionValueMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private selectDrmSolution(Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_6

    sget-object p2, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "CencCoreDrmSession"

    if-eqz p2, :cond_0

    const-string p2, "pssh contains marlin uuid"

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "pssh contains chinadrm uuid"

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p2, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "pssh contains widevine uuid"

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p2, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->sCandidateDRMSet:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->getLicenseUrl(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iput-object v2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "pssh select"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 p1, 0xd1

    const-string p2, "pssh not support"

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 p1, 0xd0

    const-string p2, "pssh empty"

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const-string v0, "CencCoreDrmSession"

    const-string v1, "close in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drm:Landroid/media/MediaDrm;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmSessionId:[B

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    iput-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drm:Landroid/media/MediaDrm;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "CencCoreDrmSession"

    const-string v0, "close out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public doLicense()V
    .locals 9

    const-string v0, "CencCoreDrmSession"

    const-string v1, "doLicense in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v4

    iput-object v4, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmSessionId:[B

    iget-object v1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v5, v1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->rawData:[B

    iget-object v3, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drm:Landroid/media/MediaDrm;

    const-string v6, "video/mp4"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "CencCoreDrmSession"

    const-string v2, "doLicense keyRequest is null"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/16 v2, 0xcd

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v4, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "key"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-static {v4}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->getContentType(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CencCoreDrmSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doLicense selectedUrl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    new-instance v7, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;

    invoke-direct {v7, p0}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;-><init>(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;)V

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V

    goto :goto_2

    :cond_4
    const-string v1, "CencCoreDrmSession"

    const-string v2, "error: request license not support yet"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/16 v2, 0xce

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_4
    const-string v2, "CencCoreDrmSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: dolicense exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p0, "CencCoreDrmSession"

    const-string v0, "doLicense out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    :try_start_5
    const-string v1, "CencCoreDrmSession"

    const-string v2, "drm selected null"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/16 v2, 0xcb

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public getDrmSessionId()[B
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmSessionId:[B

    return-object p0
.end method

.method public getSelectedUUID()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    return-object p0
.end method

.method public setOnDoLicenseListener(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
