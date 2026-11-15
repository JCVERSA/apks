.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/home/adapter/suboperate/provider/i;

.field private final c:Lcom/transsion/home/bean/OperateItem;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bannerProvider"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "operateItem"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    .line 20
    .line 21
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->c:Lcom/transsion/home/bean/OperateItem;

    .line 24
    .line 25
    sget p2, Lcom/transsion/home/R$id;->home_sub_pager_items_status:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, "findViewById(...)"

    .line 32
    .line 33
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->d:Landroid/view/View;

    .line 37
    .line 38
    sget p2, Lcom/transsion/home/R$id;->home_sub_pager_items_top_mask:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->e:Landroid/view/View;

    .line 48
    .line 49
    sget p2, Lcom/transsion/home/R$id;->home_sub_pager_item_image:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast p1, Landroid/widget/ImageView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    .line 61
    .line 62
    return-void
.end method

.method public static synthetic f(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->h(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final h(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;ILandroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 8
    .line 9
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 16
    .line 17
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p3, "&module_name=opt_banner_free&autoPlay=true&ops="

    .line 38
    .line 39
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {v0, p3}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    invoke-static {p3}, Lij/k;->o(Landroid/net/Uri;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-object p3, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/16 v5, 0xc

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    const-string p3, "play_subject"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string p3, "download_subject"

    .line 88
    .line 89
    :goto_0
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->k(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method private final i(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v2, 0xff

    .line 18
    .line 19
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x99

    .line 24
    .line 25
    invoke-static {v3, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v4, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v2, v3, p1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method private final j(Lcom/transsion/home/bean/BannerData;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/i;->T(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "event_type"

    .line 24
    .line 25
    const-string v2, "browse_banner"

    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v1, "sequence"

    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v1, "tabId"

    .line 46
    .line 47
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-static {p1, v0}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->c:Lcom/transsion/home/bean/OperateItem;

    .line 56
    .line 57
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 61
    .line 62
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 63
    .line 64
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final k(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "click_banner_poster"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p2, "module_name"

    .line 23
    .line 24
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "tabId"

    .line 34
    .line 35
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v0}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->c:Lcom/transsion/home/bean/OperateItem;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 49
    .line 50
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 51
    .line 52
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/home/bean/BannerData;I)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getContext(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lzg/h;->e(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v7, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder$bindData$1;

    .line 37
    .line 38
    invoke-direct {v7, p1, p0, v3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder$bindData$1;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v4, ""

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    :cond_2
    move-object v2, v4

    .line 79
    :cond_3
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Lni/f$b;->m(I)Lni/f$b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move-object v4, v1

    .line 101
    :cond_5
    :goto_0
    invoke-virtual {v0, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->d:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/high16 v2, 0x42300000    # 44.0f

    .line 121
    .line 122
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    add-int/2addr v1, v2

    .line 127
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getAverageHueDark()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    move-object v0, v3

    .line 141
    :goto_2
    if-eqz v0, :cond_7

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    const/4 v2, 0x2

    .line 145
    const-string v4, "#"

    .line 146
    .line 147
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v2, 0x1

    .line 152
    if-ne v1, v2, :cond_7

    .line 153
    .line 154
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->d:Landroid/view/View;

    .line 155
    .line 156
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->e:Landroid/view/View;

    .line 164
    .line 165
    invoke-direct {p0, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->i(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->j(Lcom/transsion/home/bean/BannerData;I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    .line 176
    .line 177
    new-instance v1, Lcom/transsion/home/adapter/suboperate/adapter/k;

    .line 178
    .line 179
    invoke-direct {v1, p1, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/k;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method
