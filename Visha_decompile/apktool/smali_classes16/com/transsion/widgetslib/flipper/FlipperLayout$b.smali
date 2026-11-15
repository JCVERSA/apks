.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->c:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    return-void
.end method

.method public static final b(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$updateTextFromPosition(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const-string v0, "viewPager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->endFakeDrag()Z

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v0

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lty3;->f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->c:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$isVisible$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd, isVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlipperLayout"

    invoke-static {v0, p1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$sendScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setAutoFlipping$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "viewPager"

    if-nez p1, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->beginFakeDrag()Z

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTitleUpdateRunnable$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    new-instance v1, Lry3;

    invoke-direct {v1, v0, p1}, Lry3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setTitleUpdateRunnable$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getTitleUpdateRunnable$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
