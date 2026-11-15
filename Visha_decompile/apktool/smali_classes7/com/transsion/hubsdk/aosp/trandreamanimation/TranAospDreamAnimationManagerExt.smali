.class public Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;,
        Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospDreamAnimationManagerExt"


# instance fields
.field private final mAospAODCallBackList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;",
            "Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

.field private mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

.field private final mTranCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->getDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mContext:Landroid/content/Context;

    const-string p1, "dream_animation"

    invoke-static {p1}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    return-object p0
.end method

.method private static synthetic lambda$registerAODCallback$0(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;->onUpdateAODState(I)V

    return-void
.end method


# virtual methods
.method public onUpdateAODState(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->onUpdateAODState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateAODState fail:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospDreamAnimationManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V
    .locals 3

    const-string v0, "TranAospDreamAnimationManagerExt"

    if-nez p1, :cond_0

    const-string p0, "CallBack is not available while register."

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcwa;

    invoke-direct {v1, p1}, Lcwa;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;)V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerAODCallback fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "TranAospDreamAnimationManagerExt"

    const-string p1, "CallBack is not available while register."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

    invoke-interface {p1, p0, p2}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "TranAospDreamAnimationManagerExt"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V
    .locals 3

    const-string v0, "TranAospDreamAnimationManagerExt"

    if-nez p1, :cond_0

    const-string p0, "CallBack is not available while register."

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;

    invoke-virtual {v1, v2, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerAODCallback fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "TranAospDreamAnimationManagerExt"

    const-string p1, "CallBack is not available while unRegister."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

    invoke-interface {p1, p0, p2}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "TranAospDreamAnimationManagerExt"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCallback fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
