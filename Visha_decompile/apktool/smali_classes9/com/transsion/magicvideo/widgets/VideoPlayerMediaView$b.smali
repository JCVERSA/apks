.class public Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    if-ne v1, v5, :cond_0

    move v5, p7

    if-ne v2, v5, :cond_0

    move/from16 v5, p8

    if-ne v3, v5, :cond_0

    move/from16 v5, p9

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v5, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    sub-int v1, v3, v1

    invoke-static {v5, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->r(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    sub-int v2, v4, v2

    invoke-static {v1, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->o(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->d(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I

    move-result v2

    iget-object v3, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I

    move-result v3

    iget-object v4, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I

    move-result v4

    iget-object v5, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->d(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    move p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->fixVideoSize(IIIIII)V

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->s(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V

    :cond_1
    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V

    return-void
.end method
