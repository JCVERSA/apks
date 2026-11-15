.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isFlexButtonHasListener()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract notifyAllToFlexButton(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract notifyAllToShoulderButton(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract notifyAllToSmartButton()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract notifyFlexButtonBKey(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranFlexButtonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranShoulderButtonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
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
