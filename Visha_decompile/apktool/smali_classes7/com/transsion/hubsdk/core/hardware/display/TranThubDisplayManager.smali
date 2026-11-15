.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$DisplayEvent;
    }
.end annotation


# static fields
.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final EVENT_FLAG_DISPLAY_ADDED:J = 0x1L

.field public static final EVENT_FLAG_DISPLAY_CHANGED:J = 0x4L

.field public static final EVENT_FLAG_DISPLAY_REMOVED:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "TranThubDisplayManager"

.field private static sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# instance fields
.field private mArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

.field protected final mDualDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDualRegisteredEventsMask:J

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualRegisteredEventsMask:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mArrayMap:Landroid/util/ArrayMap;

    const-string v0, "display"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$getForcedUsingDisplayMode$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$getSourceConnectFlag$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$openDualDisplayForSelfie$3(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$registerPowerStateChangedCallback$7(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;IZLjava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$setTranAutoBrightnessTemporarily$6(IZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$isDualDisplayForSelfie$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private findDisplayListenerLocked(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    iget-object v2, v2, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic g(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$getCurSelfieDisplayId$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
    .locals 2

    const-class v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;-><init>()V

    sput-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
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

.method private static getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not get Looper for the UI thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic h(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$closeDualDisplayForSelfie$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$closeDualDisplayForSelfie$2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->closeDualDisplayForSelfie()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCurSelfieDisplayId$5()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getCurSelfieDisplayId()I

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

.method private synthetic lambda$getForcedUsingDisplayMode$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getForcedUsingDisplayMode()I

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

.method private synthetic lambda$getSourceConnectFlag$1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getSourceConnectFlag()I

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

.method private synthetic lambda$isDualDisplayForSelfie$4()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->isDualDisplayForSelfie()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$openDualDisplayForSelfie$3(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->openDualDisplayForSelfie(Landroid/os/Bundle;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerPowerStateChangedCallback$7(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;
    .locals 0

    new-instance p2, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;

    invoke-direct {p2, p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;)V

    return-object p2
.end method

.method private synthetic lambda$setTranAutoBrightnessTemporarily$6(IZLjava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerDualCallbackIfNeededLocked()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$1;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->updateDualCallbackIfNeededLocked()V

    :cond_0
    return-void
.end method

.method private updateDualCallbackIfNeededLocked()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    iget-wide v4, v4, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    or-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v2

    iget-wide v2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualRegisteredEventsMask:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    iget-object v3, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    invoke-interface {v2, v3, v0, v1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerDualCallbackWithEventMask(Lcom/transsion/hubsdk/hardware/display/ITranDisplayManagerCallback;J)V

    iput-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualRegisteredEventsMask:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public closeDualDisplay()V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->closeDualDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public closeDualDisplayForSelfie()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lu2b;

    invoke-direct {v1, p0}, Lu2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "executeSmartbuttonFunction fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCurSelfieDisplayId()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lq2b;

    invoke-direct {v1, p0}, Lq2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "getCurSelfieDisplayId"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getForcedUsingDisplayMode()I
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lr2b;

    invoke-direct {v1, p0}, Lr2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getForcedUsingDisplayMode result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSecondaryDisplayId()I
    .locals 4

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getSecondaryDisplayId()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecondaryDisplayId : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getSourceConnectFlag()I
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lw2b;

    invoke-direct {v1, p0}, Lw2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSourceConnectFlag result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public handleDualDisplayEvent(II)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->sendDualDisplayEvent(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDualDisplayForSelfie()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lp2b;

    invoke-direct {v1, p0}, Lp2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "isDualDisplayForSelfie"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isTentMode()Z
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->isTentMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public openDualDisplay()V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "openDualDisplay: 1"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->openDualDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public openDualDisplayForSelfie(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lt2b;

    invoke-direct {v1, p0, p1}, Lt2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Landroid/os/Bundle;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V
    .locals 5

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->findDisplayListenerLocked(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)I

    move-result v1

    const-wide/16 v2, 0x7

    if-gez v1, :cond_2

    invoke-static {p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-direct {v4, p1, p2, v2, v3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;-><init>(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Looper;J)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->registerDualCallbackIfNeededLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-virtual {p1, v2, v3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->setEventsMask(J)V

    :goto_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->updateDualCallbackIfNeededLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerFlexButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranFlexButtonCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "registerFlexButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mArrayMap:Landroid/util/ArrayMap;

    new-instance v1, Lv2b;

    invoke-direct {v1, p0, p1}, Lv2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerPowerStateChangedCallback(Lcom/transsion/hubsdk/hardware/display/ITranPowerStateChangedCallback;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPowerStateChangedCallback fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerShoulderButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "registerShoulderButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerSmartButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "registerSmartButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerTentModeCallback(Lcom/transsion/hubsdk/hardware/display/ITranTentModeCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setBrightness(IF)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->setBrightness(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBrightness : e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    return-void
.end method

.method public setTemporaryBrightness(IF)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTemporaryBrightness: e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ls2b;

    invoke-direct {v1, p0, p1, p2, p3}, Ls2b;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;IZLjava/lang/String;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterPowerStateChangedListener(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unRegisterPowerStateChangedListener(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterPowerStateChangedListener fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->findDisplayListenerLocked(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->clearEvents()V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->updateDualCallbackIfNeededLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterFlexButtonCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterFlexButtonCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterFlexButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterShoulderButtonCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterShoulderButtonCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterShoulderButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterSmartButtonCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterSmartButtonCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterSmartButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterTentModeCallback(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterTentModeCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
