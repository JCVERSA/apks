.class public interface abstract Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Z)V
.end method

.method public abstract captureDisplayAsBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public abstract checkProtectedContent(Landroid/view/SurfaceControl;)Z
.end method

.method public abstract createSfWithContainerLayer(Ljava/lang/String;ZLandroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;
.end method

.method public abstract createSfWithEffectLayer(Ljava/lang/String;Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;
.end method

.method public abstract getDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;)Landroid/os/IBinder;
.end method

.method public abstract getPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method public abstract isRequestChangeScale(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remove(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract setDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V
.end method

.method public abstract setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract setMultiWindowLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract setShadowRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract setSmoothCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
.end method

.method public abstract setTranSmoothCorner(Landroid/view/View;FF)V
.end method

.method public abstract setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract smoothcornerCubicEdgeEnabled()Z
.end method

.method public abstract startVfxAnimation(Landroid/view/View;IF[FFF)V
.end method
