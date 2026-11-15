.class Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->start()V
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

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->g(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;F)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
