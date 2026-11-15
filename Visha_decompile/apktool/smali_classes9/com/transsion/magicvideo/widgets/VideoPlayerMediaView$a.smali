.class public Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMediaView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMediaView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerMediaView"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V

    return-void
.end method
