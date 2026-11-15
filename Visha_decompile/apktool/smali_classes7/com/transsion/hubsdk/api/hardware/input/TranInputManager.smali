.class public Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    :cond_2
    return-object p1
.end method

.method public ignoreMultiWindowGesture()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->ignoreMultiWindowGesture()Z

    move-result p0

    return p0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public registerInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->registerInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerInputEventListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerStylusKeyListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->registerTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerTranGestureMonitor() parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackGestureMode(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->setBackGestureMode(Z)V

    return-void
.end method

.method public setBackGestureResult(Landroid/os/IBinder;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->setBackGestureResult(Landroid/os/IBinder;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameter inputChannelToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTouchRegion(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->setTouchRegion(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "setTouchRegion() parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public tranPilferPointers(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->tranPilferPointers(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tranPilferPointers() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tranPilferPointersAwhile(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->tranPilferPointersAwhile(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tranPilferPointersAwhile() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->unregisterInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unregisterInputEventListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unregisterStylusKeyListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->unregisterTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unregisterTranGestureMonitor() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
