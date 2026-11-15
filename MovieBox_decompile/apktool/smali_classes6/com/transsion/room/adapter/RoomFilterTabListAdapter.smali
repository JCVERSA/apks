.class public final Lcom/transsion/room/adapter/RoomFilterTabListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/room/adapter/RoomFilterTabListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomFilter;",
        "Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;",
        "<init>",
        "()V",
        "holder",
        "",
        "isSelected",
        "",
        "E1",
        "(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Z)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "D1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;",
        "item",
        "B1",
        "(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;Ljava/util/List;)V",
        "FilterTabListItemVH",
        "Room_psRelease"
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/room/R$layout;->item_room_list_tab:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final E1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;->f()Lfp/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lfp/z;->b:Lcom/noober/background/view/BLFrameLayout;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;->f()Lfp/z;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lfp/z;->c:Lcom/noober/background/view/BLTextView;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;->f()Lfp/z;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lfp/z;->d:Landroid/view/View;

    .line 24
    .line 25
    const-string v1, "vSelected"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v1, 0x8

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;->f()Lfp/z;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lfp/z;->c:Lcom/noober/background/view/BLTextView;

    .line 44
    .line 45
    const-string v1, "getContext(...)"

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Luf/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Luf/a;->d(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;->f()Lfp/z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lfp/z;->c:Lcom/noober/background/view/BLTextView;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomFilter;->getTitle()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomFilter;->isSelected()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter;->E1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected C1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;",
            "Lcom/transsion/moviedetailapi/bean/RoomFilter;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p2, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter;->E1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method protected D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;
    .locals 1

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Lfp/z;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/z;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;-><init>(Lfp/z;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomFilter;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter;->B1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomFilter;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter;->C1(Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;Lcom/transsion/moviedetailapi/bean/RoomFilter;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/RoomFilterTabListAdapter;->D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomFilterTabListAdapter$FilterTabListItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
