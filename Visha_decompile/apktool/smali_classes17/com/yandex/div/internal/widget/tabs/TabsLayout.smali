.class public Lcom/yandex/div/internal/widget/tabs/TabsLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0010\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0012\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0012\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u001e\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u000c8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00178\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\"\u001a\u00020\u001d8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R$\u0010*\u001a\u0004\u0018\u00010#8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/tabs/TabsLayout;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/widget/LinearLayout$LayoutParams;",
        "b",
        "()Landroid/widget/LinearLayout$LayoutParams;",
        "a",
        "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;",
        "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;",
        "getTitleLayout",
        "()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;",
        "titleLayout",
        "Landroid/view/View;",
        "c",
        "Landroid/view/View;",
        "getDivider",
        "()Landroid/view/View;",
        "divider",
        "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;",
        "d",
        "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;",
        "getPagerLayout",
        "()Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;",
        "pagerLayout",
        "Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;",
        "e",
        "Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;",
        "getViewPager",
        "()Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;",
        "viewPager",
        "Lpr2;",
        "f",
        "Lpr2;",
        "getDivTabsAdapter",
        "()Lpr2;",
        "setDivTabsAdapter",
        "(Lpr2;)V",
        "divTabsAdapter",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

.field public final c:Landroid/view/View;

.field public final d:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

.field public final e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

.field public f:Lpr2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget p2, Lcom/yandex/div/R$id;->div_tabs_block:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 5
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    new-instance v1, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    const/4 v2, 0x0

    sget v3, Lcom/yandex/div/R$attr;->divTabIndicatorLayoutStyle:I

    invoke-direct {v1, p1, v2, v3}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget v2, Lcom/yandex/div/R$id;->base_tabbed_title_container_scroller:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 9
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yandex/div/R$dimen;->title_tab_title_margin_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yandex/div/R$dimen;->title_tab_title_margin_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 12
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 14
    iput-object v1, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    .line 15
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    sget v3, Lcom/yandex/div/R$id;->div_tabs_divider:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 17
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    sget v3, Lcom/yandex/div/R$color;->div_separator_color:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    iput-object v1, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->c:Landroid/view/View;

    .line 20
    new-instance v1, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-direct {v1, p1}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    sget v3, Lcom/yandex/div/R$id;->div_tabs_pager_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 22
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x2

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 24
    invoke-static {v1, p2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 25
    iput-object v1, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    .line 26
    new-instance p2, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    sget v1, Lcom/yandex/div/R$id;->div_tabs_container_helper:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setId(I)V

    .line 28
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p2, v2}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->setCollapsiblePaddingBottom(I)V

    .line 30
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    .line 32
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getViewPager()Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->d:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    .line 36
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getDivider()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getPagerLayout()Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yandex/div/R$dimen;->div_separator_delimiter_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yandex/div/R$dimen;->div_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yandex/div/R$dimen;->title_tab_title_separator_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/yandex/div/R$dimen;->title_tab_title_margin_vertical:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public final b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/yandex/div/R$dimen;->title_tab_title_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p0, 0x800003

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public getDivTabsAdapter()Lpr2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->f:Lpr2;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->c:Landroid/view/View;

    return-object p0
.end method

.method public getPagerLayout()Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->d:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    return-object p0
.end method

.method public getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    return-object p0
.end method

.method public getViewPager()Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    return-object p0
.end method

.method public setDivTabsAdapter(Lpr2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->f:Lpr2;

    return-void
.end method
