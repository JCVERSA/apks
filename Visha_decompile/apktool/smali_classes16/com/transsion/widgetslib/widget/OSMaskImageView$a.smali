.class public final Lcom/transsion/widgetslib/widget/OSMaskImageView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMaskAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSMaskImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMaskDelegate$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Lg24;

    move-result-object v0

    const-string v1, "maskDelegate"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lg24;->b()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMaskDelegate$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Lg24;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    invoke-virtual {p1, v3}, Lg24;->setReversed(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMPath$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "mPath"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMPaint(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    const v0, -0x777778

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMPaint(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    const v0, -0xffff01

    if-eqz p0, :cond_2

    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method
