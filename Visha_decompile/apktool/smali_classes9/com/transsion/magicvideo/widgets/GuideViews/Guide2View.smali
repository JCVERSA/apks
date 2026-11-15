.class public Lcom/transsion/magicvideo/widgets/GuideViews/Guide2View;
.super Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setBreakStrategy(Landroid/widget/TextView;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/transsion/magicvideo/R$layout;->video_gestures_guide_second:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public p(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->p(Landroid/view/View;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_rewind_10s:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_pause_play:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_fast_foward_10s:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/Guide2View;->setBreakStrategy(Landroid/widget/TextView;)V

    invoke-direct {p0, v1}, Lcom/transsion/magicvideo/widgets/GuideViews/Guide2View;->setBreakStrategy(Landroid/widget/TextView;)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/Guide2View;->setBreakStrategy(Landroid/widget/TextView;)V

    return-void
.end method

.method public q(Lwoc;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->q(Lwoc;)V

    return-void
.end method

.method public r()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->r()V

    const-string v0, "second_open_data.json"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setAndPlayGuideLottie(Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->t()V

    const-string v0, "second_data.json"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setAndPlayGuideLottie(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->u()V

    const-string v0, "second_tablet_data.json"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setAndPlayGuideLottie(Ljava/lang/String;)V

    return-void
.end method
