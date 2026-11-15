.class public Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;,
        Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;
    }
.end annotation


# static fields
.field public static final KEY_AOD_IS_SHOW:Ljava/lang/String; = "aod_is_show"

.field public static final KEY_SELECT_AOD_LIVEWALLPAPER:Ljava/lang/String; = "select_aod_livewallpaper_key"

.field private static final TAG:Ljava/lang/String; = "TranDreamAnimationManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

.field private mThubService:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDreamAnimationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mThubService:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mThubService:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDreamAnimationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mAospService:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mAospService:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    :cond_2
    return-object p1
.end method

.method public isFeatureEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->isFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public onUpdateAODState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->onUpdateAODState(I)V

    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V

    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V

    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

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
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V

    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V

    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void
.end method
