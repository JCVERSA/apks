.class public interface abstract Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isFeatureEnabled()Z
.end method

.method public abstract onUpdateAODState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method
