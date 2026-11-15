.class public final Lcom/transsion/postdetail/ui/adapter/f;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/adapter/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        ">;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B5\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/adapter/f;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lt6/i;",
        "Landroid/content/Context;",
        "context",
        "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "adapterFrom",
        "Lbj/b;",
        "exposureHelper",
        "",
        "pageName",
        "pageFrom",
        "<init>",
        "(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lbj/b;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "G",
        "Lbj/b;",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "H",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "imageRecycledViewPool",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final G:Lbj/b;

.field private final H:Landroidx/recyclerview/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lbj/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adapterFrom"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/f;->G:Lbj/b;

    .line 17
    .line 18
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$s;

    .line 19
    .line 20
    invoke-direct {p3}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/f;->H:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 24
    .line 25
    sget-object v2, Lcom/transsion/postdetail/ui/adapter/f$a;->a:[I

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    if-eq v2, v1, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-eq v2, v1, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    if-eq v2, v1, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    if-ne v2, v1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lfo/v;

    .line 45
    .line 46
    invoke-direct {v1, p4, p5, p3}, Lfo/v;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 54
    .line 55
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance v1, Lfo/r;

    .line 60
    .line 61
    invoke-direct {v1, p4, p5, p3}, Lfo/r;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Lfo/t;

    .line 69
    .line 70
    invoke-direct {v1, p4, p5, p3}, Lfo/t;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance v1, Lfo/s;

    .line 78
    .line 79
    invoke-direct {v1, p4, p5, p3}, Lfo/s;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    sget-object p3, Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;->NEARBY:Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    .line 86
    .line 87
    if-ne p2, p3, :cond_5

    .line 88
    .line 89
    const/4 p3, 0x0

    .line 90
    new-array p3, p3, [Ljava/lang/Object;

    .line 91
    .line 92
    const-class p4, Lep/f;

    .line 93
    .line 94
    invoke-static {p4, p3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Lep/f;

    .line 99
    .line 100
    if-eqz p3, :cond_4

    .line 101
    .line 102
    sget-object p4, Lcom/transsion/room/api/RoomsViewType;->TYPE_ROOM_HOME:Lcom/transsion/room/api/RoomsViewType;

    .line 103
    .line 104
    invoke-interface {p3, p1, p4}, Lep/f;->c(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Lep/e;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :cond_4
    if-eqz v0, :cond_5

    .line 109
    .line 110
    new-instance p1, Lfo/u;

    .line 111
    .line 112
    invoke-direct {p1, v0}, Lfo/u;-><init>(Lep/e;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    sget-object p1, Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;->DEFAULT:Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    .line 119
    .line 120
    if-ne p2, p1, :cond_6

    .line 121
    .line 122
    new-instance p1, Lfo/q;

    .line 123
    .line 124
    invoke-direct {p1}, Lfo/q;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Lfo/p;

    .line 131
    .line 132
    invoke-direct {p1}, Lfo/p;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 8

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/f;->G:Lbj/b;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string p1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutManager"

    .line 26
    .line 27
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v6, 0x8

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static/range {v1 .. v7}, Lbj/b;->j(Lbj/b;Landroidx/recyclerview/widget/RecyclerView$m;IZZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->POST_DETAIL_FOR_YOU_NATIVE_AD:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_LIST:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_CACHE_LIST_START:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_CACHE_LIST_END:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1

    .line 64
    :cond_3
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/adapter/f;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
