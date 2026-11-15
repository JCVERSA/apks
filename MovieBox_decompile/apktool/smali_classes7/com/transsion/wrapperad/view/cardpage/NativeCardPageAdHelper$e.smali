.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->K(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic b:F

.field final synthetic c:Landroid/widget/FrameLayout;

.field final synthetic d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;FLandroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->b:F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->c:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->n(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->c:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->d:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->b:F

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    .line 15
    const v0, 0x3dcccccd    # 0.1f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
