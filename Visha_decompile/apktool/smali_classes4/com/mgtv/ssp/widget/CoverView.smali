.class public Lcom/mgtv/ssp/widget/CoverView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/b;


# instance fields
.field private a:Lcom/mgtv/ssp/control/a;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Lcom/mgtv/ssp/immersion/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "CoverView"

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_prepare_control_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget v0, Lcom/mgtv/ssp/R$id;->thumb:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/CoverView;->b:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/mgtv/ssp/R$id;->start_play:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/CoverView;->c:Landroid/widget/ImageView;

    .line 6
    sget v0, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/CoverView;->d:Landroid/widget/ProgressBar;

    .line 7
    sget v0, Lcom/mgtv/ssp/R$id;->net_warning_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/widget/CoverView;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 9
    sget p1, Lcom/mgtv/ssp/R$id;->status_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->f:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mgtv/ssp/widget/CoverView$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/widget/CoverView$1;-><init>(Lcom/mgtv/ssp/widget/CoverView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p1, Lcom/mgtv/ssp/R$id;->tv_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->g:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string p1, "CoverView"

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->h:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_prepare_control_view:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    sget p2, Lcom/mgtv/ssp/R$id;->thumb:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->b:Landroid/widget/ImageView;

    .line 16
    sget p2, Lcom/mgtv/ssp/R$id;->start_play:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->c:Landroid/widget/ImageView;

    .line 17
    sget p2, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->d:Landroid/widget/ProgressBar;

    .line 18
    sget p2, Lcom/mgtv/ssp/R$id;->net_warning_layout:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    .line 19
    iget-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 20
    sget p1, Lcom/mgtv/ssp/R$id;->status_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->f:Landroid/widget/TextView;

    .line 21
    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/mgtv/ssp/widget/CoverView$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/widget/CoverView$1;-><init>(Lcom/mgtv/ssp/widget/CoverView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    sget p1, Lcom/mgtv/ssp/R$id;->tv_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->g:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string p1, "CoverView"

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->h:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_prepare_control_view:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    sget p2, Lcom/mgtv/ssp/R$id;->thumb:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->b:Landroid/widget/ImageView;

    .line 27
    sget p2, Lcom/mgtv/ssp/R$id;->start_play:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->c:Landroid/widget/ImageView;

    .line 28
    sget p2, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->d:Landroid/widget/ProgressBar;

    .line 29
    sget p2, Lcom/mgtv/ssp/R$id;->net_warning_layout:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    .line 30
    iget-object p2, p0, Lcom/mgtv/ssp/widget/CoverView;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 31
    sget p1, Lcom/mgtv/ssp/R$id;->status_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->f:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/mgtv/ssp/widget/CoverView$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/widget/CoverView$1;-><init>(Lcom/mgtv/ssp/widget/CoverView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget p1, Lcom/mgtv/ssp/R$id;->tv_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/widget/CoverView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/ssp/widget/CoverView;)Lcom/mgtv/ssp/immersion/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->i:Lcom/mgtv/ssp/immersion/a/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/widget/CoverView;)Lcom/mgtv/ssp/control/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->a:Lcom/mgtv/ssp/control/a;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->a:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onLockStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/CoverView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setAutoPlayClickListener(Lcom/mgtv/ssp/immersion/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/CoverView;->i:Lcom/mgtv/ssp/immersion/a/a;

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    return-void
.end method
