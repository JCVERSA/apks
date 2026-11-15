.class public Lcom/hunantv/media/player/k;
.super Lcom/hunantv/media/player/i;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d;
.implements Lcom/hunantv/media/player/f/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Lcom/hunantv/media/player/f/b;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/i;-><init>(Lcom/hunantv/media/player/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/k;->b()V

    iput-object p1, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/hunantv/media/player/i;->setSurface(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/hunantv/media/player/utils/SurfaceUtil;->create(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public a(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/k;->b()V

    iput-object v0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/hunantv/media/player/i;->setSurface(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public a(Lcom/hunantv/media/player/f/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/media/player/k;->c:Lcom/hunantv/media/player/f/b;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/k;->c:Lcom/hunantv/media/player/f/b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/hunantv/media/player/f/b;->a(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public c()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/hunantv/media/player/i;->release()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/k;->b()V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/hunantv/media/player/i;->reset()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/k;->b()V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/hunantv/media/player/i;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/k;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/hunantv/media/player/i;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
