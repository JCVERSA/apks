.class public Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;,
        Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;,
        Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospWindowManagerExt"

.field private static sClassIWindowManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassServiceManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mTranDisplayFoldListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;

.field private mTranGestureExclusionListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.view.IWindowManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->sClassIWindowManager:Ljava/lang/Class;

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->sClassServiceManager:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mTranDisplayFoldListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;

    return-void
.end method

.method private getWindowManager()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->sClassServiceManager:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->sClassServiceManager:Ljava/lang/Class;

    const-string v2, "window"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->sClassIWindowManager:Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->sClassIWindowManager:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;)V

    invoke-interface {v0, v1, p2}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dismissKeyguard fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public endCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;)V
    .locals 1

    :try_start_0
    iget-object p0, p1, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/IScrollCaptureConnection;->endCapture()Landroid/os/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endCapture fail\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBuffer(ILandroid/graphics/Rect;)Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;
    .locals 8

    new-instance p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidT()Z

    move-result v0

    const-string v1, "TranAospWindowManagerExt"

    if-nez v0, :cond_9

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "android.window.ScreenCapture$CaptureArgs$Builder"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setSourceCrop"

    const-class v6, Landroid/graphics/Rect;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, v0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v4, "build"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {p2, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2, v0, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newInstance fail:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    :goto_0
    const-string v0, "android.window.ScreenCapture"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createSyncCaptureListener"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getWindowManagerService"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "android.window.ScreenCapture$CaptureArgs"

    invoke-static {v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.window.ScreenCapture$ScreenCaptureListener"

    invoke-static {v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "captureDisplay"

    invoke-static {v6, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "getBuffer"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-static {p1, p2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getHardwareBuffer"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getColorSpace"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "containsSecureLayers"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "containsHdrLayers"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "asBitmap"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v5, p2, Landroid/hardware/HardwareBuffer;

    if-eqz v5, :cond_3

    check-cast p2, Landroid/hardware/HardwareBuffer;

    goto :goto_2

    :cond_3
    move-object p2, v2

    :goto_2
    instance-of v5, v0, Landroid/graphics/ColorSpace;

    if-eqz v5, :cond_4

    check-cast v0, Landroid/graphics/ColorSpace;

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_6
    instance-of v4, p1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    move-object v2, p1

    check-cast v2, Landroid/graphics/Bitmap;

    :cond_7
    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setColorSpace(Landroid/graphics/ColorSpace;)V

    invoke-virtual {p0, v1}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setContainsSecureLayers(Z)V

    invoke-virtual {p0, v3}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setContainsHdrLayers(Z)V

    invoke-virtual {p0, v2}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    return-object p0

    :cond_9
    :goto_5
    const-string p1, "This interface is not supported."

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDockedStackSide()I
    .locals 4

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->getWindowManager()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDockedStackSide"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public getInitialDisplayDensity(I)I
    .locals 3

    const-string p0, "android.view.WindowManagerGlobal"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getWindowManagerService"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "android.view.IWindowManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInitialDisplayDensity"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public notifyScreenshotListeners(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->getWindowManager()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "notifyScreenshotListeners"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mWindowManager:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public registerDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .locals 2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;-><init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mTranDisplayFoldListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerDisplayFoldListener fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
    .locals 2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;-><init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;)V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mTranGestureExclusionListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;

    invoke-interface {v0, v1, p2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerSystemGestureExclusionListener fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestImage(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/graphics/Rect;)V
    .locals 0

    :try_start_0
    iget-object p0, p1, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/IScrollCaptureConnection;->requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestImage fail\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public requestScrollCapture(Landroid/content/Context;ILandroid/os/IBinder;ILcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$2;

    invoke-direct {v0, p0, p5}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$2;-><init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V

    invoke-interface {p1, p2, p3, p4, v0}, Landroid/view/IWindowManager;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TranAospWindowManagerExt requestScrollCapture e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/view/Surface;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V
    .locals 1

    iget-object p1, p1, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;

    invoke-direct {v0, p0, p3}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;-><init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V

    invoke-interface {p1, p2, v0}, Landroid/view/IScrollCaptureConnection;->startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startCapture fail\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mTranDisplayFoldListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterDisplayFoldListener fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
    .locals 0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->mTranGestureExclusionListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterSystemGestureExclusionListener fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospWindowManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
