.class public Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubSurfaceControl"


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/ITranSurfaceControl;

.field private mSurfaceControl:Lcom/transsion/hubsdk/view/TranSurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "surface"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/view/ITranSurfaceControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/ITranSurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mService:Lcom/transsion/hubsdk/view/ITranSurfaceControl;

    return-void
.end method

.method private getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mSurfaceControl:Lcom/transsion/hubsdk/view/TranSurfaceControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranSurfaceControl;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranSurfaceControl;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mSurfaceControl:Lcom/transsion/hubsdk/view/TranSurfaceControl;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mSurfaceControl:Lcom/transsion/hubsdk/view/TranSurfaceControl;

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->apply(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public captureDisplayAsBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mService:Lcom/transsion/hubsdk/view/ITranSurfaceControl;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranSurfaceControl;->captureDisplayAsBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureDisplayAsBitmap: e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkProtectedContent(Landroid/view/SurfaceControl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->checkProtectedContent(Landroid/view/SurfaceControl;)Z

    move-result p0

    return p0
.end method

.method public createSfWithContainerLayer(Ljava/lang/String;ZLandroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->createSfWithContainerLayer(Ljava/lang/String;ZLandroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public createSfWithEffectLayer(Ljava/lang/String;Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->createSfWithEffectLayer(Ljava/lang/String;Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->getDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isRequestChangeScale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mService:Lcom/transsion/hubsdk/view/ITranSurfaceControl;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/ITranSurfaceControl;->isRequestChangeScale(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRequestChangeScale: e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public remove(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->remove(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V

    return-void
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public setMultiWindowLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setMultiWindowLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public setService(Lcom/transsion/hubsdk/view/ITranSurfaceControl;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->mService:Lcom/transsion/hubsdk/view/ITranSurfaceControl;

    return-void
.end method

.method public setShadowRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setShadowRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public setSmoothCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setSmoothCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    return-void
.end method

.method public setTranSmoothCorner(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setTranSmoothCorner(Landroid/view/View;FF)V

    return-void
.end method

.method public setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0
.end method

.method public startVfxAnimation(Landroid/view/View;IF[FFF)V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;->getTranSurfaceControl()Lcom/transsion/hubsdk/view/TranSurfaceControl;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/view/TranSurfaceControl;->startVfxAnimation(Landroid/view/View;IF[FFF)V

    return-void
.end method
