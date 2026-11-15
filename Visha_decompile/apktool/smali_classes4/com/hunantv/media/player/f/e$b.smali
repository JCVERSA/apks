.class final Lcom/hunantv/media/player/f/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/hunantv/media/player/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/SurfaceTexture;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/hunantv/media/player/d/f;

.field private k:Lcom/hunantv/media/utils/FpsStatistic;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/f/e;Lcom/hunantv/media/utils/FpsStatistic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->f:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->g:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/f/e$b;->i:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/player/f/e$b;->h:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/hunantv/media/player/f/e$b;->k:Lcom/hunantv/media/utils/FpsStatistic;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/f/e$b;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/media/player/f/e$b;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    const-string v0, "MgtvTextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->f:Z

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 4
    const-string v0, "MgtvTextureRenderView"

    if-nez p1, :cond_0

    const-string p0, "releaseSurface: null"

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/hunantv/media/player/f/e$b;->g:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_1

    const-string p0, "releaseSurface: didDetachFromWindow(): release different SurfaceTexture"

    :goto_0
    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_3

    :cond_1
    iget-boolean p0, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    if-nez p0, :cond_2

    const-string p0, "releaseSurface: didDetachFromWindow(): release detached SurfaceTexture"

    goto :goto_0

    :cond_2
    const-string p0, "releaseSurface: didDetachFromWindow(): already released by TextureView"

    :goto_1
    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/hunantv/media/player/f/e$b;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_4

    const-string p0, "releaseSurface: willDetachFromWindow(): release different SurfaceTexture"

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    if-nez p1, :cond_5

    const-string p1, "releaseSurface: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    :goto_2
    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/f/e$b;->a(Z)V

    goto :goto_3

    :cond_5
    const-string p0, "releaseSurface: willDetachFromWindow(): will released by TextureView"

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_7

    const-string p0, "releaseSurface: alive: release different SurfaceTexture"

    goto :goto_0

    :cond_7
    iget-boolean p1, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    if-nez p1, :cond_8

    const-string p1, "releaseSurface: alive: re-attach SurfaceTexture to TextureView"

    goto :goto_2

    :cond_8
    const-string p0, "releaseSurface: alive: will released by TextureView"

    goto :goto_1

    :goto_3
    return-void
.end method

.method public a(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    const-string v1, "MgtvTextureRenderView"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hunantv/media/player/f/e$a;

    iget-object v2, p0, Lcom/hunantv/media/player/f/e$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/player/f/e;

    iget-object v3, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/hunantv/media/player/f/e$a;-><init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V

    iget v2, p0, Lcom/hunantv/media/player/f/e$b;->c:I

    iget v3, p0, Lcom/hunantv/media/player/f/e$b;->d:I

    invoke-interface {p1, v0, v2, v3}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceCreated: create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/hunantv/media/player/f/e$b;->b:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/player/f/e$a;

    iget-object v2, p0, Lcom/hunantv/media/player/f/e$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/player/f/e;

    iget-object v3, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/hunantv/media/player/f/e$a;-><init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V

    :cond_1
    iget v2, p0, Lcom/hunantv/media/player/f/e$b;->c:I

    iget p0, p0, Lcom/hunantv/media/player/f/e$b;->d:I

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, p0}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceChanged: change: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/hunantv/media/player/d/f;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const-string v0, "MgtvTextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->g:Z

    return-void
.end method

.method public b(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/f/e$b;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "MgtvTextureRenderView"

    const-string v1, "willAttachToWindow()"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->f:Z

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "MgtvTextureRenderView"

    const-string v1, "didAttachToWindow()"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->g:Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iput-object p1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/e$b;->b:Z

    iput p1, p0, Lcom/hunantv/media/player/f/e$b;->c:I

    iput p1, p0, Lcom/hunantv/media/player/f/e$b;->d:I

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/hunantv/media/player/d/f;->b(II)V

    :cond_0
    new-instance p2, Lcom/hunantv/media/player/f/e$a;

    iget-object p3, p0, Lcom/hunantv/media/player/f/e$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hunantv/media/player/f/e;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    invoke-direct {p2, p3, v0, p0, v1}, Lcom/hunantv/media/player/f/e$a;-><init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$b;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-interface {p3, p2, p1, p1}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iput-object p1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/e$b;->b:Z

    iput p1, p0, Lcom/hunantv/media/player/f/e$b;->c:I

    iput p1, p0, Lcom/hunantv/media/player/f/e$b;->d:I

    new-instance p1, Lcom/hunantv/media/player/f/e$a;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/f/e;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/hunantv/media/player/f/e$a;-><init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    iget-boolean v2, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    invoke-interface {v1, p1, v2}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceDestroyed: destroy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MgtvTextureRenderView"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/hunantv/media/player/f/e$b;->e:Z

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/hunantv/media/player/d/f;->b(II)V

    :cond_0
    iput-object p1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/e$b;->b:Z

    iput p2, p0, Lcom/hunantv/media/player/f/e$b;->c:I

    iput p3, p0, Lcom/hunantv/media/player/f/e$b;->d:I

    new-instance p1, Lcom/hunantv/media/player/f/e$a;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/f/e;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e$b;->a:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/hunantv/media/player/f/e$b;->j:Lcom/hunantv/media/player/d/f;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/hunantv/media/player/f/e$a;-><init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$b;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e$b;->k:Lcom/hunantv/media/utils/FpsStatistic;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->onFrame()V

    :cond_0
    return-void
.end method
