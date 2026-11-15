.class final Lcom/hunantv/media/player/f/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/hunantv/media/player/d/f;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/f/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hunantv/media/player/f/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/f/d$b;->h:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/player/f/d$b;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/f/d$b;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hunantv/media/player/f/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    const-string v2, "MgtvSurfaceRenderView"

    if-eqz v1, :cond_0

    new-instance v1, Lcom/hunantv/media/player/f/d$a;

    iget-object v3, p0, Lcom/hunantv/media/player/f/d$b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/f/d;

    iget-object v4, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    iget-object v5, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/hunantv/media/player/f/d$a;-><init>(Lcom/hunantv/media/player/f/d;Landroid/view/SurfaceHolder;Lcom/hunantv/media/player/d/f;I)V

    iget v3, p0, Lcom/hunantv/media/player/f/d$b;->e:I

    iget v4, p0, Lcom/hunantv/media/player/f/d$b;->f:I

    invoke-interface {p1, v1, v3, v4}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceCreated: create: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/hunantv/media/player/f/d$b;->c:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    new-instance v1, Lcom/hunantv/media/player/f/d$a;

    iget-object v3, p0, Lcom/hunantv/media/player/f/d$b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/f/d;

    iget-object v4, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    iget-object v5, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/hunantv/media/player/f/d$a;-><init>(Lcom/hunantv/media/player/f/d;Landroid/view/SurfaceHolder;Lcom/hunantv/media/player/d/f;I)V

    :cond_1
    iget v0, p0, Lcom/hunantv/media/player/f/d$b;->d:I

    iget v3, p0, Lcom/hunantv/media/player/f/d$b;->e:I

    iget p0, p0, Lcom/hunantv/media/player/f/d$b;->f:I

    invoke-interface {p1, v1, v0, v3, p0}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceChanged: Screate: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/hunantv/media/player/d/f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    return-void
.end method

.method public b(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$b;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    iput-object p1, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/d$b;->c:Z

    iput p2, p0, Lcom/hunantv/media/player/f/d$b;->d:I

    iput p3, p0, Lcom/hunantv/media/player/f/d$b;->e:I

    iput p4, p0, Lcom/hunantv/media/player/f/d$b;->f:I

    iget-object p1, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/hunantv/media/player/d/f;->b(II)V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/f/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance v0, Lcom/hunantv/media/player/f/d$a;

    iget-object v1, p0, Lcom/hunantv/media/player/f/d$b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/f/d;

    iget-object v2, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/hunantv/media/player/f/d$a;-><init>(Lcom/hunantv/media/player/f/d;Landroid/view/SurfaceHolder;Lcom/hunantv/media/player/d/f;I)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$b;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceChanged: change: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MgtvSurfaceRenderView"

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    iput-object p1, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/d$b;->c:Z

    iput p1, p0, Lcom/hunantv/media/player/f/d$b;->d:I

    iput p1, p0, Lcom/hunantv/media/player/f/d$b;->e:I

    iput p1, p0, Lcom/hunantv/media/player/f/d$b;->f:I

    iget-object v0, p0, Lcom/hunantv/media/player/f/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Lcom/hunantv/media/player/f/d$a;

    iget-object v2, p0, Lcom/hunantv/media/player/f/d$b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/player/f/d;

    iget-object v3, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    iget-object v4, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/hunantv/media/player/f/d$a;-><init>(Lcom/hunantv/media/player/f/d;Landroid/view/SurfaceHolder;Lcom/hunantv/media/player/d/f;I)V

    iget-object v0, p0, Lcom/hunantv/media/player/f/d$b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-interface {v2, v1, p1, p1}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceCreated: create 2: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MgtvSurfaceRenderView"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated: create 2 surface: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/d$b;->c:Z

    iput p1, p0, Lcom/hunantv/media/player/f/d$b;->d:I

    iput p1, p0, Lcom/hunantv/media/player/f/d$b;->e:I

    iput p1, p0, Lcom/hunantv/media/player/f/d$b;->f:I

    iget-object p1, p0, Lcom/hunantv/media/player/f/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance v0, Lcom/hunantv/media/player/f/d$a;

    iget-object v1, p0, Lcom/hunantv/media/player/f/d$b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/f/d;

    iget-object v2, p0, Lcom/hunantv/media/player/f/d$b;->b:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lcom/hunantv/media/player/f/d$b;->i:Lcom/hunantv/media/player/d/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/hunantv/media/player/f/d$a;-><init>(Lcom/hunantv/media/player/f/d;Landroid/view/SurfaceHolder;Lcom/hunantv/media/player/d/f;I)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/d$b;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceDestroyed: destroy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MgtvSurfaceRenderView"

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
