.class public Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDisplayManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeDualDisplay()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->closeDualDisplay()V

    return-void
.end method

.method public closeDualDisplayForSelfie()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->closeDualDisplayForSelfie()V

    return-void
.end method

.method public executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkg or shortcut must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurSelfieDisplayId()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getCurSelfieDisplayId()I

    move-result p0

    return p0
.end method

.method public getForcedUsingDisplayMode()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getForcedUsingDisplayMode()I

    move-result p0

    return p0
.end method

.method public getSecondaryDisplayId()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getSecondaryDisplayId()I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->getInstance()Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDisplayManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

    :cond_2
    return-object p1
.end method

.method public getSourceConnectFlag()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getSourceConnectFlag()I

    move-result p0

    return p0
.end method

.method public isDualDisplayForSelfie()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->isDualDisplayForSelfie()Z

    move-result p0

    return p0
.end method

.method public isTentMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->isTentMode()Z

    move-result p0

    return p0
.end method

.method public openDualDisplay()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->openDualDisplay()V

    return-void
.end method

.method public openDualDisplayForSelfie(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->openDualDisplayForSelfie(Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bundle state cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No interface,please implement yourself: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tag must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33321:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBrightness(IF)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->setBrightness(IF)V

    return-void
.end method

.method public setTemporaryBrightness(IF)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Reason must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterPowerStateChangedListener(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unRegisterPowerStateChangedListener(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No interface,please implement yourself: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tag must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V

    return-void
.end method

.method public unregisterFlexButtonCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterFlexButtonCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterShoulderButtonCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterShoulderButtonCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSmartButtonCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33321:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterSmartButtonCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterTentModeCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterTentModeCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
