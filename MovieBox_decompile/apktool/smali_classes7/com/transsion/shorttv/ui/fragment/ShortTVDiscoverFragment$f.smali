.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

.field final synthetic f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;Lcom/transsion/shorttv/base/widget/SafeRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->e:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->e:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->S0()Lcom/transsion/shorttv/ui/adapter/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lbs/a;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lbs/a;->b()Lcom/transsion/shorttv/bean/Subject;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    const/4 v0, 0x1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move p1, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_1
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getContext(...)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lhr/a;->a(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v0, 0x2

    .line 56
    :goto_2
    return v0
.end method
