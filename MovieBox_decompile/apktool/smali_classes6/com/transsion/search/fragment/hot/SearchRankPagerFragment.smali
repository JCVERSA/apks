.class public final Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lvp/f;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "a0",
        "(Landroid/view/LayoutInflater;)Lvp/f;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "b0",
        "lazyLoadData",
        "",
        "a",
        "Z",
        "hasReported",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "b",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "searchViewModel",
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
.field public static final c:Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;


# instance fields
.field private a:Z

.field private b:Lcom/transsion/search/viewmodel/SearchViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;

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
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    sget-object v0, Lij/h;->a:Lij/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Lij/h;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v3, "hotRankItem"

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/transsion/search/bean/HotRankItem;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    instance-of v3, v1, Lcom/transsion/search/bean/HotRankItem;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move-object v8, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v8, v2

    .line 35
    :goto_1
    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_2
    :goto_2
    move-object v9, v1

    .line 47
    goto :goto_4

    .line 48
    :cond_3
    :goto_3
    const-string v1, "mb_sug"

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_4
    const/4 v10, 0x0

    .line 52
    if-eqz v8, :cond_5

    .line 53
    .line 54
    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getItems()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    check-cast v1, Ljava/lang/Iterable;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    move v3, v10

    .line 67
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    add-int/lit8 v12, v3, 0x1

    .line 78
    .line 79
    if-gez v3, :cond_4

    .line 80
    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 82
    .line 83
    .line 84
    :cond_4
    move-object v2, v1

    .line 85
    check-cast v2, Lcom/transsion/search/bean/HotSubject;

    .line 86
    .line 87
    sget-object v1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    move v6, v0

    .line 98
    move-object v7, v9

    .line 99
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/search/widget/d$a;->n(Lcom/transsion/search/bean/HotSubject;ILjava/lang/String;IZLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move v3, v12

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    if-eqz v8, :cond_7

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getGroups()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    check-cast v1, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    :goto_6
    move v3, v10

    .line 119
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    add-int/lit8 v10, v3, 0x1

    .line 130
    .line 131
    if-gez v3, :cond_6

    .line 132
    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 134
    .line 135
    .line 136
    :cond_6
    move-object v2, v1

    .line 137
    check-cast v2, Lcom/transsion/search/bean/GroupInfo;

    .line 138
    .line 139
    sget-object v1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 140
    .line 141
    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    move v6, v0

    .line 150
    move-object v7, v9

    .line 151
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/search/widget/d$a;->l(Lcom/transsion/search/bean/GroupInfo;ILjava/lang/String;IZLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_7
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->a:Z

    .line 157
    .line 158
    :cond_8
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->a0(Landroid/view/LayoutInflater;)Lvp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

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
    const-string v0, "hotRankItem"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/search/bean/HotRankItem;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, p2

    .line 23
    :goto_0
    instance-of v0, p1, Lcom/transsion/search/bean/HotRankItem;

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
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "Group"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Collection;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getGroups()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/Collection;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    :cond_4
    :goto_1
    return-void

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lvp/f;

    .line 80
    .line 81
    const-string v1, "TV"

    .line 82
    .line 83
    const-string v2, "Movie"

    .line 84
    .line 85
    if-eqz v0, :cond_c

    .line 86
    .line 87
    iget-object v0, v0, Lvp/f;->c:Landroid/widget/ImageView;

    .line 88
    .line 89
    if-eqz v0, :cond_c

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/16 v5, 0xa82

    .line 100
    .line 101
    if-eq v4, v5, :cond_a

    .line 102
    .line 103
    const v5, 0x4714f10

    .line 104
    .line 105
    .line 106
    if-eq v4, v5, :cond_8

    .line 107
    .line 108
    const v5, 0x473fe05

    .line 109
    .line 110
    .line 111
    if-eq v4, v5, :cond_6

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    const-string v4, "Music"

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_music:I

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_9

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_9
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_movie:I

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_b

    .line 141
    .line 142
    :goto_2
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_community:I

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_b
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_tv:I

    .line 146
    .line 147
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    .line 149
    .line 150
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lvp/f;

    .line 155
    .line 156
    if-eqz v0, :cond_14

    .line 157
    .line 158
    iget-object v0, v0, Lvp/f;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    if-eqz v0, :cond_14

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-string v4, "getResources(...)"

    .line 167
    .line 168
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v3}, Lcom/transsion/search/f;->e(Landroid/content/res/Resources;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_d

    .line 176
    .line 177
    new-instance v4, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    const/4 v6, 0x2

    .line 184
    invoke-direct {v4, v5, v6}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_d
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_e

    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_e

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_e

    .line 225
    .line 226
    new-instance v1, Ltf/f;

    .line 227
    .line 228
    const/4 v8, 0x5

    .line 229
    const/4 v9, 0x0

    .line 230
    const/4 v5, 0x0

    .line 231
    const/high16 v6, 0x41000000    # 8.0f

    .line 232
    .line 233
    const/4 v7, 0x0

    .line 234
    move-object v4, v1

    .line 235
    invoke-direct/range {v4 .. v9}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 239
    .line 240
    .line 241
    :cond_e
    const-string v1, "mb_sug"

    .line 242
    .line 243
    if-eqz p1, :cond_11

    .line 244
    .line 245
    new-instance p1, Lcom/transsion/search/fragment/hot/adapter/c;

    .line 246
    .line 247
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    iget-object v4, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 256
    .line 257
    if-eqz v4, :cond_10

    .line 258
    .line 259
    invoke-virtual {v4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    if-nez v4, :cond_f

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_f
    move-object v1, v4

    .line 267
    :cond_10
    :goto_5
    invoke-direct {p1, v2, v3, v1}, Lcom/transsion/search/fragment/hot/adapter/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getGroups()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    check-cast p2, Ljava/util/Collection;

    .line 275
    .line 276
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_11
    new-instance p1, Lcom/transsion/search/fragment/hot/adapter/h;

    .line 281
    .line 282
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    iget-object v5, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 291
    .line 292
    if-eqz v5, :cond_13

    .line 293
    .line 294
    invoke-virtual {v5}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    if-nez v5, :cond_12

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_12
    move-object v1, v5

    .line 302
    :cond_13
    :goto_6
    invoke-direct {p1, v2, v4, v3, v1}, Lcom/transsion/search/fragment/hot/adapter/h;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getItems()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    check-cast p2, Ljava/util/Collection;

    .line 310
    .line 311
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 312
    .line 313
    .line 314
    :goto_7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    .line 316
    .line 317
    :cond_14
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    new-instance p1, Landroidx/lifecycle/v0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "requireActivity(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 18
    .line 19
    .line 20
    const-class v0, Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    :cond_0
    check-cast p1, Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 54
    .line 55
    return-void
.end method
