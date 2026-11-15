.class public Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;
.super Landroid/widget/FrameLayout;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ProgressBar;

.field private e:Z

.field private f:Z

.field private g:Lcom/cloud/hisavana/sdk/j4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->e:Z

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->layout_native_ad_video_view:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 9
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Landroid/widget/ImageView;

    .line 10
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->im_repeat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    .line 11
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d:Landroid/widget/ProgressBar;

    .line 12
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i()V

    .line 13
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/j4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->im_repeat:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->openOrCloseVolume()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->release()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 27
    .line 28
    instance-of v2, v0, Lcom/cloud/hisavana/sdk/c4;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v0, Lcom/cloud/hisavana/sdk/c4;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/c4;->i()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 38
    .line 39
    return-void
.end method

.method public setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionSize(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "setMediaData -------------> path = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "NativeAdVideoView"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lc7/b;->n()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, p2, p1, v1, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setPlayWhenReady(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setShowComponents(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUseListMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setUseListMode(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
