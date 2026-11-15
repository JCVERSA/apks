.class Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {p0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->c(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->d(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {p0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->d(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;->this$0:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->c(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Z)V

    return-void
.end method
