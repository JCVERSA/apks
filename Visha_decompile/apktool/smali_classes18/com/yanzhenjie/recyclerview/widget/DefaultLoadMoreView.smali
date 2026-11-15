.class public Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/widget/ProgressBar;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 7
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42700000    # 60.0f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yanzhenjie/recyclerview/x/R$layout;->x_recycler_view_load_more:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    sget p1, Lcom/yanzhenjie/recyclerview/x/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->b:Landroid/widget/ProgressBar;

    .line 11
    sget p1, Lcom/yanzhenjie/recyclerview/x/R$id;->tv_load_more_message:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadError(ILjava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_load_error:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLoadFinish(ZZ)V
    .locals 1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    sget p1, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_data_empty:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    sget p1, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_more_not:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onLoading()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    sget v0, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_load_more_message:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$f;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->c:Landroid/widget/TextView;

    sget p1, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_click_load_more:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
