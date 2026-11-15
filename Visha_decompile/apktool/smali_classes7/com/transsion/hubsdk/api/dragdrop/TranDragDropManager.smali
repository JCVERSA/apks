.class public Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;
    }
.end annotation


# static fields
.field public static final ACTION_DRAG_STATE:Ljava/lang/String; = "tran.intent.action.DRAG_STATE"

.field public static final DRAG_FLAG_UPDATE:I = 0x10000000

.field public static final DRAG_STATE_ACCEPTABLE:I = 0x1

.field public static final DRAG_STATE_APP_INNER:I = 0x4

.field public static final DRAG_STATE_DROP_ERROR:I = 0x10

.field public static final DRAG_STATE_ENDED:I = 0x3

.field public static final DRAG_STATE_UNACCEPTABLE:I = 0x2

.field public static final DRAG_STATE_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "os.dragdrop"

.field public static final VALUE_DRAGDROP_OFF:I = 0x0

.field public static final VALUE_DRAGDROP_ON:I = 0x1


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/dragdrop/TranAospDragDropManager;

.field private final mContext:Landroid/content/Context;

.field private mDragStateListener:Ljava/lang/Object;

.field private mThubService:Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDragDropLocation()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string v0, "getDragDropLocation: not supported"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->getDragDropLocation()[F

    move-result-object p0

    return-object p0
.end method

.method public getDragDropPkg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string v0, "getDragDropPkg: not supported"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->getDragDropPkg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDragDropStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string v0, "getDragDropStatus: not supported"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->getDragDropStatus(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mThubService:Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mThubService:Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;

    :cond_0
    return-object p1

    :cond_1
    const-class p1, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranAospDragDropManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mAospService:Lcom/transsion/hubsdk/aosp/dragdrop/TranAospDragDropManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/dragdrop/TranAospDragDropManager;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/aosp/dragdrop/TranAospDragDropManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mAospService:Lcom/transsion/hubsdk/aosp/dragdrop/TranAospDragDropManager;

    :cond_2
    return-object p1
.end method

.method public isDragDropStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string v0, "isDragDropStatus: not supported"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->isDragDropStatus(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSupportedDragDrop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string v0, "isSupportedDragDrop: not supported"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->isSupportedDragDrop()Z

    move-result p0

    return p0
.end method

.method public isSupportedUpdateClipData(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string p1, "isSupportedUpdateClipData: not supported"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->isSupportedUpdateClipData(I)Z

    move-result p0

    return p0
.end method

.method public registerDragStateListener(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string p0, "os.dragdrop"

    const-string p1, "registerDragStateListener: not supported"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->createDragStateListener(Landroid/content/Context;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mDragStateListener:Ljava/lang/Object;

    return-void
.end method

.method public registerDragStateListener(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string p0, "os.dragdrop"

    const-string p1, "registerDragStateListener(boolean): not supported"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    .line 8
    invoke-interface {v0, v1, p1}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->createDragStateListener(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mDragStateListener:Ljava/lang/Object;

    return-void
.end method

.method public setDragDropStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string p1, "setDragDropStatus: not supported"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->setDragDropStatus(Landroid/content/Context;I)V

    return-void
.end method

.method public setDragStateListener(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "os.dragdrop"

    const-string p1, "setDragStateListener: not supported"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->mDragStateListener:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/dragdrop/ITranDragDropManagerAdapter;->setDragStateListener(Ljava/lang/Object;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V

    return-void
.end method
