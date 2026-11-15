.class public Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;
.super Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;
.source "SourceFile"


# instance fields
.field public M0:Landroid/widget/LinearLayout;

.field public N0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic e0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->i0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getPlayUIView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->N0:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/magicvideo/R$id;->play_ui_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->N0:Landroid/view/View;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->f4()Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->N0:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->N0:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->N0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic i0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public D()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D()V

    return-void
.end method

.method public final f0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->bottom_bar_stub:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->seekbar_video_play_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v2, Lo8c;

    invoke-direct {v2}, Lo8c;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_video_play_current_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->q0:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_video_play_total_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->r0:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public g0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->T:Z

    if-eqz v0, :cond_0

    const-string p0, "VideoTouchPlayUIDisplayView"

    const-string v0, "can\'t showDisplayUI inForceHideUIState"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->getPlayUIView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->showDisplayUI(Landroid/view/View;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->N0:Landroid/view/View;

    instance-of v0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;->onPlayUIDisplay()V

    :cond_3
    return-void
.end method

.method public h0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->init(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->a0(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    sget v0, Lcom/transsion/magicvideo/R$layout;->video_play_display_ui:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->d0()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {v0}, Lraa;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->content_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->j()V

    return-void
.end method

.method public j0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->f0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->d0()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->R(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    return-void
.end method

.method public final k0(Z)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->z0:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->u0:I

    :goto_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->x0:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->s0:I

    :goto_1
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->y0:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->t0:I

    :goto_2
    if-eqz p1, :cond_3

    iget v4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->A0:I

    goto :goto_3

    :cond_3
    iget v4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->w0:I

    :goto_3
    iget-boolean v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->I:Z

    if-eqz v5, :cond_6

    if-eqz p1, :cond_4

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->C0:I

    goto :goto_4

    :cond_4
    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->B0:I

    :goto_4
    if-eqz p1, :cond_5

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->D0:I

    :goto_5
    move v4, p0

    goto :goto_6

    :cond_5
    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->w0:I

    goto :goto_5

    :cond_6
    :goto_6
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    return-void
.end method

.method public onPlayUIStatusChange(Z)V
    .locals 0

    return-void
.end method

.method public onScreenClick(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lp8c;

    invoke-direct {v0, p0}, Lp8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public q(IF)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v2, 0x10

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->f0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->d0()V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->R(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->M0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->d0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->q(IF)V

    return-void
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public requestedOrientation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->requestedOrientation(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->k0(Z)V

    return-void
.end method

.method public setPlayerMediaView(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->m0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    return-void
.end method
