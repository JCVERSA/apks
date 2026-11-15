.class public Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;
.super Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
.source "SourceFile"


# instance fields
.field public I:Lcom/mgadplus/brower/ImgoAdWebView;

.field public J:Lcom/mgmi/e/a/d;

.field public K:Z

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->K:Z

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->s:I

    .line 4
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->h(Landroid/content/Context;)V

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

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->K:Z

    const/4 p2, 0x4

    .line 7
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->s:I

    .line 8
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->h(Landroid/content/Context;)V

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->K:Z

    const/4 p2, 0x4

    .line 11
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->s:I

    .line 12
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->h(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .locals 8

    sget v0, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->r:Z

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide v4, 0x400228f5c28f5c29L    # 2.27

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v6, p0

    div-double/2addr v6, v4

    double-to-int p0, v6

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v4, p0

    div-double/2addr v4, v2

    double-to-int p0, v4

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double v6, p0

    div-double/2addr v6, v4

    double-to-int p0, v6

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v4, p0

    div-double/2addr v4, v2

    double-to-int p0, v4

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->J:Lcom/mgmi/e/a/d;

    return-void
.end method

.method private i()V
    .locals 5

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->t:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->t:I

    int-to-double v1, p0

    const-wide v3, 0x400228f5c28f5c29L    # 2.27

    div-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v1, p0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->g()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->s:I

    return-object p0
.end method

.method public c(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->c(Lcom/mgmi/model/VASTFloatAd;)V

    sget p1, Lcom/mgmi/R$id;->banner_webview:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/brower/ImgoAdWebView;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->I:Lcom/mgadplus/brower/ImgoAdWebView;

    return-void
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->B:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->B:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getAdStrict()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->e()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->i()V

    :cond_1
    :goto_0
    return-void
.end method
