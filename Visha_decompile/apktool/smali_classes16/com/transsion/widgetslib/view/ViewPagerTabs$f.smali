.class public Lcom/transsion/widgetslib/view/ViewPagerTabs$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/ViewPagerTabs;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Lbdc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->m(Lcom/transsion/widgetslib/view/ViewPagerTabs;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->j(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->g(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->g(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$f;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->k(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->e(IF)V

    :cond_0
    return-void
.end method
