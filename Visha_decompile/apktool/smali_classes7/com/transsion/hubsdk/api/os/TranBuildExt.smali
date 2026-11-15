.class public Lcom/transsion/hubsdk/api/os/TranBuildExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranBuildExt"

.field protected static sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

.field protected static sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;


# instance fields
.field private mReflectionHelper:Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;

    const-string v1, "com.transsion.hubsdk.os.TranBuild"

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->mReflectionHelper:Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;

    return-void
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;
    .locals 1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSettings"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_2
    return-object p0
.end method


# virtual methods
.method public getAicoreOfflineLlmSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getAicoreOfflineLlmSupport()I

    move-result p0

    return p0
.end method

.method public getApmLimitBlockModeSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getApmLimitBlockModeSupport()I

    move-result p0

    return p0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getBoardPlatform()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuildDisplayId()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getBuildDisplayId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getBuildNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChargingAnimationSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingAnimationSupport()I

    move-result p0

    return p0
.end method

.method public getChargingAnimationWirePowerSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingAnimationWirePowerSupport()I

    move-result p0

    return p0
.end method

.method public getChargingAnimationWirelessPowerSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingAnimationWirelessPowerSupport()I

    move-result p0

    return p0
.end method

.method public getChargingPowerHideSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingPowerHideSupport()I

    move-result p0

    return p0
.end method

.method public getChildModeOpenSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChildModeOpenSupport()I

    move-result p0

    return p0
.end method

.method public getChildmodeSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChildmodeSupport()I

    move-result p0

    return p0
.end method

.method public getDynamicallyStkIconSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getDynamicallyStkIconSupport()I

    move-result p0

    return p0
.end method

.method public getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->mReflectionHelper:Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->isFieldExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->TAG:Ljava/lang/String;

    const-string p1, "TranAospSettings"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_2
    return-object p0
.end method

.method public getFansOnSaleSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getFansOnSaleSupport()I

    move-result p0

    return p0
.end method

.method public getGeniexEntranceSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getGeniexEntranceSupport()I

    move-result p0

    return p0
.end method

.method public getGeniexSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getGeniexSupport()I

    move-result p0

    return p0
.end method

.method public getGotiiEntranceSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getGotiiEntranceSupport()I

    move-result p0

    return p0
.end method

.method public getKeyguardPovaThemeSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKeyguardPovaThemeSupport()I

    move-result p0

    return p0
.end method

.method public getKeyguardThemeSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKeyguardThemeSupport()I

    move-result p0

    return p0
.end method

.method public getKolunGoSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKolunGoSupport()I

    move-result p0

    return p0
.end method

.method public getKolunSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKolunSupport()I

    move-result p0

    return p0
.end method

.method public getNoteAiBgSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteAiBgSupport()I

    move-result p0

    return p0
.end method

.method public getNoteAiDrawSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteAiDrawSupport()I

    move-result p0

    return p0
.end method

.method public getNoteCanvasSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteCanvasSupport()I

    move-result p0

    return p0
.end method

.method public getNoteFansLinkSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteFansLinkSupport()I

    move-result p0

    return p0
.end method

.method public getNoteSuniaPenSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteSuniaPenSupport()I

    move-result p0

    return p0
.end method

.method public getOsCustomizedSplitScreenSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getOsCustomizedSplitScreenSupport()I

    move-result p0

    return p0
.end method

.method public getProductBrand()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getProductBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysOobeCountry()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getSysOobeCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysUserExperience()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getSysUserExperience()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranAiKeySupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAiKeySupport()I

    move-result p0

    return p0
.end method

.method public getTranAiSubtitlesSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAiSubtitlesSupport()I

    move-result p0

    return p0
.end method

.method public getTranAicoreLlmSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAicoreLlmSupport()I

    move-result p0

    return p0
.end method

.method public getTranAirTransferSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_AIR_TRANSFER_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAirTransferSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranAssistVoiceprint()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAssistVoiceprint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranBom()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranBom()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranChooserPrivacySupport()I
    .locals 1

    const-string v0, "TRAN_CHOOSER_PRIVACY_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranChooserPrivacySupport()I

    move-result p0

    return p0
.end method

.method public getTranCloudserverSupport()I
    .locals 1

    const-string v0, "TRAN_CLOUDSERVER_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranCloudserverSupport()I

    move-result p0

    return p0
.end method

.method public getTranCutepetSupport()I
    .locals 1

    const-string v0, "TRAN_CUTEPET_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranCutepetSupport()I

    move-result p0

    return p0
.end method

.method public getTranDualSysSupport()I
    .locals 1

    const-string v0, "TRAN_DUAL_SYS_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranDualSysSupport()I

    move-result p0

    return p0
.end method

.method public getTranDynamicbarSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_DYNAMICBAR_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranDynamicbarSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranEyeCareSupport()I
    .locals 1

    const-string v0, "TRAN_EYE_CARE_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranEyeCareSupport()I

    move-result p0

    return p0
.end method

.method public getTranFlipScreenSupport()I
    .locals 1

    const-string v0, "TRAN_FLIP_SCREEN_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranFlipScreenSupport()I

    move-result p0

    return p0
.end method

.method public getTranFoldableScreenSupport()I
    .locals 1

    const-string v0, "TRAN_FOLDABLE_SCREEN_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranFoldableScreenSupport()I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports10Support()I
    .locals 1

    const-string v0, "TRAN_GAME_TP_ESPORTS10_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGameTpEsports10Support()I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports20Support()I
    .locals 1

    const-string v0, "TRAN_GAME_TP_ESPORTS20_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGameTpEsports20Support()I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports30Support()I
    .locals 1

    const-string v0, "TRAN_GAME_TP_ESPORTS30_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGameTpEsports30Support()I

    move-result p0

    return p0
.end method

.method public getTranGlobalguideSupport()I
    .locals 1

    const-string v0, "TRAN_GLOBALGUIDE_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGlobalguideSupport()I

    move-result p0

    return p0
.end method

.method public getTranHrSpo2Support()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_HR_SPO2_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranHrSpo2Support()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranHrvStressSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_HRV_STRESS_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranHrvStressSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranLedCamonSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedCamonSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedControlCenterSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedControlCenterSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedEllaSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedEllaSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedGtSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedGtSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedHotSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedHotSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedItelsSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedItelsSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedNoteSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedNoteSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedPovaSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedPovaSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedSparkSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedSparkSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedSupport()I

    move-result p0

    return p0
.end method

.method public getTranLightningMultiWindowSupport()I
    .locals 1

    const-string v0, "TRAN_LIGHTNING_MULTI_WINDOW_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLightningMultiWindowSupport()I

    move-result p0

    return p0
.end method

.method public getTranMistouchSupport()I
    .locals 1

    const-string v0, "TRAN_MISTOUCH_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranMistouchSupport()I

    move-result p0

    return p0
.end method

.method public getTranOpenwithSupport()I
    .locals 1

    const-string v0, "TRAN_OPENWITH_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOpenwithSupport()I

    move-result p0

    return p0
.end method

.method public getTranOperatorBookmarkSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOperatorBookmarkSupport()I

    move-result p0

    return p0
.end method

.method public getTranOsType()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOsType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranOsVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOsVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPalmFind()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPalmFind()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPalmFind120()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPalmFind120()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPrivacyHubSupport()I
    .locals 1

    const-string v0, "TRAN_PRIVACY_HUB_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPrivacyHubSupport()I

    move-result p0

    return p0
.end method

.method public getTranProductPersonalizedDisplayFlipSupport()I
    .locals 1

    const-string v0, "TRAN_PRODUCT_PERSONALIZED_DISPLAY_FLIP_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranProductPersonalizedDisplayFlipSupport()I

    move-result p0

    return p0
.end method

.method public getTranPtRemoteLockSupport()I
    .locals 1

    const-string v0, "TRAN_PT_REMOTE_LOCK_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPtRemoteLockSupport()I

    move-result p0

    return p0
.end method

.method public getTranRepairModeSupport()I
    .locals 1

    const-string v0, "TRAN_REPAIR_MODE_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranRepairModeSupport()I

    move-result p0

    return p0
.end method

.method public getTranScreenrecordMicScaleLevel()I
    .locals 1

    const-string v0, "TRAN_SCREENRECORD_MIC_SCALE_LEVEL"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranScreenrecordMicScaleLevel()I

    move-result p0

    return p0
.end method

.method public getTranScreenrecordSrSaSupport()I
    .locals 1

    const-string v0, "TRAN_SCREENRECORD_SR_SA_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranScreenrecordSrSaSupport()I

    move-result p0

    return p0
.end method

.method public getTranScreenshotSupport()I
    .locals 1

    const-string v0, "TRAN_SCREENSHOT_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranScreenshotSupport()I

    move-result p0

    return p0
.end method

.method public getTranSensorIrLedBack()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_SENSOR_IR_LED_BACK"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSensorIrLedBack()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSliderPanelSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_SLIDER_PANEL_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSliderPanelSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSmartRecognitionSupport()I
    .locals 1

    const-string v0, "TRAN_SMART_RECOGNITION_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSmartRecognitionSupport()I

    move-result p0

    return p0
.end method

.method public getTranSmartpanelSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_SMARTPANEL_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSmartpanelSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSpaceSaver()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSpaceSaver()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSplitScreenSnapModeSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSplitScreenSnapModeSupport()I

    move-result p0

    return p0
.end method

.method public getTranSplitScreenTBSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSplitScreenTBSupport()I

    move-result p0

    return p0
.end method

.method public getTranStkAthenaSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranStkAthenaSupport()I

    move-result p0

    return p0
.end method

.method public getTranStkMpesaSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranStkMpesaSupport()I

    move-result p0

    return p0
.end method

.method public getTranSwMarket()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSwMarket()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranUltraPowerSaveSupport()I
    .locals 1

    const-string v0, "TRAN_ULTRA_POWER_SAVE_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranUltraPowerSaveSupport()I

    move-result p0

    return p0
.end method

.method public getTranVendorHrSpo2Timemillis()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_VENDOR_HR_SPO2_TIMEMILLIS"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVendorHrSpo2Timemillis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranVendorVib30Support()Ljava/lang/String;
    .locals 1

    const-string v0, "TRAN_VENDOR_VIB30_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVendorVib30Support()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranVibrate10Support()I
    .locals 1

    const-string v0, "TRAN_VIBRATE10_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVibrate10Support()I

    move-result p0

    return p0
.end method

.method public getTranVibrate20Support()I
    .locals 1

    const-string v0, "TRAN_VIBRATE20_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVibrate20Support()I

    move-result p0

    return p0
.end method

.method public getTrancareUxdetectorRestSupport()I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTrancareUxdetectorRestSupport()I

    move-result p0

    return p0
.end method

.method public isAssistOnlineSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isAssistOnlineSupport()Z

    move-result p0

    return p0
.end method

.method public isFaceIdHalSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isFaceIdHalSupport()Z

    move-result p0

    return p0
.end method

.method public isOmdHifiSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isOmdHifiSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneAnimation60hzSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAiphoneAnimation60hzSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneSummarySupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAiphoneSummarySupport()Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAiphoneSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistHighpowerWakeupSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistHighpowerWakeupSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistPowerWakeupSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistPowerWakeupSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistVoiceprintDynamicHotwordSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistVoiceprintDynamicHotwordSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistVowDualmicSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistVowDualmicSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistVowSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistVowSupport()Z

    move-result p0

    return p0
.end method

.method public isTranDragdropSupport()Z
    .locals 1

    const-string v0, "TRAN_DRAGDROP_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranDragdropSupport()Z

    move-result p0

    return p0
.end method

.method public isTranRealvib05Support()Z
    .locals 1

    const-string v0, "TRAN_REALVIB05_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranRealvib05Support()Z

    move-result p0

    return p0
.end method

.method public isTranVibrate30ZSupport()Z
    .locals 1

    const-string v0, "TRAN_VIBRATE30_Z_SUPPORT"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranVibrate30ZSupport()Z

    move-result p0

    return p0
.end method

.method public isVendorHifiSupport()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isVendorHifiSupport()Z

    move-result p0

    return p0
.end method
