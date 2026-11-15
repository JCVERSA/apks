.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceChanged "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayerContentView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->O1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S1(Landroid/view/SurfaceHolder;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->L(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lpp3;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_video_gestures_guide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_1
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S1(Landroid/view/SurfaceHolder;Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$b;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/view/SurfaceHolder;)V

    return-void
.end method
