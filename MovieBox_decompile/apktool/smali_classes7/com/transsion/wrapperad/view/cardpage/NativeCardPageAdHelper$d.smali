.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->I(Lcom/transsion/wrapperad/view/cardpage/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic b:F

.field final synthetic c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;FLcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->b:F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->d:Landroid/widget/FrameLayout;

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
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;

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
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;

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
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->d:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->b:F

    .line 24
    .line 25
    invoke-static {p1, v0, v1, v2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->r(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V

    .line 26
    .line 27
    .line 28
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
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->b:F

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

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
