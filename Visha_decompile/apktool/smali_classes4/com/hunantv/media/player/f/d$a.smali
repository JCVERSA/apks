.class final Lcom/hunantv/media/player/f/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/player/f/d;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Lcom/hunantv/media/player/d/f;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/f/d;Landroid/view/SurfaceHolder;Lcom/hunantv/media/player/d/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/f/d$a;->a:Lcom/hunantv/media/player/f/d;

    iput-object p2, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lcom/hunantv/media/player/f/d$a;->c:Lcom/hunantv/media/player/d/f;

    iput p4, p0, Lcom/hunantv/media/player/f/d$a;->d:I

    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Lcom/hunantv/media/player/h;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->z()Lcom/hunantv/media/player/d;

    move-result-object v0

    instance-of v1, v0, Lcom/hunantv/media/player/f/a;

    const-string v2, "MgtvSurfaceRenderView"

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hunantv/media/player/f/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/f/a;->a(Landroid/graphics/SurfaceTexture;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSurfaceHolder: ISurfaceTextureHolder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/d$a;->c:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/d$a;->openSurface()Landroid/view/Surface;

    move-result-object v0

    iget v1, p0, Lcom/hunantv/media/player/f/d$a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/media/player/h;->a(Landroid/view/Surface;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/hunantv/media/player/f/d$a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/media/player/h;->a(Landroid/view/SurfaceHolder;I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindSurfaceHolder: mSurfaceHolder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindSurfaceHolder: mSurface "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/player/f/d$a;->c:Lcom/hunantv/media/player/d/f;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bindToMediaPlayer(Lcom/hunantv/media/player/h;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/d$a;->bindToMediaPlayer(Lcom/hunantv/media/player/h;)V

    return-void
.end method

.method public getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$a;->a:Lcom/hunantv/media/player/f/d;

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/f/d$a;->c:Lcom/hunantv/media/player/d/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->d()Landroid/view/Surface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/d$a;->c:Lcom/hunantv/media/player/d/f;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->e()V

    iput-object v1, p0, Lcom/hunantv/media/player/f/d$a;->c:Lcom/hunantv/media/player/d/f;

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/d$a;->b:Landroid/view/SurfaceHolder;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public releaseSurface()V
    .locals 0

    return-void
.end method
