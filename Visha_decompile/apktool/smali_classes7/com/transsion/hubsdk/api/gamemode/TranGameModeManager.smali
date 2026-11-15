.class public Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GESTURE_TYPE_OS_GESTURE:I = 0x2

.field public static final GESTURE_TYPE_SYSTEM:I = 0x1

.field public static final GESTURE_TYPE_SYSTEM_SHOW_NAV_BAR:I = 0x8

.field public static final GESTURE_TYPE_SYSTEM_SHOW_STATUS_BAR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TranGameModeManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospGameModeManager;

.field private final mContext:Landroid/content/Context;

.field private mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public acquireGestureBlocker(I)Landroid/os/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;->acquireGestureBlocker(I)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospGameModeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospGameModeManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/gamemode/TranAospGameModeManager;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/aosp/gamemode/TranAospGameModeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospGameModeManager;

    :cond_2
    return-object p1
.end method

.method public isGameModeEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;->isGameModeEnable()Z

    move-result p0

    return p0
.end method

.method public isOperationRejected(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;->isOperationRejected(I)Z

    move-result p0

    return p0
.end method

.method public releaseGestureBlocker(Landroid/os/Binder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranGameModeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;->releaseGestureBlocker(Landroid/os/Binder;)V

    return-void
.end method
