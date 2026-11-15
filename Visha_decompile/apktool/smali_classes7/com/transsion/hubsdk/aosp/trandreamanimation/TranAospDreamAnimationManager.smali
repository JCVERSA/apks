.class public Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# static fields
.field private static final FAIL_MSG:Ljava/lang/String; = "Version below 3.1.1 does not have this interface, please implement it yourself"

.field private static final TAG:Ljava/lang/String; = "TranAospDreamAnimationManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAODCallBacksListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;",
            "Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

.field private final mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.app.DreamAnimationManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    return-object p0
.end method

.method private getUserId()I
    .locals 3

    const-string p0, "android.os.UserHandle"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "myUserId"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public isFeatureEnabled()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mContext:Landroid/content/Context;

    const-string v1, "dream_animation"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->sClassName:Ljava/lang/Class;

    const-string v2, "isFeatureEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :goto_1
    sget-object v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFeatureEnabled fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onUpdateAODState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->onUpdateAODState(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    .line 3
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->registerAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method registerCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    invoke-virtual {p1, p0, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->registerCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method registerCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->unRegisterAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method unRegisterCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    invoke-virtual {p1, p0, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->unRegisterCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method unRegisterCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
