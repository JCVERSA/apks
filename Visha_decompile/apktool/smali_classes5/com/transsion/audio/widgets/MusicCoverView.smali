.class public Lcom/transsion/audio/widgets/MusicCoverView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final CIRCLE_R:I = 0x64


# instance fields
.field private circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

.field isPause:Z

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field private waveView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->isPause:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicCoverView;->init(Landroid/content/Context;)V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicCoverView;->isPause:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicCoverView;->init(Landroid/content/Context;)V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicCoverView;->isPause:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicCoverView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicCoverView;->isPause:Z

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicCoverView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-direct {v0, p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->waveView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/transsion/audio/widgets/MusicCoverView;->waveView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-direct {v0, p1}, Lcom/transsion/playercommon/widgets/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v2, "rotation"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private resetAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->isPause:Z

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/MusicCoverView;->setPause(Z)V

    return-void
.end method


# virtual methods
.method public getCircleImageView()Lcom/transsion/playercommon/widgets/CircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

    return-object p0
.end method

.method public getWaveView()Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->waveView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method public setCoverImg(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/audio/widgets/MusicCoverView;->resetAnimation()V

    return-void
.end method

.method public setCoverImg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->circleImageView:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/audio/widgets/MusicCoverView;->resetAnimation()V

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->isPause:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->waveView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->pauseDraw()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicCoverView;->waveView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->resumeDraw()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicCoverView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    :goto_0
    return-void
.end method
