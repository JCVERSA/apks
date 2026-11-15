.class Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;
.super Lcom/transsion/widgets/DelegatingPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-direct {p0, p2}, Lcom/transsion/widgets/DelegatingPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/widgets/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/widgets/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :cond_2
    :goto_1
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPageWidth(I)F
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/widgets/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/widgets/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/widgets/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;->this$0:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/widgets/RtlViewPager;->a(Lcom/transsion/widgets/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/widgets/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
