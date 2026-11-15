.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field final synthetic d:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "tabList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->d:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 7
    .line 8
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->c:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->c:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-array v2, v3, [Ljava/lang/Integer;

    .line 27
    .line 28
    aput-object p1, v2, v1

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 35
    .line 36
    invoke-direct {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Llj/a;->b(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-float p1, p1

    .line 47
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 48
    .line 49
    .line 50
    const/16 p1, 0x61

    .line 51
    .line 52
    invoke-static {p1}, Llj/a;->b(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-float p1, p1

    .line 57
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineWidth(F)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 69
    .line 70
    const/high16 v4, 0x40000000    # 2.0f

    .line 71
    .line 72
    invoke-direct {p1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    .line 77
    .line 78
    const/4 p1, -0x1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v6, 0x3

    .line 92
    new-array v6, v6, [Ljava/lang/Integer;

    .line 93
    .line 94
    aput-object v4, v6, v1

    .line 95
    .line 96
    aput-object v5, v6, v3

    .line 97
    .line 98
    aput-object p1, v6, v0

    .line 99
    .line 100
    invoke-virtual {v2, v6}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    move-object v0, v2

    .line 104
    :goto_0
    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsnet/downloader/ugc/widget/UGCDownloadMainTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/ugc/widget/UGCDownloadMainTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/k;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/ugc/fragment/k;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final k(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "newTabs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->c:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lxy/a;->e()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
