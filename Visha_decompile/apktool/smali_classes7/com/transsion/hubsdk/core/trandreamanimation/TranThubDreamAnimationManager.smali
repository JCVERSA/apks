.class public Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDreamAnimationManager"


# instance fields
.field private mAODCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;",
            "Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;",
            "Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

.field private mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;


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

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    new-instance v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    return-void
.end method


# virtual methods
.method public getTranDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    if-nez v0, :cond_0

    const-string v0, "dream_animation"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    return-object p0
.end method

.method public isFeatureEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->isFeatureEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureEnabled e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUpdateAODState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->getTranDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->onUpdateAODState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateAODState fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    .line 6
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;)V

    :cond_0
    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    .line 2
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V

    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string p1, "CallBack is not available while register."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance p2, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V

    .line 4
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    return-void
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    .line 6
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;)V

    .line 8
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string p1, "CallBack is not available while unregister."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;

    invoke-virtual {p2, v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
