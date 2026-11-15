.class public interface abstract Lcom/transsion/liblan/interfaces/ITranLANVout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/ITranLANVout$VoutCallback;,
        Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/transsion/liblan/interfaces/ITranLANVout$VoutCallback;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract areViewsAttached()Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract attachViews()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract attachViews(Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract detachViews()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract existSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)Z
.end method

.method public abstract removeCallback(Lcom/transsion/liblan/interfaces/ITranLANVout$VoutCallback;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract sendMouseEvent(IIII)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesSurface(Landroid/graphics/SurfaceTexture;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesView(Landroid/view/SurfaceView;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesView(Landroid/view/TextureView;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoSurface(Landroid/graphics/SurfaceTexture;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoView(Landroid/view/SurfaceView;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoView(Landroid/view/TextureView;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract setWindowSize(II)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
