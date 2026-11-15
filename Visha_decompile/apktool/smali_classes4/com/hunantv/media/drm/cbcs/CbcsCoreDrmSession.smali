.class public Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;
    }
.end annotation


# static fields
.field private static final MULTIDRM_ORDER_0:[Ljava/util/UUID;

.field private static final MULTIDRM_ORDER_1:[Ljava/util/UUID;

.field private static final MULTIDRM_ORDER_9:[Ljava/util/UUID;

.field public static final STATUS_CLOSE:I = 0x9

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CbcsCoreDrmSession"

.field private static sMultiDrmOrder:[Ljava/util/UUID;

.field private static sMultiDrmOrderLocker:Ljava/lang/Object;

.field private static sSpecificMultiDrmOrder:[Ljava/util/UUID;

.field static sUseLightPlayDefaultValue:Z

.field private static useSpecificDrmOrder:Z


# instance fields
.field currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

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

.field private licenseListener:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;

.field locker:Ljava/lang/Object;

.field mPlayer:Lcom/hunantv/media/player/h;

.field multiDrmOrder:[Ljava/util/UUID;

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

.field selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

.field selectedLicenseUrl:Ljava/lang/String;

.field selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

.field selectedUUID:Ljava/util/UUID;

.field volatile status:I

.field useLightPlay:Z

.field wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    filled-new-array {v0, v1}, [Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_0:[Ljava/util/UUID;

    filled-new-array {v1, v0}, [Ljava/util/UUID;

    move-result-object v3

    sput-object v3, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_1:[Ljava/util/UUID;

    sget-object v3, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    filled-new-array {v3, v0, v1}, [Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_9:[Ljava/util/UUID;

    sput-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrder:[Ljava/util/UUID;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrderLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sSpecificMultiDrmOrder:[Ljava/util/UUID;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sUseLightPlayDefaultValue:Z

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

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    sget-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_0:[Ljava/util/UUID;

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->multiDrmOrder:[Ljava/util/UUID;

    sget-boolean v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sUseLightPlayDefaultValue:Z

    iput-boolean v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useLightPlay:Z

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->psshMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drmInfoList:Ljava/util/List;

    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getMultiDrmOrder()[Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->multiDrmOrder:[Ljava/util/UUID;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;)V
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
            "Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    sget-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_0:[Ljava/util/UUID;

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->multiDrmOrder:[Ljava/util/UUID;

    sget-boolean v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sUseLightPlayDefaultValue:Z

    iput-boolean v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useLightPlay:Z

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->psshMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drmInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;

    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getMultiDrmOrder()[Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->multiDrmOrder:[Ljava/util/UUID;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->isMarlinSelected()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseInner(Z)V

    return-void
.end method

.method private doLicenseFramework(Z)V
    .locals 8

    const-string v0, "CbcsCoreDrmSession"

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v3

    iput-object v3, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drmSessionId:[B

    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v4, v1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->rawData:[B

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    const-string v5, "video/mp4"

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "doLicense keyRequest is null"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/16 v2, 0xcd

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "keyid"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v6, v6, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {v2, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v6, v6, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/hunantv/media/drm/utils/Hex;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-static {v4}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getContentType(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLicense selectedUrl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,keyid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    new-instance v7, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$3;

    invoke-direct {v7, p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$3;-><init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)V

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: dolicense exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v1, Landroid/media/NotProvisionedException;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    const-string p1, "dolicense error try provision first"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doProvision()V

    goto :goto_4

    :cond_5
    const-string p1, "error: dolicense NotProvisionedException"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    :goto_4
    return-void

    :cond_6
    const/16 p1, 0xc8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    return-void
.end method

.method private doLicenseInner(Z)V
    .locals 5

    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    const-string v1, ""

    const-string v2, "CbcsCoreDrmSession"

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object v0, v0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    const-string v4, "4"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseFramework(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->isMarlinSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseMarlin(Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object p1, p1, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    const-string v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "lightplay selected"

    invoke-static {v2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/drm/LightPlayDrmManager;->isProvisioned()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseLightPlay(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doProvisionLightPlay()V

    :goto_0
    return-void

    :cond_7
    const/16 p1, 0xce

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "drm selected null"

    invoke-static {v2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xcb

    goto :goto_1

    :cond_9
    :goto_3
    return-void
.end method

.method private doLicenseLightPlay(Z)V
    .locals 6

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v0, v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "keyid"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/drm/LightPlayDrmManager;->openSession()Lcom/mgtv/drm/ILightPlayDrmSession;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    invoke-interface {v0}, Lcom/mgtv/drm/ILightPlayDrmSession;->getLicenseRequest()[B

    move-result-object v3

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-static {v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getContentType(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "CbcsCoreDrmSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doLicenseLightPlay selectedUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,keyid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$2;

    invoke-direct {v5, p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$2;-><init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)V

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method private declared-synchronized doLicenseListenerFailed(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;->onFailed(ILjava/lang/String;)V
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

.method private doLicenseMarlin(Z)V
    .locals 6

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->isMarlinSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iget-object v0, v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/hunantv/media/drm/utils/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, "keyid"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-static {v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getContentType(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "CbcsCoreDrmSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doLicense selectedUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,keyid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;

    invoke-direct {v5, p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;-><init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    :goto_2
    return-void
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

.method private getDrmInfo(Ljava/util/UUID;)Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drmInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    invoke-direct {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getDrmSolutionValueMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDrmSolutionValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sCommercialDrmSolutionValueMap:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useLightPlay:Z

    if-eqz p0, :cond_0

    sget-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sNonCommercialDrmSolutionValueMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public static getMultiDrmOrder()[Ljava/util/UUID;
    .locals 2

    sget-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useSpecificDrmOrder:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sSpecificMultiDrmOrder:[Ljava/util/UUID;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrder:[Ljava/util/UUID;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isMarlinSelected()Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isMarlinValid(Ljava/util/UUID;)Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->isInited()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private releaseDRM()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/drm/ILightPlayDrmSession;->close()V

    iput-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drmSessionId:[B

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    iput-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    :cond_2
    return-void
.end method

.method public static setMultiDrmOrder(I)V
    .locals 7

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sUseLightPlayDefaultValue:Z

    sget-object v1, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrderLocker:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/16 v3, 0x9

    if-eq p0, v3, :cond_0

    :try_start_0
    sget-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_0:[Ljava/util/UUID;

    sput-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrder:[Ljava/util/UUID;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sput-boolean v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sUseLightPlayDefaultValue:Z

    sget-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_9:[Ljava/util/UUID;

    sput-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrder:[Ljava/util/UUID;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->MULTIDRM_ORDER_1:[Ljava/util/UUID;

    sput-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrder:[Ljava/util/UUID;

    :goto_0
    sget-object v2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrder:[Ljava/util/UUID;

    if-eqz v2, :cond_3

    const-string v3, ""

    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "CbcsCoreDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMultiDrmOrder config order:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " MultiDrm Order :"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setSUseLightPlayDefaultValue(Z)V
    .locals 0

    sput-boolean p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sUseLightPlayDefaultValue:Z

    return-void
.end method

.method public static useSpecificDrmOrder(Z[Ljava/util/UUID;)V
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sMultiDrmOrderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useSpecificDrmOrder:Z

    sput-object p1, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->sSpecificMultiDrmOrder:[Ljava/util/UUID;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public autoSelectDrmSolution()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pssh auto select drm solution in. useLightPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useLightPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CbcsCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->psshMap:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_a

    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pssh contains marlin uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pssh contains chinadrm uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pssh contains widevine uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->multiDrmOrder:[Ljava/util/UUID;

    if-eqz v2, :cond_9

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pssh check uuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v5}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->isMarlinValid(Ljava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useLightPlay:Z

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_3
    invoke-direct {p0, v5}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getDrmInfo(Ljava/util/UUID;)Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v7, v6, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->isWidevineSupport()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->isPlayerSWDecoder()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string v5, "autoSelectDrmSolution widevine not support. continue next"

    :goto_1
    invoke-static {v1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iput-object v5, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedPssh:Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    iput-object v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object v0, v6, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pssh select uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pssh select url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoSelectDrmSolution drminfo invalid. drmInfo:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". continue next"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xd1

    const-string v1, "pssh not support"

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    goto :goto_5

    :cond_a
    const/16 v0, 0xd0

    const-string v1, "pssh empty"

    goto :goto_4

    :goto_5
    return-void
.end method

.method public bindMediaPlayer(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    return-void
.end method

.method public bindWasabiDrmManager(Lcom/hunantv/media/drm/IDrmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "CbcsCoreDrmSession"

    const-string v1, "close in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x9

    :try_start_0
    iput v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    invoke-direct {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->releaseDRM()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "CbcsCoreDrmSession"

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

    const-string v0, "CbcsCoreDrmSession"

    const-string v1, "doLicense in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseInner(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "CbcsCoreDrmSession"

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

.method public doProvision()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-static {v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getContentType(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->existParams(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "&"

    goto :goto_0

    :cond_1
    const-string v4, "?"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signedRequest="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/UrlUtil;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doProvision provisionUrl:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CbcsCoreDrmSession"

    invoke-static {v4, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$4;

    invoke-direct {v6, p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$4;-><init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V

    return-void

    :cond_2
    const/16 v0, 0xd2

    const-string v1, "provision"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public doProvisionLightPlay()V
    .locals 7

    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/drm/LightPlayDrmManager;->getProvisionRequest()[B

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    invoke-static {v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getContentType(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedLicenseUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doProvision provisionUrl:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CbcsCoreDrmSession"

    invoke-static {v5, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;

    invoke-direct {v6, p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;-><init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)V

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V

    return-void

    :cond_1
    const/16 v0, 0xd2

    const-string v1, "provision"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseListenerFailed(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDrmSessionId()[B
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->drmSessionId:[B

    return-object p0
.end method

.method public getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedDrmInfo:Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    return-object p0
.end method

.method public getSelectedUUID()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->selectedUUID:Ljava/util/UUID;

    return-object p0
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isMgtvDrmLibLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CbcsCoreDrmSession"

    const-string v1, "mgtvdrm lib load failed. not use"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->useLightPlay:Z

    :cond_0
    return-void
.end method

.method public isPlayerSWDecoder()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->u()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOnDoLicenseListener(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->licenseListener:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
