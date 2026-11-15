.class public interface abstract Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acquireGestureBlocker(I)Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract isGameModeEnable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract isOperationRejected(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract releaseGestureBlocker(Landroid/os/Binder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method
