.class public Lcom/mgmi/ViewGroup/convenientbanner/a/a;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/viewpager/widget/PagerAdapter;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/mgmi/ViewGroup/convenientbanner/b/a;

.field private c:Z

.field private d:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/mgmi/ViewGroup/convenientbanner/b/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/ViewGroup/convenientbanner/b/a;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->c:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->e:I

    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->b:Lcom/mgmi/ViewGroup/convenientbanner/b/a;

    iput-object p2, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public a(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    rem-int/2addr p1, p0

    return p1
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->b:Lcom/mgmi/ViewGroup/convenientbanner/b/a;

    invoke-interface {p2}, Lcom/mgmi/ViewGroup/convenientbanner/b/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/ViewGroup/convenientbanner/b/b;

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/mgmi/ViewGroup/convenientbanner/b/b;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 8
    sget v1, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ViewGroup/convenientbanner/b/b;

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p3, p1, p0}, Lcom/mgmi/ViewGroup/convenientbanner/b/b;->a(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public a(Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->d:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->c:Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->d:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->d:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getFristItem()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->d:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getLastItem()I

    move-result p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->d:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->c:Z

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a()I

    move-result p0

    if-eqz v0, :cond_0

    mul-int/lit16 p0, p0, 0x12c

    :cond_0
    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
