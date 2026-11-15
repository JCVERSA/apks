.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubInputManager"


# instance fields
.field private final mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/hubsdk/api/view/ITranGestureCallback;",
            "Lcom/transsion/hubsdk/view/ITranGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputEventListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;",
            "Lcom/transsion/hubsdk/view/ITranInputEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

.field private mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

.field private mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

.field private mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputEventListenerMap:Landroid/util/ArrayMap;

    const-string v0, "input"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$unregisterStylusKeyListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/view/ITranInputMonitor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$updateBackGestureRegion$3(Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/view/KeyEvent;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$singleKeyPanicBehaviorCheck$5(Landroid/view/KeyEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$registerStylusKeyListener$0(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$unregisterInputEventListener$12(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$tranPilferPointers$8(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$registerTranGestureMonitor$6(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getTranInputManager()Lcom/transsion/hubsdk/hardware/input/TranInputManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/hardware/input/TranInputManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$setTouchRegion$10(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$setBackGestureMode$4(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$registerInputEventListener$11(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$tranPilferPointersAwhile$9(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$setBackGestureResult$2(Landroid/os/IBinder;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$registerInputEventListener$11(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputEventListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {v1, v0, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->registerInputEventListener(Lcom/transsion/hubsdk/view/ITranInputEventListener;I)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputEventListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerInputEventListener: listener registered successfully, keycode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerInputEventListener: listener already registered, keycode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerInputEventListener e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerStylusKeyListener$0(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->registerStylusKeyListener(Lcom/transsion/hubsdk/view/inputmethod/ITranStylusKeyListener;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerTranGestureMonitor$6(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {v1, v0, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->registerTranGestureMonitor(Lcom/transsion/hubsdk/view/ITranGestureListener;Landroid/os/Bundle;)V

    sget-object p2, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string v0, "registerTranGestureMonitor: listener registered successfully"

    invoke-static {p2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string v0, "registerTranGestureMonitor: listener already registered"

    invoke-static {p2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerTranGestureMonitor e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBackGestureMode$4(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->setBackGestureMode(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBackGestureResult$2(Landroid/os/IBinder;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->setBackGestureResult(Landroid/os/IBinder;Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setTouchRegion$10(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->setTouchRegion(Lcom/transsion/hubsdk/view/ITranGestureListener;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTouchRegion e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$singleKeyPanicBehaviorCheck$5(Landroid/view/KeyEvent;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$tranPilferPointers$8(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->tranPilferPointers(Lcom/transsion/hubsdk/view/ITranGestureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tranPilferPointers e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$tranPilferPointersAwhile$9(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->tranPilferPointersAwhile(Lcom/transsion/hubsdk/view/ITranGestureListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tranPilferPointersAwhile e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterInputEventListener$12(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputEventListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/view/ITranInputEventListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->unregisterInputEventListener(Lcom/transsion/hubsdk/view/ITranInputEventListener;I)V

    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterInputEventListener: listener unregistered successfully, keycode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterInputEventListener: listener not found, keycode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterInputEventListener e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterStylusKeyListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->unregisterStylusKeyListener(Lcom/transsion/hubsdk/view/inputmethod/ITranStylusKeyListener;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterTranGestureMonitor$7(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mGestureListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/view/ITranGestureListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->unregisterTranGestureMonitor(Lcom/transsion/hubsdk/view/ITranGestureListener;)V

    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterTranGestureMonitor: listener unregistered successfully"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterTranGestureMonitor: listener not found in map"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTranGestureMonitor e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$updateBackGestureRegion$3(Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$unregisterTranGestureMonitor$7(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ignoreMultiWindowGesture()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->ignoreMultiWindowGesture()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->getTranInputManager()Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/TranInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p3, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;

    invoke-direct {p3, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p3, v1

    :goto_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "monitorGestureInput:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public registerInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ld3b;

    invoke-direct {v1, p0, p1, p2}, Ld3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lb3b;

    invoke-direct {v1, p0, p1}, Lb3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string p1, "registerStylusKeyListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, La3b;

    invoke-direct {v1, p0, p1, p2}, La3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/os/Bundle;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBackGestureMode(Z)V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lk3b;

    invoke-direct {v1, p0, p1}, Lk3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Z)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBackGestureResult(Landroid/os/IBinder;Z)V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lf3b;

    invoke-direct {v1, p0, p1, p2}, Lf3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Z)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/hardware/input/ITranInputManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    return-void
.end method

.method public setTouchRegion(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lh3b;

    invoke-direct {v1, p0, p1, p2}, Lh3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Landroid/graphics/Region;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ll3b;

    invoke-direct {v1, p0, p1}, Ll3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/view/KeyEvent;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public tranPilferPointers(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Le3b;

    invoke-direct {v1, p0, p1}, Le3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public tranPilferPointersAwhile(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lj3b;

    invoke-direct {v1, p0, p1, p2}, Lj3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;Z)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterInputEventListener(Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lz2b;

    invoke-direct {v1, p0, p1, p2}, Lz2b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Li3b;

    invoke-direct {v1, p0, p1}, Li3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterStylusKeyListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterTranGestureMonitor(Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lc3b;

    invoke-direct {v1, p0, p1}, Lc3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lg3b;

    invoke-direct {v1, p0, p1, p2}, Lg3b;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
