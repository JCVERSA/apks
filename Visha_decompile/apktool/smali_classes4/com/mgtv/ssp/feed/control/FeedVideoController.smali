.class public Lcom/mgtv/ssp/feed/control/FeedVideoController;
.super Lcom/mgtv/ssp/feed/control/OnVideoTouchController;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/ssp/feed/control/FeedVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/feed/control/FeedVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/feed/control/OnVideoTouchController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/control/FeedVideoController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    return p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/control/FeedVideoController;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/feed/control/FeedVideoController;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/GestureVideoController;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/feed/control/FeedVideoController;)Lcom/mgtv/ssp/control/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/feed/control/FeedVideoController;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    return p0
.end method

.method public static synthetic e(Lcom/mgtv/ssp/feed/control/FeedVideoController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsDoubleTapTogglePlayEnabled:Z

    return p0
.end method

.method public static synthetic f(Lcom/mgtv/ssp/feed/control/FeedVideoController;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/GestureVideoController;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/mgtv/ssp/feed/control/FeedVideoController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->togglePlay()V

    return-void
.end method

.method public static synthetic h(Lcom/mgtv/ssp/feed/control/FeedVideoController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_standard_control_view:I

    return p0
.end method

.method public initView()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/ssp/feed/control/OnVideoTouchController;->initView()V

    sget v0, Lcom/mgtv/ssp/R$id;->lock:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->c:Landroid/widget/ProgressBar;

    sget v0, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->togglePlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

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
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

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
    .locals 5

    invoke-super {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->onPlayStateChanged(I)V

    const/4 v0, 0x0

    const-string v1, "mLoadingProgress setVisibility(GONE)  playState ="

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    const/16 v3, 0xb

    if-eq p1, v3, :cond_1

    const/16 v3, 0xd

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->b:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    :goto_0
    :pswitch_3
    iget-object v0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :cond_2
    :pswitch_4
    iget-object v3, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

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

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    iget-object p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/mgtv/ssp/feed/control/FeedVideoController$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/feed/control/FeedVideoController$1;-><init>(Lcom/mgtv/ssp/feed/control/FeedVideoController;)V

    sget p0, Lcom/mgtv/ssp/control/GestureVideoController;->timeout:I

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLockButtonVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/control/FeedVideoController;->a:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    return-void
.end method
