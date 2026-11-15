.class public Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDragDropManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private toCommonCallback(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager$1;-><init>(Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V

    return-object v0
.end method


# virtual methods
.method public createDragStateListener(Landroid/content/Context;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "TranThubDragDropManager"

    const-string v1, "createDragStateListener"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->toCommonCallback(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->createDragStateListener(Landroid/content/Context;Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createDragStateListener(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 1

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createDragStateListener isListenerAppInner="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubDragDropManager"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->createDragStateListener(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDragDropLocation()[F
    .locals 1

    const-string p0, "TranThubDragDropManager"

    const-string v0, "getDragDropLocation"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->getDragDropLocation()[F

    move-result-object p0

    return-object p0
.end method

.method public getDragDropPkg()Ljava/lang/String;
    .locals 1

    const-string p0, "TranThubDragDropManager"

    const-string v0, "getDragDropPkg"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->getDragDropPkg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDragDropStatus(Landroid/content/Context;)I
    .locals 2

    const-string v0, "TranThubDragDropManager"

    const-string v1, "getDragDropStatus"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->getDragDropStatus(Landroid/content/Context;)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isDragDropStatus(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TranThubDragDropManager"

    const-string v1, "isDragDropStatus"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->isDragDropStatus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isSupportedDragDrop()Z
    .locals 1

    const-string p0, "TranThubDragDropManager"

    const-string v0, "isSupportedDragDrop"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->isSupportedDragDrop()Z

    move-result p0

    return p0
.end method

.method public isSupportedUpdateClipData(I)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportedUpdateClipData flags="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubDragDropManager"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->isSupportedUpdateClipData(I)Z

    move-result p0

    return p0
.end method

.method public setDragDropStatus(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDragDropStatus value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubDragDropManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->setDragDropStatus(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public setDragStateListener(Ljava/lang/Object;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    .locals 2

    const-string v0, "TranThubDragDropManager"

    const-string v1, "setDragStateListener"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->toCommonCallback(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/dragdrop/TranDragDropManager;->setDragStateListener(Ljava/lang/Object;Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;)V

    return-void
.end method
