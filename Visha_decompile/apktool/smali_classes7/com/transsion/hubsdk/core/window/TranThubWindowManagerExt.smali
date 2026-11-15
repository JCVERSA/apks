.class public Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;,
        Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;,
        Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWindowManagerExt"


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

.field private mTranDisplayFoldListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;

.field private mTranGestureExclusionListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mTranGestureExclusionListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mTranDisplayFoldListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;

    const-string v0, "window"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/view/ITranWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/ITranWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->lambda$notifyScreenshotListeners$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->lambda$getInitialDisplayDensity$2(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;ILandroid/graphics/Rect;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->lambda$getBuffer$0(ILandroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->lambda$getDockedStackSide$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getBuffer$0(ILandroid/graphics/Rect;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getBuffer(ILandroid/graphics/Rect;)Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getDockedStackSide$3()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getDockedStackSide()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getInitialDisplayDensity$2(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getInitialDisplayDensity(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyScreenshotListeners$1(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;-><init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/view/ITranWindowManager;->dismissKeyguard(Lcom/transsion/hubsdk/internal/policy/ITranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dismissKeyguard fail"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public endCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;)V
    .locals 0

    return-void
.end method

.method public getBuffer(ILandroid/graphics/Rect;)Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Le5b;

    invoke-direct {v1, p0, p1, p2}, Le5b;-><init>(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;ILandroid/graphics/Rect;)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;

    new-instance p1, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;-><init>()V

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    const-string p2, "TranScreenshotHardwareBuffer is null"

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setColorSpace(Landroid/graphics/ColorSpace;)V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setContainsSecureLayers(Z)V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setContainsHdrLayers(Z)V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBuffer mTranScreenshotHardwareBuffer:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getDockedStackSide()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lg5b;

    invoke-direct {v1, p0}, Lg5b;-><init>(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getInitialDisplayDensity(I)I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lf5b;

    invoke-direct {v1, p0, p1}, Lf5b;-><init>(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;I)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public notifyScreenshotListeners(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lh5b;

    invoke-direct {v1, p0, p1}, Lh5b;-><init>(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;I)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public registerDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;-><init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mTranDisplayFoldListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->registerDisplayFoldListener(Lcom/transsion/hubsdk/view/ITranDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDisplayFoldListener fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;-><init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mTranGestureExclusionListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/view/ITranWindowManager;->registerSystemGestureExclusionListener(Lcom/transsion/hubsdk/view/ITranSystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerSystemGestureExclusionListener fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public requestImage(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public requestScrollCapture(Landroid/content/Context;ILandroid/os/IBinder;ILcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V
    .locals 0

    return-void
.end method

.method public startCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/view/Surface;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V
    .locals 0

    return-void
.end method

.method public unregisterDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mTranDisplayFoldListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->unregisterDisplayFoldListener(Lcom/transsion/hubsdk/view/ITranDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterDisplayFoldListener fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->mTranGestureExclusionListener:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1, p0, p2}, Lcom/transsion/hubsdk/view/ITranWindowManager;->unregisterSystemGestureExclusionListener(Lcom/transsion/hubsdk/view/ITranSystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerSystemGestureExclusionListener fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
