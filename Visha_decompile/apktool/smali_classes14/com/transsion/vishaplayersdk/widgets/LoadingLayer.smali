.class public Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mInflated:Z

.field mIsHor:Z

.field mIsOnlyNet:Z

.field private mLogoIv:Landroid/widget/ImageView;

.field private mNetSpeed:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsOnlyNet:Z

    .line 3
    sget-object v1, Lcom/transsion/vishaplayersdk/R$styleable;->LoadingLayer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/transsion/vishaplayersdk/R$styleable;->LoadingLayer_orihor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsHor:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsOnlyNet:Z

    .line 9
    sget-object v0, Lcom/transsion/vishaplayersdk/R$styleable;->LoadingLayer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lcom/transsion/vishaplayersdk/R$styleable;->LoadingLayer_orihor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsHor:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private ensureInflated()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mInflated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mInflated:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$layout;->layout_loading:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->net_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mNetSpeed:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$color;->black:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mLogoIv:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->load_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mBack:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsHor:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLoadingBack()Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->ensureInflated()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getNetSpeedTextView()Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->ensureInflated()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mNetSpeed:Landroid/widget/TextView;

    return-object p0
.end method

.method public isBuffering()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsOnlyNet:Z

    return p0
.end method

.method public setPreparedLoading(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->ensureInflated()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mLogoIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mNetSpeed:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsOnlyNet:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/vishaplayersdk/R$color;->transparent:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mLogoIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/vishaplayersdk/R$color;->black:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mIsHor:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->mLogoIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
