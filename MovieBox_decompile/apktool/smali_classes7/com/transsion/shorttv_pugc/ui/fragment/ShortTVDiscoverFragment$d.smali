.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

.field final synthetic f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;Lcom/transsion/shorttv/base/widget/SafeRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ltz p1, :cond_3

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v1

    .line 25
    :goto_0
    if-ge p1, v2, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v3, v1

    .line 49
    :goto_1
    sub-int/2addr p1, v3

    .line 50
    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    :goto_2
    if-eqz p1, :cond_3

    .line 65
    .line 66
    move v1, v0

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v2, "getContext(...)"

    .line 74
    .line 75
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lls/a;->a(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const/4 v0, 0x2

    .line 88
    :goto_3
    return v0
.end method
