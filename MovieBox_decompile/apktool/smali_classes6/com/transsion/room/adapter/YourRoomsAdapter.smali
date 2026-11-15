.class public final Lcom/transsion/room/adapter/YourRoomsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/room/adapter/YourRoomsAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
        "<init>",
        "()V",
        "holder",
        "",
        "newCount",
        "",
        "E1",
        "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "D1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
        "item",
        "B1",
        "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V",
        "F",
        "I",
        "coverSize",
        "YourRoomsItemVH",
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


# instance fields
.field private final F:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/room/R$layout;->item_your_rooms:I

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
    const/high16 v0, 0x429c0000    # 78.0f

    .line 9
    .line 10
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/transsion/room/adapter/YourRoomsAdapter;->F:I

    .line 15
    .line 16
    return-void
.end method

.method private final E1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lfp/a0;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v1, v1, Lfp/a0;->d:Lcom/noober/background/view/BLTextView;

    .line 7
    .line 8
    const-string v2, "tvNewCount"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, p2, v2

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    move v2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    move v2, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v2, 0x8

    .line 28
    .line 29
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0x63

    .line 33
    .line 34
    cmp-long v1, p2, v1

    .line 35
    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    const-string p2, "99+"

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lfp/a0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lfp/a0;->d:Lcom/noober/background/view/BLTextView;

    .line 50
    .line 51
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    sget v1, Lcom/transsion/room/R$string;->x_new:I

    .line 56
    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p2, v0, v3

    .line 60
    .line 61
    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 3

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
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p0, Lcom/transsion/room/adapter/YourRoomsAdapter;->F:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lcom/transsion/room/adapter/YourRoomsAdapter;->F:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lfp/a0;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v1, v1, Lfp/a0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 48
    .line 49
    const-string v2, "ivCover"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lfp/a0;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lfp/a0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/room/adapter/YourRoomsAdapter;->E1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method protected C1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
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
    instance-of p3, p2, Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p2, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide p2

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/adapter/YourRoomsAdapter;->E1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method protected D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;
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
    invoke-static {p2, p1, v0}, Lfp/a0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/a0;

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
    new-instance p2, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;-><init>(Lfp/a0;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/YourRoomsAdapter;->B1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/adapter/YourRoomsAdapter;->C1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/YourRoomsAdapter;->D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
