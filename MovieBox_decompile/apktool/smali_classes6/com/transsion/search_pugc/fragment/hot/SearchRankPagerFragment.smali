.class public final Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lvp/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lvp/f;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "a0",
        "(Landroid/view/LayoutInflater;)Lvp/f;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "b0",
        "lazyLoadData",
        "",
        "a",
        "Z",
        "hasReported",
        "",
        "b",
        "I",
        "rankIndex",
        "c",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final c:Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a0(Landroid/view/LayoutInflater;)Lvp/f;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lvp/f;->c(Landroid/view/LayoutInflater;)Lvp/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public final b0()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v2, "hotRank"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/transsion/search_pugc/bean/HotRank;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    instance-of v2, v0, Lcom/transsion/search_pugc/bean/HotRank;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/search_pugc/bean/HotRank;->getVideos()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    add-int/lit8 v4, v2, 0x1

    .line 52
    .line 53
    if-gez v2, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 56
    .line 57
    .line 58
    :cond_3
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 59
    .line 60
    sget-object v5, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v1}, Lcom/transsion/search_pugc/bean/HotRank;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iget v7, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->b:I

    .line 75
    .line 76
    invoke-virtual {v5, v3, v2, v6, v7}, Lcom/transsion/search_pugc/g;->s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    move v2, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->a:Z

    .line 83
    .line 84
    :cond_5
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->a0(Landroid/view/LayoutInflater;)Lvp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "hotRank"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/search_pugc/bean/HotRank;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, p2

    .line 23
    :goto_0
    instance-of v0, p1, Lcom/transsion/search_pugc/bean/HotRank;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object p2, p1

    .line 28
    :cond_1
    if-nez p2, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const-string v0, "index"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    :goto_1
    iput p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->b:I

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getVideos()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lvp/f;

    .line 63
    .line 64
    const-string v0, "For you"

    .line 65
    .line 66
    if-eqz p1, :cond_9

    .line 67
    .line 68
    iget-object p1, p1, Lvp/f;->c:Landroid/widget/ImageView;

    .line 69
    .line 70
    if-eqz p1, :cond_9

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getCategory()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sparse-switch v2, :sswitch_data_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :sswitch_0
    const-string v2, "Binge-watch"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_tv:I

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :sswitch_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_foryou:I

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :sswitch_2
    const-string v2, "Video"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_movie:I

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :sswitch_3
    const-string v2, "Music"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_8

    .line 125
    .line 126
    :goto_2
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_movie:I

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_music:I

    .line 130
    .line 131
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    .line 133
    .line 134
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lvp/f;

    .line 139
    .line 140
    if-eqz p1, :cond_a

    .line 141
    .line 142
    iget-object p1, p1, Lvp/f;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/transsion/search_pugc/fragment/hot/adapter/g;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget v3, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->b:I

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getCategory()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;-><init>(Ljava/lang/String;IZ)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getVideos()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Ljava/util/Collection;

    .line 182
    .line 183
    invoke-virtual {v1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    .line 188
    .line 189
    :cond_a
    return-void

    .line 190
    nop

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x473fe05 -> :sswitch_3
        0x4ed245b -> :sswitch_2
        0x3ab4f828 -> :sswitch_1
        0x48707507 -> :sswitch_0
    .end sparse-switch
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method
