.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;
    }
.end annotation


# static fields
.field private static final MAX_USER_SWITCH_OBSERVER_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TranThubActivityManager"


# instance fields
.field private final mActivityStartObserverMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioVolumeListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBloodOxygenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

.field private final mTaskStackListenerMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranTaskStackListener;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSwitchListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mActivityStartObserverMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mAudioVolumeListenerMap:Ljava/util/Map;

    const-string v0, "activity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$changeCompactionMem$27()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isMatchCurMemSelection$22()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isGameGuardSupport$31()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getSwapFileSizeList$23()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isMemoryEnoughToMF$26()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$registerAudioVolumeListener$36(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isEnabledHiber$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setAppMode$11(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setGameParam$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getLocale$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getTopActivityInfo$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getMemoryForMF$29()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$enableHiber$10(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isUxCompactionSupport$24()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$switchMemFusion$28()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$forceStopPackageNecessity$15(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getTargetFps$20(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isLowRamDeviceStatic$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$notifyInterceptUnknowSource$16(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$startUserInBackground$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getTranGameList$18(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isMemSettingEnterEnabled$21()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setCleanProtect$4(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$backgroundAllowlistUid$5(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->backgroundAllowlistUid(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$changeCompactionMem$27()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$enableHiber$10(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->enableHiber(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$forceStopPackageNecessity$15(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->forceStopPackageNecessity(Ljava/lang/String;II)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$gameSceneEnd$33(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->gameSceneEnd(Ljava/lang/String;Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$gameSceneStart$32(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityManager;->gameSceneStart(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAppListMode$12(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getAppListMode(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCleanProtectList$3()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getCleanProtectList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getLocale$7()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLocale()Lcom/transsion/hubsdk/internal/app/TranLocale;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/hubsdk/internal/app/TranLocale;->mLocale:Ljava/util/Locale;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMEMCList$19(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getMEMCList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMemoryForMF$29()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSwapFileSizeList$23()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTargetFps$20(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTargetFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTopActivityInfo$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTopActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTranGameList$18(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTranGameList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isEnabledHiber$9()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isEnabledHiber()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isGameGuardSupport$31()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isGameGuardSupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isInGameGuardProtectedList$30(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isInGameGuardProtectedList(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isLowRamDeviceStatic$2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isLowRamDeviceStatic()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isMatchCurMemSelection$22()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isMemSettingEnterEnabled$21()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isMemoryEnoughToMF$26()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isUxCompactionSupport$24()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isWhiteApp$13(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isWhiteApp(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$notifyInterceptUnknowSource$16(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->notifyInterceptUnknowSource(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerActivityStartObserver$35(Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V

    return-object v0
.end method

.method private synthetic lambda$registerAudioVolumeListener$36(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)V

    return-object v0
.end method

.method private synthetic lambda$registerBloodOxygenLedStateListener$34(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V

    return-object v0
.end method

.method private synthetic lambda$setAppMode$11(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppMode(II)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBlackListToSystem$14(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setBlackListToSystem(Ljava/util/List;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setCleanProtect$4(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCleanProtect(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setGameParam$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setGameParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setLedMusicPlay$8(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setLedMusicPlay(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$startUserInBackground$1(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startUserInBackground(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$switchMemFusion$28()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$switchUXCompaction$25()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterTaskStackListener$6(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/app/ITranTaskStackListener;

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterTaskStackListener(Lcom/transsion/hubsdk/app/ITranTaskStackListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isWhiteApp$13(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getCleanProtectList$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$gameSceneEnd$33(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setLedMusicPlay$8(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$registerActivityStartObserver$35(Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getAppListMode$12(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$switchUXCompaction$25()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getMEMCList$19(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$unregisterTaskStackListener$6(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isInGameGuardProtectedList$30(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$registerBloodOxygenLedStateListener$34(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$backgroundAllowlistUid$5(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setBlackListToSystem$14(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$gameSceneStart$32(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyToAppLockAsUser(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->applyToAppLockAsUser(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applyToAppLockAsUser error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public backgroundAllowlistUid(I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lrya;

    invoke-direct {v1, p0, p1}, Lrya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundAllowlistUid uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public calculateReclaimableMemory()J
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->calculateReclaimableMemory()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateReclaimableMemory error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public changeCompactionMem(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Ljya;

    invoke-direct {v0, p0}, Ljya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "window"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;

    invoke-direct {v2, p0, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)V

    invoke-interface {v0, p1, v2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->clearApplicationUserData(Ljava/lang/String;Lcom/transsion/hubsdk/app/ITranPackageDataObserver;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearApplicationUserData:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public doClean(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->doClean(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doClean:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public doClean(ZZZZ[I[Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 5
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/app/ITranActivityManager;->doOneKeyClean(ZZZZ[I[Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doClean error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableHiber(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lkya;

    invoke-direct {v1, p0, p1}, Lkya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "enableHiber"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopPackage fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public forceStopPackageNecessity(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lxya;

    invoke-direct {v1, p0, p1, p2, p3}, Lxya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;II)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "forceStopPackageNecessity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gameSceneEnd(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lsya;

    invoke-direct {v1, p0, p1, p2}, Lsya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "gameSceneEnd"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gameSceneStart(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Luya;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Luya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    const-string p0, "activity"

    invoke-virtual {v0, v7, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "gameSceneStart"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAppListMode(I)[I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lwya;

    invoke-direct {v1, p0, p1}, Lwya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getAppListMode"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getBackgroundRestrictionExemptionReason(I)I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBackgroundRestrictionExemptionReason error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getBloodOxygenLedState()I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getBloodOxygenLedState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBloodOxygenLedState error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCleanProtectList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lqza;

    invoke-direct {v1, p0}, Lqza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCleanProtectList mLists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getConfigurationExt(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getConfigurationExt(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigurationExt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCpuId(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getCpuId(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCpuId error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentUser()I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentUser fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getDisplayId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayId fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getJavaProcessRss()Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getJavaProcessRss()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJavaProcessRss error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKernelMemInfo()[J
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getKernelMemInfo()[J

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKernelMemInfo error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchedFromPackage fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchedFromUid fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getLightEffectInfos(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightEffectInfos(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightEffectInfos error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLightStyleDataBundle(I)Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightStyleDataBundle(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightStyleDataBundle error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public getLightStyleIdArray(I)[I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightStyleIdArray(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightStyleIdArray error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public getLightStyleIdData(I)[I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightStyleIdData(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightStyleIdData error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcza;

    invoke-direct {v1, p0}, Lcza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "getLocale"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getLockTaskModeState()I
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLockTaskModeState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockTaskModeState fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getMEMCList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lvya;

    invoke-direct {v1, p0, p1}, Lvya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getMEMCList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getMemoryForMF(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lpza;

    invoke-direct {v0, p0}, Lpza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getMemoryForMF"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getNativeProcessRss()Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getNativeProcessRss()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeProcessRss error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRealActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getRealActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRealActivity fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSwapFileSizeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Llza;

    invoke-direct {v1, p0}, Llza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "getSwapFileSizeList"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getTargetFps(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lfza;

    invoke-direct {v1, p0, p1, p2}, Lfza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p2, "getTargetFps"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTopActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lnza;

    invoke-direct {v1, p0}, Lnza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivityInfo mActivityInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getTopActivityType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTopActivityType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTopActivityType fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranAppmSystemInfo fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public getTranGameList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Leza;

    invoke-direct {v1, p0, p1}, Leza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getTranGameList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserId fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWindowingMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getWindowingMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hookDisturbStatus(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->hookDisturbStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookDisturbStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ignoreCPUAndMemoryPressureForPreload()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->ignoreCPUAndMemoryPressureForPreload()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreCPUAndMemoryPressureForPreload error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inMultiWindowMode(I)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->inMultiWindowMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inMultiWindowMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isEnabledHiber()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lpya;

    invoke-direct {v1, p0}, Lpya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isEnabledHiber"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isGameGuardSupport()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ltya;

    invoke-direct {v1, p0}, Ltya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isGameGuardSupport"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isInGameGuardProtectedList(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ldza;

    invoke-direct {v1, p0, p1}, Ldza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "isInGameGuardProtectedList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isInLockTaskMode()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isInLockTaskMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInLockTaskMode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLowRamDeviceStatic()Z
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Liza;

    invoke-direct {v1, p0}, Liza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLowRamDeviceStatic result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMatchCurMemSelection()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lzya;

    invoke-direct {v1, p0}, Lzya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isMatchCurMemSelection"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMemSettingEnterEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lqya;

    invoke-direct {v1, p0}, Lqya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isMemSettingEnterEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMemoryEnoughToMF(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lgza;

    invoke-direct {v0, p0}, Lgza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "isMemoryEnoughToMF"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRequestChangeParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isRequestChangeParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRequestChangeParams:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUserRunning(II)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isUserRunning(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUserRunning error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUxCompactionSupport()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lmya;

    invoke-direct {v1, p0}, Lmya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isUxCompactionSupport"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVisible fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWhiteApp(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Laza;

    invoke-direct {v1, p0, p1}, Laza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "isWhiteApp"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public notifyInterceptUnknowSource(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lnya;

    invoke-direct {v1, p0, p1}, Lnya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "notifyInterceptUnknowSource"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerActivityStartObserver([Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mActivityStartObserverMap:Landroid/util/ArrayMap;

    new-instance v2, Loza;

    invoke-direct {v2, p0}, Loza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerActivityStartObserver([Ljava/lang/String;Lcom/transsion/hubsdk/app/ITranActivityStartObserver;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerActivityStartObserver error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public registerAppRecoveryCallback(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerAppRecoveryCallback(Lcom/transsion/hubsdk/app/ITranAppRecoveryCallback;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "registerAppRecoveryCallback error"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mAudioVolumeListenerMap:Ljava/util/Map;

    new-instance v2, Lrza;

    invoke-direct {v2, p0}, Lrza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAudioVolumeListener error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public registerBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    new-instance v1, Loya;

    invoke-direct {v1, p0}, Loya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerBloodOxygenLedStateListener(Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "registerBloodOxygenLedStateListener error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerProcessObserver(Lcom/transsion/hubsdk/app/ITranProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerTaskStackListener(Lcom/transsion/hubsdk/app/ITranTaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTaskStackListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public registerTranNecessityServices(Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerTranNecessityServices(Lcom/transsion/hubsdk/internal/app/ITranNecessityWindowService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTranNecessityServices e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUserSwitchObserver mUserSwitchListenerMap.size() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerUserSwitchObserver(Lcom/transsion/hubsdk/app/ITranUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerUserSwitchObserver:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public reportAbnormalApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->reportAbnormalApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reportAbnormalApp error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public resetAllTest()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->resetAllTest()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAllTest error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resumeAppSwitches()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeAppSwitches error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMallocDebugSignal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->sendMallocDebugSignal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMallocDebugSignal error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAppForFixAdj(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppForFixAdj(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAppForFixAdj error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAppIdleForLimit(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppIdleForLimit(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAppIdleForLimit error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAppInCgroup(ILjava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppInCgroup(ILjava/lang/String;Z)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMemoryPresureLevel error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setAppMode(II)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ltza;

    invoke-direct {v1, p0, p1, p2}, Ltza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;II)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "setAppMode"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioPatch(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAudioPatch(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioPatch error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setBlackListToSystem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lbza;

    invoke-direct {v1, p0, p1}, Lbza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "setBlackListToSystem"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCleanProtect(Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Llya;

    invoke-direct {v1, p0, p1, p2}, Llya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCleanProtect result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setCpuPresureLevel(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCpuPresureLevel(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpuPresureLevel error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCpuSystemSence(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCpuSystemSence(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpuSystemSence error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCpuUsagePercentForKill(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCpuUsagePercentForKill(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpuUsagePercentForKill error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentActivityKeepAwake()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCurrentActivityKeepAwake()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentActivityKeepAwake fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setETControl(Ljava/lang/String;Z)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setETControl(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setETControl:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setGameParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lhza;

    invoke-direct {v1, p0, p1, p2, p3}, Lhza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p2, "setGameParam"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setLedMusicPlay(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lkza;

    invoke-direct {v1, p0, p1}, Lkza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "setLedMusicPlay"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLightingEffect([I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setLightingEffect([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "setLightingEffect error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setLightingScene(I[ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setLightingScene(I[ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p2, "setLightingScene error: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMemSystemSence(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setMemSystemSence(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMemSystemSence error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMemoryPresureLevel(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setMemoryPresureLevel(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMemoryPresureLevel error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setService(Lcom/transsion/hubsdk/app/ITranActivityManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method

.method public setTestMode(Z)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setTestMode(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTestMode error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startProfile(Landroid/os/UserHandle;)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startProfile(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProfile fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startTNE fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startUserInBackground(I)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lsza;

    invoke-direct {v1, p0, p1}, Lsza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUserInBackground result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public stopAppForUser(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->stopAppForUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopAppForUser error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public swipeUpClean(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->swipeUpClean(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "swipeUpClean error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public switchMemFusion(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lmza;

    invoke-direct {v0, p0}, Lmza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "window"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public switchUXCompaction(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Ljza;

    invoke-direct {v0, p0}, Ljza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "window"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public toggleFreeformWindowingMode(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->toggleFreeformWindowingMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleFreeformWindowingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public triggerCpuKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerCpuKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "triggerCpuKillAppForLimit error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerHealthBlockAppForLimit(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerHealthBlockAppForLimit(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerHealthBlockAppForLimit error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemAvailable(J)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemAvailable(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerMPSKByMemAvailable error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemAvailableExt(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemAvailableExt(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMPSKByMemAvailable with int error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemFree(J)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemFree(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerMPSKByMemFree error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemFreeExt(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemFreeExt(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMPSKByMemFree with int error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKBySwapFree(J)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKBySwapFree(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerMPSKBySwapFree error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKBySwapFreeExt(I)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKBySwapFreeExt(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMPSKBySwapFree with int error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMemPressureforSortKill()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMemPressureforSortKill()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerMemPressureforSortKill error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMemoryLowKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMemoryLowKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "triggerMemoryLowKillAppForLimit error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterAppRecoveryCallback(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unRegisterAppRecoveryCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterAppRecoveryCallback error"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback;

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unRegisterBloodOxygenLedStateListener(Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "unRegisterBloodOxygenLedStateListener error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {v1, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unRegisterProcessObserver(Lcom/transsion/hubsdk/app/ITranProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterActivityStartObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mActivityStartObserverMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterActivityStartObserver(Lcom/transsion/hubsdk/app/ITranActivityStartObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterActivityStartObserver error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mAudioVolumeListenerMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterAudioVolumeListener error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mAudioVolumeListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public unregisterTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lyya;

    invoke-direct {v1, p0, p1}, Lyya;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTaskStackListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterUserSwitchObserver(Lcom/transsion/hubsdk/app/ITranUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerUserSwitchObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
