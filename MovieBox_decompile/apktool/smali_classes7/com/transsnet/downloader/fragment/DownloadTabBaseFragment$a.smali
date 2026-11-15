.class public final Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field final synthetic e:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "defList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->e:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 7
    .line 8
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->c:Ljava/util/List;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    .line 21
    .line 22
    check-cast p3, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic i(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->l(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j(ILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Llj/a;->b(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    mul-int/lit8 p1, v1, 0x2

    .line 17
    .line 18
    move v3, v2

    .line 19
    move v2, p1

    .line 20
    move p1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 27
    .line 28
    if-ne p1, p2, :cond_1

    .line 29
    .line 30
    mul-int/lit8 p1, v1, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p1, v2

    .line 34
    :goto_0
    add-int/2addr v2, v1

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 36
    .line 37
    .line 38
    add-int/2addr v1, p1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private static final l(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    if-ne p0, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->l0()Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p1, p3}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setDotVisibility(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p2, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

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
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->e:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 12
    .line 13
    instance-of v1, p1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne p2, v1, :cond_0

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    check-cast v1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->x0(Lcom/transsnet/downloader/widget/FileManagerTabTitleView;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/transsnet/downloader/fragment/y4;

    .line 38
    .line 39
    invoke-direct {v1, p2, p1, p0}, Lcom/transsnet/downloader/fragment/y4;-><init>(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->j(ILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
