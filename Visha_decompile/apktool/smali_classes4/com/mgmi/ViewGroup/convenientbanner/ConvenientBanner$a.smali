.class Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->b(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-static {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->c(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;

    move-result-object v0

    invoke-static {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->d(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
