.class Lcom/mgtv/ssp/feed/control/StandardVideoController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/control/StandardVideoController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/control/StandardVideoController;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/control/StandardVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$000(Lcom/mgtv/ssp/feed/control/StandardVideoController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$100(Lcom/mgtv/ssp/feed/control/StandardVideoController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$200(Lcom/mgtv/ssp/feed/control/StandardVideoController;)Lcom/mgtv/ssp/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$300(Lcom/mgtv/ssp/feed/control/StandardVideoController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$400(Lcom/mgtv/ssp/feed/control/StandardVideoController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/BaseVideoController;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$500(Lcom/mgtv/ssp/feed/control/StandardVideoController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$600(Lcom/mgtv/ssp/feed/control/StandardVideoController;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$700(Lcom/mgtv/ssp/feed/control/StandardVideoController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/StandardVideoController$1;->a:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;->access$802(Lcom/mgtv/ssp/feed/control/StandardVideoController;I)I

    return-void
.end method
