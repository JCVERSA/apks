.class public Lcom/transsion/onlinevideo/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/a;->j(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public final synthetic d:Lcom/transsion/onlinevideo/a;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    iput-object p2, p0, Lcom/transsion/onlinevideo/a$a;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/onlinevideo/a$a;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v1, v0}, Lcom/transsion/onlinevideo/a;->g(Lcom/transsion/onlinevideo/a;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/a$a;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v1, v2}, Lcom/transsion/onlinevideo/a;->g(Lcom/transsion/onlinevideo/a;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v1, v2}, Lcom/transsion/onlinevideo/a;->g(Lcom/transsion/onlinevideo/a;Z)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v1}, Lcom/transsion/onlinevideo/a;->a(Lcom/transsion/onlinevideo/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v1}, Lcom/transsion/onlinevideo/a;->e(Lcom/transsion/onlinevideo/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p2}, Lcom/transsion/onlinevideo/a;->f(Lcom/transsion/onlinevideo/a;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p2, v0}, Lcom/transsion/onlinevideo/a;->i(Lcom/transsion/onlinevideo/a;Z)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p2}, Lcom/transsion/onlinevideo/a;->d(Lcom/transsion/onlinevideo/a;)Lcom/transsion/onlinevideo/a$d;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p2}, Lcom/transsion/onlinevideo/a;->d(Lcom/transsion/onlinevideo/a;)Lcom/transsion/onlinevideo/a$d;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/onlinevideo/a$d;->route()V

    :cond_3
    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    iget-object p0, p0, Lcom/transsion/onlinevideo/a$a;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/onlinevideo/a;->k(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {p3, v1}, Lcom/transsion/onlinevideo/a;->h(Lcom/transsion/onlinevideo/a;Z)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/a$a;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayout()Landroid/widget/LinearLayout;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/transsion/onlinevideo/R$id;->iv_arrow:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object v4, p0, Lcom/transsion/onlinevideo/a$a;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge p1, v4, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p1, v1}, Lcom/transsion/onlinevideo/a;->g(Lcom/transsion/onlinevideo/a;Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p1}, Lcom/transsion/onlinevideo/a;->e(Lcom/transsion/onlinevideo/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p1}, Lcom/transsion/onlinevideo/a;->a(Lcom/transsion/onlinevideo/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v4}, Lcom/transsion/onlinevideo/a;->b(Lcom/transsion/onlinevideo/a;)I

    move-result v4

    if-ge p1, v4, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    if-gez p2, :cond_7

    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v4}, Lcom/transsion/onlinevideo/a;->c(Lcom/transsion/onlinevideo/a;)I

    move-result v4

    if-le p1, v4, :cond_7

    :cond_3
    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr p1, p2

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p2}, Lcom/transsion/onlinevideo/a;->c(Lcom/transsion/onlinevideo/a;)I

    move-result p2

    iget-object v4, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v4}, Lcom/transsion/onlinevideo/a;->b(Lcom/transsion/onlinevideo/a;)I

    move-result v4

    invoke-static {p1, p2, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v3, :cond_5

    iget-object p2, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {p2}, Lcom/transsion/onlinevideo/a;->c(Lcom/transsion/onlinevideo/a;)I

    move-result p2

    if-gt p1, p2, :cond_4

    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_pull_back_arrow:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_pull_arrow:I

    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/onlinevideo/a$a;->d:Lcom/transsion/onlinevideo/a;

    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {p0}, Lcom/transsion/onlinevideo/a;->c(Lcom/transsion/onlinevideo/a;)I

    move-result p2

    if-gt p1, p2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/a;->i(Lcom/transsion/onlinevideo/a;Z)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method
