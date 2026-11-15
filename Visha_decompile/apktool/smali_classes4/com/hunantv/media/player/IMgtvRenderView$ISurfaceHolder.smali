.class public interface abstract Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/IMgtvRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISurfaceHolder"
.end annotation


# virtual methods
.method public abstract bindToMediaPlayer(Lcom/hunantv/media/player/h;)V
.end method

.method public abstract bindToMediaPlayer(Lcom/hunantv/media/player/h;I)V
.end method

.method public abstract getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;
.end method

.method public abstract getSurfaceHolder()Landroid/view/SurfaceHolder;
.end method

.method public abstract getSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract openSurface()Landroid/view/Surface;
.end method

.method public abstract releaseSurface()V
.end method
