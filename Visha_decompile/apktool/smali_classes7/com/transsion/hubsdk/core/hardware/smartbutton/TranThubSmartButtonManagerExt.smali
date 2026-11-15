.class public Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranFlexButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranShoulderButtonCallback;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "tran_smart_button_ext"

.field private static final TAG:Ljava/lang/String; = "TranThubSmartButtonManagerExt"

.field private static sInstance:Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tran_smart_button_ext"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;
    .locals 2

    const-class v0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->sInstance:Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;-><init>()V

    sput-object v1, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->sInstance:Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->sInstance:Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;
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
.method public isFlexButtonHasListener()Z
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->isFlexButtonHasListener()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "isFlexButtonHasListener fail"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public notifyAllToFlexButton(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->notifyAllToFlexButton(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "notifyAllToFlexButton fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyAllToShoulderButton(IIIII)V
    .locals 7

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->notifyAllToShoulderButton(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "notifyAllToShoulderButton fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyAllToSmartButton()V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->notifyAllToSmartButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "notifyAllToSmartButton fail"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyFlexButtonBKey(II)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->notifyFlexButtonBKey(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "notifyFlexButtonBKey fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranFlexButtonCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranFlexButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranFlexButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranFlexButtonCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->registerFlexButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranFlexButtonCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "registerFlexButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranShoulderButtonCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranShoulderButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranShoulderButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranShoulderButtonCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->registerShoulderButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "registerShoulderButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->registerSmartButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "registerSmartButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterFlexButtonCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->unregisterFlexButtonCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "unregisterFlexButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterShoulderButtonCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->unregisterShoulderButtonCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "unregisterShoulderButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterSmartButtonCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->mService:Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/smartbutton/ITranSmartButtonManagerExt;->unregisterSmartButtonCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "unregisterSmartButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
