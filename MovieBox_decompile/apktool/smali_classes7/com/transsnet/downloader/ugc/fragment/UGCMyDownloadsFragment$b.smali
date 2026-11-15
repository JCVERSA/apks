.class public final Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field final synthetic d:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "tabList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->d:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 7
    .line 8
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->c:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->j(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->c:Ljava/util/List;

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
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Llj/a;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x62

    .line 24
    .line 25
    invoke-static {v2}, Llj/a;->b(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineWidth(F)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 42
    .line 43
    const/high16 v3, 0x40000000    # 2.0f

    .line 44
    .line 45
    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    .line 50
    .line 51
    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 52
    .line 53
    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget v3, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 62
    .line 63
    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget v4, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 72
    .line 73
    invoke-static {p1, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 v4, 0x3

    .line 82
    new-array v4, v4, [Ljava/lang/Integer;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    aput-object v2, v4, v5

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    aput-object v3, v4, v2

    .line 89
    .line 90
    aput-object p1, v4, v1

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 93
    .line 94
    .line 95
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
    new-instance v0, Lcom/transsnet/downloader/widget/UGCMyDownloadsTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/widget/UGCMyDownloadsTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->c:Ljava/util/List;

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
    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/o0;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/ugc/fragment/o0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
