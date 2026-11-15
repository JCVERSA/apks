.class Lcom/mgtv/ssp/control/BaseVideoController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/control/BaseVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/control/BaseVideoController;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/control/BaseVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController$2;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController$2;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    invoke-static {v0}, Lcom/mgtv/ssp/control/BaseVideoController;->access$000(Lcom/mgtv/ssp/control/BaseVideoController;)I

    move-result v0

    iget-object v1, p0, Lcom/mgtv/ssp/control/BaseVideoController$2;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    iget-object v1, v1, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v1}, Lcom/mgtv/ssp/control/a;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgtv/ssp/control/BaseVideoController$2;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-float v0, v0

    iget-object v2, v1, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v2}, Lcom/mgtv/ssp/control/a;->getCurrentPlaySpeed()F

    move-result v2

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController$2;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->access$102(Lcom/mgtv/ssp/control/BaseVideoController;Z)Z

    :goto_0
    return-void
.end method
