.class Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->downloadAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->g(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;F)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->c(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    move-result-object p1

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;->NONE:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->b(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->a(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->b(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->e(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;D)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
