.class public interface abstract Lcom/hunantv/media/player/IMgtvRenderView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;,
        Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;,
        Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;,
        Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;
    }
.end annotation


# static fields
.field public static final AR_16_9_FIT_PARENT:I = 0x4

.field public static final AR_4_3_FIT_PARENT:I = 0x5

.field public static final AR_ASPECT_FILL_PARENT:I = 0x1

.field public static final AR_ASPECT_FIT_PARENT:I = 0x0

.field public static final AR_ASPECT_WRAP_CONTENT:I = 0x2

.field public static final AR_MATCH_PARENT:I = 0x3


# virtual methods
.method public abstract addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
.end method

.method public abstract bind(Lcom/hunantv/media/widget/IVideoView;)V
.end method

.method public abstract bindResizableFrameView(Lcom/hunantv/media/player/l;)V
.end method

.method public abstract getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
.end method

.method public abstract getFps()I
.end method

.method public abstract getRenderFilter()Lcom/hunantv/media/player/d/a/d;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract releaseFilter()V
.end method

.method public abstract removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
.end method

.method public abstract resetFilter()V
.end method

.method public abstract setAntiAliasing(Z)V
.end method

.method public abstract setAntiShake(Z)V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
.end method

.method public abstract setIsInScaleAnim(Z)V
.end method

.method public abstract setManualRotation(IIIII)V
.end method

.method public abstract setRenderFilter(I)V
.end method

.method public abstract setVideoRotation(I)V
.end method

.method public abstract setVideoSampleAspectRatio(II)V
.end method

.method public abstract setVideoSize(II)V
.end method

.method public abstract shouldWaitForResize()Z
.end method

.method public abstract startFps()V
.end method

.method public abstract stopFps()V
.end method
