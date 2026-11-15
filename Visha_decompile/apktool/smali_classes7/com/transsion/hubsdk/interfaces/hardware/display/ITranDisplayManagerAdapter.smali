.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract closeDualDisplay()V
.end method

.method public abstract closeDualDisplayForSelfie()V
.end method

.method public abstract executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract getCurSelfieDisplayId()I
.end method

.method public abstract getForcedUsingDisplayMode()I
.end method

.method public abstract getSecondaryDisplayId()I
.end method

.method public abstract getSourceConnectFlag()I
.end method

.method public abstract isDualDisplayForSelfie()Z
.end method

.method public abstract isTentMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract openDualDisplay()V
.end method

.method public abstract openDualDisplayForSelfie(Landroid/os/Bundle;)V
.end method

.method public abstract registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V
.end method

.method public abstract registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract setBrightness(IF)V
.end method

.method public abstract setTemporaryBrightness(IF)V
.end method

.method public abstract setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V
.end method

.method public abstract unRegisterPowerStateChangedListener(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
.end method

.method public abstract unregisterFlexButtonCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unregisterShoulderButtonCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unregisterSmartButtonCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unregisterTentModeCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method
