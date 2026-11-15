.class Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverScrollRunnable"
.end annotation


# instance fields
.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Landroid/content/Context;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->c(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartX()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getStartY()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v6}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->c(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object v4

    neg-int v0, v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    neg-int v1, v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->e(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-virtual {v0, v5, v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(ZZ)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->c(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object v2

    neg-int v0, v0

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    neg-int v1, v1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->c(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->e(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-virtual {p0, v5, v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(ZZ)V

    :goto_0
    return-void
.end method
