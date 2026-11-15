.class public Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospInputManager"


# instance fields
.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputMonitor:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;Landroid/view/InputEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->lambda$monitorGestureInput$0(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;Landroid/view/InputEvent;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputMonitor:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    return-object p0
.end method

.method private static synthetic lambda$monitorGestureInput$0(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;Landroid/view/InputEvent;)V
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;->handleInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInputEvent fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public ignoreMultiWindowGesture()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ignoreMultiWindowGesture"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string v1, "ignoreMultiWindowGesture not exist."

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/InputEvent;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "injectInputEvent"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "monitorGestureInput"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    new-instance v0, Lhwa;

    invoke-direct {v0, p3}, Lhwa;-><init>(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)V

    invoke-direct {p2, p1, v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;-><init>(Ljava/lang/Object;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;)V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputMonitor:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;-><init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method registerInputEventListener"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 0

    return-void
.end method

.method public registerTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method registerTranGestureMonitor"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackGestureMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBackGestureMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBackGestureResult(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBackGestureResult"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTouchRegion(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method setTouchRegion"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleKeyPanicBehaviorCheck"

    const-class v2, Landroid/view/KeyEvent;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "singleKeyPanicBehaviorCheck not exist."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public tranPilferPointers(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method tranPilferPointers"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public tranPilferPointersAwhile(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method tranPilferPointersAwhile"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method unregisterInputEventListener"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 0

    return-void
.end method

.method public unregisterTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not find method unregisterTranGestureMonitor"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    const-class v2, Landroid/graphics/Region;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateBackGestureRegion"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
