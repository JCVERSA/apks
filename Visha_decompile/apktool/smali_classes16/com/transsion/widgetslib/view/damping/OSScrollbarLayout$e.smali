.class public Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result p0

    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d(IFII)V

    :cond_0
    return-void
.end method
