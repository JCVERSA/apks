.class public final Lcom/transsion/home/adapter/suboperate/adapter/v;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# instance fields
.field private a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/adapter/suboperate/provider/i;

.field private final d:Lcom/transsion/home/bean/OperateItem;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "banners"

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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 20
    .line 21
    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->b:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->c:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->d:Lcom/transsion/home/bean/OperateItem;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->f:I

    .line 29
    .line 30
    return-void
.end method

.method private final h(I)Lcom/transsion/home/bean/BannerData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    rem-int/2addr p1, v0

    .line 18
    if-ltz p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 21
    .line 22
    check-cast v0, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ge p1, v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/transsion/home/bean/BannerData;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/v;->h(I)Lcom/transsion/home/bean/BannerData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->f:I

    .line 16
    .line 17
    return p1

    .line 18
    :cond_1
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->e:I

    .line 19
    .line 20
    return p1
.end method

.method public final i(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    rem-int v0, p2, v0

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/v;->getItemViewType(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->f:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    check-cast v3, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    .line 38
    .line 39
    :cond_1
    if-eqz v3, :cond_4

    .line 40
    .line 41
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/v;->h(I)Lcom/transsion/home/bean/BannerData;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->i(Lcom/transsion/home/bean/BannerData;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    instance-of v1, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    move-object v3, p1

    .line 54
    check-cast v3, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;

    .line 55
    .line 56
    :cond_3
    if-eqz v3, :cond_4

    .line 57
    .line 58
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/v;->h(I)Lcom/transsion/home/bean/BannerData;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v3, p1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->g(Lcom/transsion/home/bean/BannerData;I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 3

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->f:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget v0, Lcom/transsion/home/R$layout;->item_sub_banner_ad:I

    .line 20
    .line 21
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget v0, Lcom/transsion/home/R$layout;->item_sub_view_pager:I

    .line 43
    .line 44
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->b:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->c:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/v;->d:Lcom/transsion/home/bean/OperateItem;

    .line 58
    .line 59
    invoke-direct {p2, p1, v0, v1, v2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;-><init>(Landroid/view/View;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V

    .line 60
    .line 61
    .line 62
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    check-cast v2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, v1

    .line 19
    :goto_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move-object v1, p1

    .line 24
    check-cast v1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    .line 25
    .line 26
    :cond_1
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->k()V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method
