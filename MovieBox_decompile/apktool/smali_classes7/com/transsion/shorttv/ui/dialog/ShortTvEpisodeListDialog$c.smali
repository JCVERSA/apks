.class public final Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

.field final synthetic d:Lqr/s;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lqr/s;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->d:Lqr/s;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->u0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->d:Lqr/s;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget v4, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->a:I

    .line 28
    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    iput v3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->a:I

    .line 32
    .line 33
    div-int/lit8 v3, v3, 0x19

    .line 34
    .line 35
    iget v4, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->b:I

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v4, v0, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->x0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v4, v0, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, v0, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->x0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 66
    .line 67
    .line 68
    iput v3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->b:I

    .line 69
    .line 70
    :cond_1
    if-nez p2, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->s0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/adapter/r;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Lnr/e;

    .line 93
    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    invoke-virtual {p2}, Lnr/e;->c()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-lez v0, :cond_2

    .line 101
    .line 102
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p2}, Lnr/e;->c()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {v0, v2, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->s0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/adapter/r;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lnr/e;

    .line 126
    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-lez p2, :cond_3

    .line 134
    .line 135
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {p2, v2, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-void
.end method
