.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ColorTransitionPagerTitleView;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onDeselected(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 0

    .line 1
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->b:I

    .line 2
    .line 3
    iget p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->a:I

    .line 4
    .line 5
    invoke-static {p3, p1, p2}, Lwy/a;->a(FII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 0

    .line 1
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->a:I

    .line 2
    .line 3
    iget p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->b:I

    .line 4
    .line 5
    invoke-static {p3, p1, p2}, Lwy/a;->a(FII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSelected(II)V
    .locals 0

    .line 1
    return-void
.end method
