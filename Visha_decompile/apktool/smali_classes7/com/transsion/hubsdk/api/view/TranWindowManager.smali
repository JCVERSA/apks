.class public Lcom/transsion/hubsdk/api/view/TranWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/TranWindowManager$TranLayoutParams;
    }
.end annotation


# static fields
.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final NORMAL_DISPLAY_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TranWindowManager"

.field public static final TRANSIT_FIRST_CUSTOM:I = 0xc

.field public static final TRANSIT_THUNDER_BACK_CLOSE:I = 0x21

.field public static final TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final ULTRA_SMALL_DISPLAY_MODE:I = 0x2


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowManager;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;


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
.method public getAppRefreshRate(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getAppRefreshRate(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultRefreshRateConfigList()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getDefaultRefreshRateConfigList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedWindowTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getFocusedWindowTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoSupportApplicationInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getNoSupportApplicationInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNonUltraSmallApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getNonUltraSmallApps()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layoutParams is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRefreshRateConfigList()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getRefreshRateConfigList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRootPinnedTaskPkgName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getRootPinnedTaskPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubWindowManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManager;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManager;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWindowManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManager;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospWindowManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospWindowManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManager;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowManager;

    :cond_2
    return-object p1
.end method

.method public getSharedScreenPkgName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getSharedScreenPkgName()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchMode()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getSwitchMode()I

    move-result p0

    return p0
.end method

.method public getTopResumedActivityPkgName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getTopResumedActivityPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPictureList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getTranPictureList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTranPictureSupportMode()[I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getTranPictureSupportMode()[I

    move-result-object p0

    return-object p0
.end method

.method public getUltraSmallAppMode(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->getUltraSmallAppMode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasMultiWindowForXDR()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->hasMultiWindowForXDR()Z

    move-result p0

    return p0
.end method

.method public hookWindowScene(III)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->hookWindowScene(III)V

    return-void
.end method

.method public isKeyguardShowing()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->isKeyguardShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    return p0
.end method

.method public isOccluded()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->isOccluded()Z

    move-result p0

    return p0
.end method

.method public setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layoutParams is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOSFullDialog(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setOSFullDialog(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LayoutParams is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRefreshRateConfigList(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setRefreshRateConfigList(Ljava/lang/String;)V

    return-void
.end method

.method public setTranPictureMode(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setTranPictureMode(ILjava/lang/String;)V

    return-void
.end method

.method public setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WindowManager.LayoutParams is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchMode(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->switchMode(I)V

    return-void
.end method

.method public tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public updateNoSupportApplicationInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->updateNoSupportApplicationInfo(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appList is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateNonUltraSmallApps(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;->updateNonUltraSmallApps(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appList is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
