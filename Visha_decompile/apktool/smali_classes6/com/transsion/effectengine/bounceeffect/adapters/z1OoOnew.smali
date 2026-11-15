.class public final Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final z1OoOdo:Landroidx/viewpager/widget/ViewPager;

.field public z1OoOfor:F

.field public z1OoOif:I


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOif:I

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOdo:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOif:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOfor:F

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOdo:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public final isInAbsoluteEnd()Z
    .locals 3

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOif:I

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOdo:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOfor:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isInAbsoluteStart()Z
    .locals 1

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOif:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOfor:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOif:I

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;->z1OoOfor:F

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method
