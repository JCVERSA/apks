.class public Lcom/mgtv/ssp/widget/ImmerBottomControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/mgtv/ssp/control/b;


# instance fields
.field protected a:Lcom/mgtv/ssp/control/a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/SeekBar;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->g:Z

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->d:Landroid/widget/LinearLayout;

    .line 6
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->b:Landroid/widget/TextView;

    .line 7
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->c:Landroid/widget/TextView;

    .line 8
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

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

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->g:Z

    const/4 p2, 0x4

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->getLayoutId()I

    move-result v0

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->d:Landroid/widget/LinearLayout;

    .line 15
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->b:Landroid/widget/TextView;

    .line 16
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->c:Landroid/widget/TextView;

    .line 17
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

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

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->g:Z

    const/4 p2, 0x4

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->getLayoutId()I

    move-result p3

    invoke-virtual {p2, p3, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->d:Landroid/widget/LinearLayout;

    .line 24
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->b:Landroid/widget/TextView;

    .line 25
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->c:Landroid/widget/TextView;

    .line 26
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_immer_botttom_control_view:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgtv/ssp/R$id;->fullscreen:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->switchFullScreen(Z)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/mgtv/ssp/R$id;->iv_mute:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->togglePlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "pos = onPlayStateChanged VIDEO_PLAYING "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->startProgress()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getCutoutHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getVideoDuration()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/mgtv/ssp/R$drawable;->ic_seek_bar:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->c:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    long-to-int p1, v0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->f:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->stopProgress()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->stopFadeOut()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/control/a;->seekTo(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->f:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->startProgress()V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->startFadeOut()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setProgress(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    if-lez p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getBufferedPercentage()I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->e:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerBottomControlView;->c:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
