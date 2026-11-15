.class final Lcom/hunantv/media/player/f/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/player/f/e;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/Surface;

.field private d:Lcom/hunantv/media/player/d/f;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/f/e$a;->a:Lcom/hunantv/media/player/f/e;

    iput-object p2, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    iput-object p4, p0, Lcom/hunantv/media/player/f/e$a;->d:Lcom/hunantv/media/player/d/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/h;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->z()Lcom/hunantv/media/player/d;

    move-result-object v0

    instance-of v1, v0, Lcom/hunantv/media/player/f/a;

    const-string v2, "MgtvTextureRenderView"

    if-eqz v1, :cond_2

    if-gez p2, :cond_2

    check-cast v0, Lcom/hunantv/media/player/f/a;

    iget-object p1, p0, Lcom/hunantv/media/player/f/e$a;->a:Lcom/hunantv/media/player/f/e;

    invoke-static {p1}, Lcom/hunantv/media/player/f/e;->a(Lcom/hunantv/media/player/f/e;)Lcom/hunantv/media/player/f/e$b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/f/e$b;->a(Z)V

    invoke-interface {v0}, Lcom/hunantv/media/player/f/a;->c()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindToMediaPlayer16: setSurfaceTexture mSurfaceT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/player/f/e$a;->a:Lcom/hunantv/media/player/f/e;

    invoke-virtual {p2, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object p2, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    if-eq p2, p1, :cond_4

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e$a;->releaseSurface()V

    iget-object p2, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object p1, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->a:Lcom/hunantv/media/player/f/e;

    invoke-static {p0}, Lcom/hunantv/media/player/f/e;->a(Lcom/hunantv/media/player/f/e;)Lcom/hunantv/media/player/f/e$b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hunantv/media/player/f/e$b;->a(Lcom/hunantv/media/player/f/e$b;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSurfaceTexture error 1,e:"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindToMediaPlayer16: setSurfaceTexture mSurfaceT(Host) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/f/a;->a(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->a:Lcom/hunantv/media/player/f/e;

    invoke-static {p0}, Lcom/hunantv/media/player/f/e;->a(Lcom/hunantv/media/player/f/e;)Lcom/hunantv/media/player/f/e$b;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/f/a;->a(Lcom/hunantv/media/player/f/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSurfaceTexture error 2,e:"

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e$a;->openSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/hunantv/media/player/h;->a(Landroid/view/Surface;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e$a;->openSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/h;->a(Landroid/view/Surface;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindToMediaPlayer16: openSurface is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bindToMediaPlayer(Lcom/hunantv/media/player/h;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/f/e$a;->bindToMediaPlayer(Lcom/hunantv/media/player/h;I)V

    return-void
.end method

.method public bindToMediaPlayer(Lcom/hunantv/media/player/h;I)V
    .locals 0

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/f/e$a;->a(Lcom/hunantv/media/player/h;I)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/e$a;->d:Lcom/hunantv/media/player/d/f;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e$a;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->a:Lcom/hunantv/media/player/f/e;

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSurface: mSurfaceT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvTextureRenderView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->d:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->d()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->d:Lcom/hunantv/media/player/d/f;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->e()V

    iput-object v1, p0, Lcom/hunantv/media/player/f/e$a;->d:Lcom/hunantv/media/player/d/f;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/SurfaceUtil;->create(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    return-object p0
.end method

.method public releaseSurface()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/SurfaceUtil;->release(Landroid/view/Surface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/f/e$a;->c:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
