.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;,
        Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/bean/OperateItem;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "banners"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operateItem"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    .line 15
    .line 16
    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->b:I

    .line 17
    .line 18
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->e:I

    .line 22
    .line 23
    return-void
.end method

.method private final g(I)Lcom/transsion/home/bean/BannerData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

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
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->g(I)Lcom/transsion/home/bean/BannerData;

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
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->e:I

    .line 16
    .line 17
    return p1

    .line 18
    :cond_1
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->d:I

    .line 19
    .line 20
    return p1
.end method

.method public final h(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    rem-int/2addr p2, v0

    .line 22
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/transsion/home/bean/BannerData;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    instance-of v1, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->h(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    instance-of v1, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->g(Lcom/transsion/home/bean/BannerData;I)V

    .line 54
    .line 55
    .line 56
    :cond_3
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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/transsion/home/R$layout;->item_sub_top_banner_card:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->e:I

    .line 22
    .line 23
    if-ne p2, v0, :cond_0

    .line 24
    .line 25
    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->b:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    .line 42
    .line 43
    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;-><init>(Landroid/view/View;ILcom/transsion/home/bean/OperateItem;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p2
.end method
