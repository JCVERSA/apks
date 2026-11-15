.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    :cond_1
    return-void
.end method
