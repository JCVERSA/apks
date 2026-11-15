.class public abstract Lkcc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/yandex/div/R$id;->div_gallery:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lkcc;->a:[I

    return-void
.end method

.method public static final a(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 3

    const/4 v0, 0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p0

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public static final b(Landroidx/viewpager/widget/ViewPager;I)Z
    .locals 2

    const/4 v0, 0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public static final c(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/yandex/div/R$id;->div_tabs_block:I

    if-ne v7, v8, :cond_2

    invoke-static {v6, v0, v1}, Lndc;->c(Landroid/view/View;FF)Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lcom/yandex/div/R$id;->div_tabs_pager_container:I

    invoke-static {v6, v7}, Lndc;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type androidx.viewpager.widget.ViewPager"

    invoke-static {v7, v8}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v7, v0, v1, p1}, Lkcc;->e(Landroidx/viewpager/widget/ViewPager;FFI)Z

    move-result v7

    if-eqz v7, :cond_2

    return v4

    :cond_2
    instance-of v7, v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_3

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v0, v1, p1}, Lkcc;->d(Landroidx/recyclerview/widget/RecyclerView;FFI)Z

    move-result v6

    if-eqz v6, :cond_3

    return v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public static final d(Landroidx/recyclerview/widget/RecyclerView;FFI)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lndc;->c(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p3}, Lkcc;->a(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(Landroidx/viewpager/widget/ViewPager;FFI)Z
    .locals 5

    invoke-static {p0, p3}, Lkcc;->b(Landroidx/viewpager/widget/ViewPager;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lkcc;->a:[I

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    sget-object v4, Lkcc;->a:[I

    aget v4, v4, v3

    invoke-static {p0, v4}, Lndc;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    invoke-static {v4, p1, p2, p3}, Lkcc;->d(Landroidx/recyclerview/widget/RecyclerView;FFI)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
