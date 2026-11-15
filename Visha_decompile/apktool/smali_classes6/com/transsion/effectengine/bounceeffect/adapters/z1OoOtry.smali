.class public final Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;


# instance fields
.field public final z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;->z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;->z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public final isInAbsoluteEnd()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;->z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;->z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->canScrollVertically(I)Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->canScrollHorizontally(I)Z

    move-result p0

    goto :goto_0
.end method

.method public final isInAbsoluteStart()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;->z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;->z1OoOdo:Landroidx/viewpager2/widget/ViewPager2;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->canScrollVertically(I)Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v2

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->canScrollHorizontally(I)Z

    move-result p0

    goto :goto_0
.end method
