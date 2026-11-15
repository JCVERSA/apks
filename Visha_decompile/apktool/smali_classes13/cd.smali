.class public abstract Lcd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/view/animation/Animation;

.field public static b:Landroid/view/animation/Animation;


# direct methods
.method public static synthetic a(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcd;->e(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static b(Landroid/widget/ImageView;)V
    .locals 3

    sget v0, Lcom/transsion/common/R$id;->play_pause_icon_switch_runnable_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public static c(Landroid/view/View;Z)Landroid/view/animation/Animation;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcd;->b:Landroid/view/animation/Animation;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/common/R$anim;->video_play_pause_out_anim:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcd;->a:Landroid/view/animation/Animation;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/common/R$anim;->video_play_pause_in_anim:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static d(Landroid/widget/ImageView;I)Z
    .locals 2

    sget v0, Lcom/transsion/common/R$id;->play_pause_icon_res_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic e(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcd;->j(Landroid/view/View;Z)V

    sget p1, Lcom/transsion/common/R$id;->play_pause_icon_switch_runnable_tag:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static f(Landroid/widget/ImageView;I)V
    .locals 3

    invoke-static {p0, p1}, Lcd;->d(Landroid/widget/ImageView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcd;->b(Landroid/widget/ImageView;)V

    new-instance v0, Lbd;

    invoke-direct {v0, p0, p1}, Lbd;-><init>(Landroid/widget/ImageView;I)V

    sget v1, Lcom/transsion/common/R$id;->play_pause_icon_switch_runnable_tag:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcd;->j(Landroid/view/View;Z)V

    sget v0, Lcom/transsion/common/R$id;->play_pause_icon_res_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/common/R$anim;->anim_small:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static h(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$anim;->anim_small:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static i(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v4, 0x1

    aput v0, v1, v4

    const/4 v0, 0x2

    aput v2, v1, v0

    const/4 v0, 0x3

    aput v3, v1, v0

    const-string v0, "translationX"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static j(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcd;->c(Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
