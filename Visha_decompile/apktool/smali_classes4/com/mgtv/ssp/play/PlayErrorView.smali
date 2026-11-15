.class public Lcom/mgtv/ssp/play/PlayErrorView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;
    }
.end annotation


# instance fields
.field private authData:Lcom/mgtv/ssp/a/a;

.field private code:Ljava/lang/String;

.field private default_error:Ljava/lang/String;

.field private isLandScreen:Z

.field public mContext:Landroid/content/Context;

.field private mCurrentScene:Lcom/mgtv/ssp/play/PreviewEndScene;

.field private mErrorView:Landroid/view/View;

.field private mIvBack:Landroid/widget/ImageView;

.field public mParent:Landroid/widget/FrameLayout;

.field private mTvFeedBack:Landroid/widget/TextView;

.field private mTvMSG:Landroid/widget/TextView;

.field private msg:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mParent:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgtv/ssp/R$string;->more_goto_manguotv:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->default_error:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/ssp/play/PlayErrorView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgtv/ssp/play/PlayErrorView;)Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/mgtv/ssp/play/PlayErrorView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$layout;->error_play:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mTvMSG:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    const-string v1, "110111"

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->iv_continue_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "140105_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_feedback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mTvFeedBack:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/mgtv/ssp/play/PlayErrorView$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/play/PlayErrorView$1;-><init>(Lcom/mgtv/ssp/play/PlayErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mTvFeedBack:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->isFull()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    :cond_4
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->imgv_error_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v2}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/mgtv/ssp/play/PlayErrorView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/play/PlayErrorView$2;-><init>(Lcom/mgtv/ssp/play/PlayErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    return-object p0
.end method

.method private getRealView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->isShowVip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mParent:Landroid/widget/FrameLayout;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    return-object p0
.end method

.method private getVipView()Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/mgtv/ssp/play/PreviewEndScene;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/PreviewEndScene;-><init>()V

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->authData:Lcom/mgtv/ssp/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/BaseScene;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    :cond_0
    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->isFull()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    if-eqz v3, :cond_4

    invoke-static {v1, v2}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/mgtv/ssp/play/PlayErrorView$3;

    invoke-direct {v2, p0}, Lcom/mgtv/ssp/play/PlayErrorView$3;-><init>(Lcom/mgtv/ssp/play/PlayErrorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mCurrentScene:Lcom/mgtv/ssp/play/PreviewEndScene;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/play/PreviewEndScene;->detach(Landroid/view/ViewGroup;)V

    :cond_5
    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PreviewEndScene;->attach(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mCurrentScene:Lcom/mgtv/ssp/play/PreviewEndScene;

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PreviewEndScene;->setOnViewClick(Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mParent:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private isShowVip()Z
    .locals 3

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Z()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "110108"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    const-string v0, "110111"

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->aa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->default_error:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->authData:Lcom/mgtv/ssp/a/a;

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mgtv/ssp/R$string;->error_change_video:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method private needReactClick(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "110111"

    if-eq p1, p0, :cond_1

    const-string p0, "140105_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private setClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/mgtv/ssp/play/PlayErrorView;->needReactClick(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    new-instance v1, Lcom/mgtv/ssp/play/PlayErrorView$4;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/play/PlayErrorView$4;-><init>(Lcom/mgtv/ssp/play/PlayErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mErrorView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->getRealView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLockStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->getRealView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->onDismiss()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->getRealView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public rendUi(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "-1"

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rendUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->code:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mgtv/ssp/play/PlayErrorView;->videoId:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->isShowVip()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->getVipView()Landroid/view/View;

    goto :goto_0

    .line 6
    :cond_0
    const-string p2, "110100"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/util/p;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    sget p2, Lcom/mgtv/ssp/R$string;->no_network:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->getErrorView()Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->setClickListener()V

    .line 11
    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayErrorView;->setTvMSG(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public screenChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mIvBack:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method public setAuthData(Lcom/mgtv/ssp/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->authData:Lcom/mgtv/ssp/a/a;

    return-void
.end method

.method public setLandScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->isLandScreen:Z

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->msg:Ljava/lang/String;

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    return-void
.end method

.method public setTvMSG(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mTvMSG:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setViewClick(Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView;->viewClicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    return-void
.end method
