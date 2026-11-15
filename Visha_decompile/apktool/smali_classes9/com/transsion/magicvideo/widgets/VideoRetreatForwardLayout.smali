.class public Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;

.field public final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lq6c;

    invoke-direct {v0, p0}, Lq6c;-><init>(Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->o:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p2, Lq6c;

    invoke-direct {p2, p0}, Lq6c;-><init>(Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->o:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Lq6c;

    invoke-direct {p2, p0}, Lq6c;-><init>(Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->o:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$layout;->video_retreat_forward_tip:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->video_play_retreat_tip_bt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->b:Landroid/widget/Button;

    sget v1, Lcom/transsion/magicvideo/R$id;->video_play_forward_tip_bt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_tips_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_tips_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_tips_start_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_tips_end_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_tips_end_land_gestural:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lpp3;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lpp3;->h(Landroid/content/Context;)I

    move-result p1

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->e:I

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->f:I

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->g:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->e:I

    :goto_0
    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->l:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->i:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->h:I

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->f:I

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public hideRetreatOrForwardTip()V
    .locals 3

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->k:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v2

    invoke-static {v1, v0, v2}, Lfz5;->b(ZII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->n:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;->dismiss()V

    :cond_0
    return-void
.end method

.method public multiWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->m:Z

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->d:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c(Z)V

    return-void
.end method

.method public requestedOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->d:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c(Z)V

    return-void
.end method

.method public setIsRetreat(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->k:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->n:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;->show()V

    :cond_1
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->k:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->showRetreatOrForwardTip()V

    return-void
.end method

.method public setNavigationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->l:Z

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->d:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c(Z)V

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    return-void
.end method

.method public setTipShowListener(Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->n:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;

    return-void
.end method

.method public showRetreatOrForwardTip()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->b:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->k:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->k:Z

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->video_retreat_tip_new:I

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->video_forward_tip_new:I

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->o:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
