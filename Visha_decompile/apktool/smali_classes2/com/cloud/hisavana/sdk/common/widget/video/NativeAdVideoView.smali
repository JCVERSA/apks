.class public Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ProgressBar;

.field public f:Z

.field public g:Z

.field public h:Lxnd;

.field public i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z


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
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->f:Z

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

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 9
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    .line 10
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->im_repeat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d:Landroid/widget/ImageView;

    .line 11
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->e:Landroid/widget/ProgressBar;

    .line 12
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->m()V

    .line 13
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    return-object p0
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g:Z

    return p0
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k:Z

    return p0
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->l:Z

    return p0
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->e:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h:Lxnd;

    return-object p0
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->f:Z

    return p0
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setListModeVisibilityCallback(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lxnd;)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->im_repeat:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->openOrCloseVolume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lxnd;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setListModeVisibilityCallback(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->release()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    :cond_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->l:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h:Lxnd;

    instance-of v2, v0, Lvkd;

    if-eqz v2, :cond_1

    check-cast v0, Lvkd;

    invoke-virtual {v0}, Lvkd;->j()V

    :cond_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h:Lxnd;

    return-void
.end method

.method public setAdMediaPlayerListener(Lxnd;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h:Lxnd;

    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g:Z

    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionSize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaData -------------> path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeAdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz v0, :cond_0

    invoke-static {}, Lr6;->r()Z

    move-result v0

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k:Z

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->l:Z

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setShowComponents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->f:Z

    return-void
.end method

.method public setUseListMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setUseListMode(Z)V

    :cond_0
    return-void
.end method
