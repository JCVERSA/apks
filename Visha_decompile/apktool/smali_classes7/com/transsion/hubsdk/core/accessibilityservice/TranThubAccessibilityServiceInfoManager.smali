.class public Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAccessibilityServiceInfoManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "accessibility_service_info"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->lambda$getInstalledAccessibilityServiceList$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getInstalledAccessibilityServiceList$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAccessibilityService(Landroid/content/ComponentName;I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->addAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAccessibilityService:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCrashed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Liya;

    invoke-direct {v1, p0}, Liya;-><init>(Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;)V

    const-string p0, "accessibility_service_info"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object v0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstalledAccessibilityServiceList mAccessibilityServiceInfos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public removeAccessibilityService(Landroid/content/ComponentName;I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->removeAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAccessibilityService:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setService(Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    return-void
.end method
