.class public final Lcom/transsion/moviedetail/adapter/j;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B3\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J%\u0010\u0015\u001a\u00020\u000f2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/j;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lt6/i;",
        "",
        "postSubjectList",
        "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "viewModel",
        "",
        "pageName",
        "pageFrom",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "",
        "position",
        "",
        "w0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V",
        "data",
        "N1",
        "(Ljava/util/List;I)I",
        "Q1",
        "()V",
        "G",
        "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "S1",
        "()Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "H",
        "Ljava/lang/String;",
        "R1",
        "()Ljava/lang/String;",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "I",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "imageRecycledViewPool",
        "MovieDetail_psRelease"
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
.field private final G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

.field private final H:Ljava/lang/String;

.field private final I:Landroidx/recyclerview/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;",
            "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "postSubjectList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/j;->G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/j;->H:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$s;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/j;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v1, v0

    .line 35
    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/enum/PostListSource;->PROFILE:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const-class v4, Lio/b;

    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    new-array v1, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v4, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lio/b;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v1, p3, p4, p1}, Lio/b;->o(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object p1, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v4, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lio/b;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v1, p3, p4, p1}, Lio/b;->h(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    new-instance p1, Lkm/b;

    .line 79
    .line 80
    invoke-direct {p1}, Lkm/b;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lkm/d;

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->getValue()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_4
    invoke-direct {p1, p3, v0}, Lkm/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
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
    move-result-object v0

    .line 10
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_LIST:Lcom/transsion/moviedetailapi/bean/MediaType;

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
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->SUBJECT_DETAIL_NATIVE_AD:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_1
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public final Q1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final R1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/j;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S1()Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/j;->G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    return-object v0
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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/j;->w0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 10
    .line 11
    sget v0, Lcom/transsion/moviedetail/R$id;->root:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/moviedetail/adapter/j;->G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->H(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
