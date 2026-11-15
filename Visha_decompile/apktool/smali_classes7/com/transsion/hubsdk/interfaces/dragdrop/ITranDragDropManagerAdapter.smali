.class public interface abstract Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createDragStateListener(Landroid/content/Context;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract createDragStateListener(Landroid/content/Context;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract getDragDropLocation()[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract getDragDropPkg()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract getDragDropStatus(Landroid/content/Context;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract isDragDropStatus(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract isSupportedDragDrop()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract isSupportedUpdateClipData(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract setDragDropStatus(Landroid/content/Context;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract setDragStateListener(Ljava/lang/Object;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method
