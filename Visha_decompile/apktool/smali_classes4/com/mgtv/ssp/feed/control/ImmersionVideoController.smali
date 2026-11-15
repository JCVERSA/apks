.class public Lcom/mgtv/ssp/feed/control/ImmersionVideoController;
.super Lcom/mgtv/ssp/control/GestureVideoController;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/control/GestureVideoController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/control/GestureVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/control/GestureVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/control/ImmersionVideoController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->togglePlay()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    new-instance v0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/widget/ImmerBottomControlView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3
    new-array v2, v1, [Lcom/mgtv/ssp/control/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    .line 4
    new-instance v0, Lcom/mgtv/ssp/widget/GestureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mgtv/ssp/widget/GestureView;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Lcom/mgtv/ssp/control/b;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_standard_control_view:I

    return p0
.end method

.method public initView()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/ssp/control/GestureVideoController;->initView()V

    sget v0, Lcom/mgtv/ssp/R$id;->lock:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/control/ImmersionVideoController$1;-><init>(Lcom/mgtv/ssp/feed/control/ImmersionVideoController;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->show()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/mgtv/ssp/R$string;->mgplayer_lock_tip:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->stopFullScreen()Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgtv/ssp/R$id;->lock:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->b()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/mgtv/ssp/R$id;->play_btn:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->mgplayer_locked:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->mgplayer_unlocked:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->onPlayStateChanged(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->onPlayerStateChanged(I)V

    const/16 v0, 0xa

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v0, v3}, Lcom/mgtv/ssp/utils/c;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->getCutoutHeight()I

    move-result v3

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/ImmersionVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method
