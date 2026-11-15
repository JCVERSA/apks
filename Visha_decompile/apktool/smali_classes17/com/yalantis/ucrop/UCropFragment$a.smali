.class public Lcom/yalantis/ucrop/UCropFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/UCropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/UCropFragment;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->w(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->v(Lcom/yalantis/ucrop/UCropFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropFragment;->u(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/b;

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->u(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/b;

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->I(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/UCropFragment$c;

    const/4 p0, 0x0

    throw p0
.end method

.method public c(F)V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->E(Lcom/yalantis/ucrop/UCropFragment;F)V

    return-void
.end method

.method public d(F)V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$a;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->D(Lcom/yalantis/ucrop/UCropFragment;F)V

    return-void
.end method
