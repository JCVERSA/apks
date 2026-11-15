.class public Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_audio_progress_info:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_favorite:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->b:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_media_play_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->c:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_media_artist:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->d:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->seekbar_media_play_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_media_play_current_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->f:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_media_play_total_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->g:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->title_line:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->h:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lvha;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v0, Ltx;

    invoke-direct {v0, p0}, Ltx;-><init>(Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getMediaSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public getTvMediaPlayCurrentProgress()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTvMediaPlayTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTvMediaPlayTotalProgress()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaArtist(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMediaPlayTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMediaProgressBar(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    return-void
.end method

.method public setOnMediaFavoriteClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->b:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSeekBarChangeListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->e:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    :cond_0
    return-void
.end method

.method public setTvMediaCurrentProgress(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTvMediaTotalProgress(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showMediaArtist(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->d:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
