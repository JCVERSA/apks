.class public Lcom/transsion/widgetslib/view/ViewPagerTabs$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/viewpager/widget/ViewPager;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/widgetslib/view/ViewPagerTabs;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->b:Landroidx/viewpager/widget/ViewPager;

    iput p3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->h(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Lbdc;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->c:I

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->k(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->g(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->c:I

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->c(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->g(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;->d:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method
