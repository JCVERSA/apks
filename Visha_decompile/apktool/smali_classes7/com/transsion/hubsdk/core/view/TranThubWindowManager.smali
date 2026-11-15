.class public Lcom/transsion/hubsdk/core/view/TranThubWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWindowManager"


# instance fields
.field private mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

.field private mService:Lcom/transsion/hubsdk/view/ITranWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/view/ITranWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/ITranWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->lambda$setTrustedOverlay$1(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->lambda$setCutoutMode$2(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->lambda$setPrivateFlags$0(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    return-object p0
.end method

.method private synthetic lambda$setCutoutMode$2(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setPrivateFlags$0(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setTrustedOverlay$1(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppRefreshRate(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getAppRefreshRate(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "getAppRefreshRate RemoteException: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultRefreshRateConfigList()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getDefaultRefreshRateConfigList()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultRefreshRateConfigList RemoteException: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getFocusedWindowTitle()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getFocusedWindowTitle()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusedWindowTitle fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNoSupportApplicationInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getNoSupportApplicationInfo()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNoSupportApplicationInfo fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNonUltraSmallApps()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getNonUltraSmallApps()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNonUltraSmallApps fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0
.end method

.method public getRefreshRateConfigList()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getRefreshRateConfigList()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "getRefreshRateConfigList RemoteException: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getRootPinnedTaskPkgName()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getRootPinnedTaskPkgName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootPinnedTaskPkgName fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedScreenPkgName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getSharedScreenPkgName()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSharedScreenPkgName fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSwitchMode()I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getSwitchMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSwitchMode fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTopResumedActivityPkgName()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getTopResumedActivityPkgName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopResumedActivityPkgName fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTranPictureList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getTranPictureList(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranPictureList fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTranPictureSupportMode()[I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getTranPictureSupportMode()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTranPictureSupportMode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUltraSmallAppMode(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getUltraSmallAppMode(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUltraSmallAppMode fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasMultiWindowForXDR()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->hasMultiWindowForXDR()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMultiWindowForXDR RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hookWindowScene(III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/ITranWindowManager;->hookWindowScene(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hookWindowScene fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isKeyguardShowing()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->isKeyguardShowing()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKeyguardShowing fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKeyguardShowingAndNotOccluded fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOccluded()Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->isOccluded()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOccluded error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ld5b;

    invoke-direct {v1, p0, p1, p2}, Ld5b;-><init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public setOSFullDialog(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setOSFullDialog(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lc5b;

    invoke-direct {v1, p0, p1, p2}, Lc5b;-><init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setRefreshRateConfigList(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->setRefreshRateConfigList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "getRefreshRateConfigList RemoteException: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/view/ITranWindowManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    return-void
.end method

.method public setTranPictureMode(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/ITranWindowManager;->setTranPictureMode(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTranPictureMode fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lb5b;

    invoke-direct {v1, p0, p1}, Lb5b;-><init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public switchMode(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->switchMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMode fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tranScreenshotWallpaperLocked fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateNoSupportApplicationInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->updateNoSupportApplicationInfo(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNoSupportApplicationInfo fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateNonUltraSmallApps(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->updateNonUltraSmallApps(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNonUltraSmallApps fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
