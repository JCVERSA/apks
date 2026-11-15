.class public final Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultTabFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_5

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lvp/h;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lvp/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_1
    move v5, p1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 p1, -0x1

    .line 45
    goto :goto_1

    .line 46
    :goto_2
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    iget-object v3, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->m0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    sub-long v3, p1, v3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_3
    :goto_3
    move-object v6, p1

    .line 88
    goto :goto_5

    .line 89
    :cond_4
    :goto_4
    const-string p1, "mb_sug"

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_5
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/search/widget/d$a;->p(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$d;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    invoke-static {p1, v0, v1}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->q0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;J)V

    .line 103
    .line 104
    .line 105
    :goto_6
    return-void
.end method
