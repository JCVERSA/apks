.class public abstract Lrcc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lrcc;->b(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    new-instance p1, Lqcc;

    invoke-direct {p1, p0, p3}, Lqcc;-><init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
