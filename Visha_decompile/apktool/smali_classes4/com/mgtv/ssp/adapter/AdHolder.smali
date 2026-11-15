.class public Lcom/mgtv/ssp/adapter/AdHolder;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/widget/FrameLayout;

.field public c:Lcom/hunantv/imgo/adview/AdTopBar;

.field d:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/mgtv/ssp/R$id;->card_p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/AdHolder;->a:Landroid/widget/FrameLayout;

    sget v0, Lcom/mgtv/ssp/R$id;->ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    sget v0, Lcom/mgtv/ssp/R$id;->ad_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/adview/AdTopBar;

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/AdHolder;->c:Lcom/hunantv/imgo/adview/AdTopBar;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/mgtv/ssp/adapter/AdHolder;->d:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/AdHolder;->a:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p1, :cond_3

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/mgtv/ssp/adapter/AdHolder;->d:I

    if-gtz p1, :cond_2

    const/16 p1, 0x28

    iput p1, p0, Lcom/mgtv/ssp/adapter/AdHolder;->d:I

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget p0, p0, Lcom/mgtv/ssp/adapter/AdHolder;->d:I

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method
