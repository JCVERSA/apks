.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "tabList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

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
    .locals 3

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
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v2, v2, [Ljava/lang/Integer;

    .line 18
    .line 19
    aput-object v1, v2, p1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object v1, v2, p1

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    aput-object v1, v2, p1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
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
    new-instance v0, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/t;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/ugc/fragment/t;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    const/4 v0, -0x2

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-static {v0}, Llj/a;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x3

    .line 22
    .line 23
    move v3, v1

    .line 24
    move v1, v0

    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    if-ne p2, v2, :cond_1

    .line 36
    .line 37
    mul-int/lit8 v0, v0, 0x3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v0, v1

    .line 41
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method
