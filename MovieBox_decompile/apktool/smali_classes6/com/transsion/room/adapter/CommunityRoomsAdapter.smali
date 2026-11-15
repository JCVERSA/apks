.class public final Lcom/transsion/room/adapter/CommunityRoomsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001=B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010$\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010&\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J-\u0010+\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00022\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0(H\u0014\u00a2\u0006\u0004\u0008+\u0010,R\u0014\u0010/\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00102\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u0010\u0016\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010<\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00104\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/room/adapter/CommunityRoomsAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "D1",
        "(Landroid/content/Context;)I",
        "holder",
        "",
        "hasJoin",
        "",
        "G1",
        "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Z)V",
        "item",
        "",
        "newCount",
        "H1",
        "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;J)V",
        "isMatchParent",
        "J1",
        "(Z)V",
        "Lcom/transsion/room/api/RoomsViewType;",
        "type",
        "I1",
        "(Lcom/transsion/room/api/RoomsViewType;)V",
        "Landroid/view/View$OnClickListener;",
        "onClickListener",
        "E1",
        "(Landroid/content/Context;Landroid/view/View$OnClickListener;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "F1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;",
        "B1",
        "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V",
        "F",
        "I",
        "coverSize",
        "G",
        "Lcom/transsion/room/api/RoomsViewType;",
        "roomsViewType",
        "H",
        "Z",
        "Ljava/lang/Integer;",
        "itemWidth",
        "Lfp/w;",
        "J",
        "Lfp/w;",
        "footerBinding",
        "K",
        "initFooter",
        "RecommendRoomsItemVH",
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

.field private G:Lcom/transsion/room/api/RoomsViewType;

.field private H:Z

.field private I:Ljava/lang/Integer;

.field private J:Lfp/w;

.field private K:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/room/R$layout;->item_recommend_rooms:I

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
    const/high16 v0, 0x42800000    # 64.0f

    .line 9
    .line 10
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->F:I

    .line 15
    .line 16
    sget-object v0, Lcom/transsion/room/api/RoomsViewType;->TYPE_ROOM_HOME:Lcom/transsion/room/api/RoomsViewType;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->G:Lcom/transsion/room/api/RoomsViewType;

    .line 19
    .line 20
    return-void
.end method

.method private final D1(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzg/h;->e(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x41380000    # 11.5f

    .line 8
    .line 9
    invoke-static {v0}, Llj/a;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    invoke-static {v1}, Llj/a;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    mul-int/lit8 v0, v0, 0x4

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    sub-int/2addr p1, v0

    .line 25
    div-int/lit8 p1, p1, 0x5

    .line 26
    .line 27
    return p1
.end method

.method private final G1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lfp/v;->h:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/tn/lib/view/RoomJoinStatus;->JOINED:Lcom/tn/lib/view/RoomJoinStatus;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p2, Lcom/tn/lib/view/RoomJoinStatus;->JOIN:Lcom/tn/lib/view/RoomJoinStatus;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final H1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->G:Lcom/transsion/room/api/RoomsViewType;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/room/api/RoomsViewType;->TYPE_ROOM_HOME:Lcom/transsion/room/api/RoomsViewType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide v0, v3

    .line 22
    :goto_0
    cmp-long v0, v0, v3

    .line 23
    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    const-wide/16 v0, 0x63

    .line 27
    .line 28
    cmp-long p2, p3, v0

    .line 29
    .line 30
    if-lez p2, :cond_1

    .line 31
    .line 32
    const-string p2, "99+"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iget-object p3, p3, Lfp/v;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    sget v0, Lcom/transsion/room/R$string;->x_new:I

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p2, v1, v2

    .line 55
    .line 56
    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lfp/v;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {p1, v2, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-eqz p3, :cond_3

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide p2

    .line 90
    invoke-static {p2, p3}, Lij/k;->d(J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const-string p2, "0"

    .line 96
    .line 97
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    iget-object p3, p3, Lfp/v;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Lfp/v;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    sget p2, Lcom/tn/lib/widget/R$drawable;->ic_room_home_member:I

    .line 113
    .line 114
    invoke-virtual {p1, p2, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 115
    .line 116
    .line 117
    :goto_3
    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 7

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
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lfp/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->H:Z

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lfp/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getBuiltIn()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v4, Lcom/transsion/room/adapter/CommunityRoomsAdapter$convert$1;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$convert$1;-><init>(Lcom/transsion/moviedetailapi/bean/RoomItem;Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lkotlin/coroutines/Continuation;)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x3

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->F:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget v1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->F:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v1, v1, Lfp/v;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 123
    .line 124
    const-string v2, "ivCover"

    .line 125
    .line 126
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lfp/v;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    goto :goto_2

    .line 156
    :cond_3
    const-wide/16 v0, 0x0

    .line 157
    .line 158
    :goto_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->H1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Ljava/util/Collection;

    .line 166
    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->f()Lfp/v;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v1, v1, Lfp/v;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    if-eqz p2, :cond_6

    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    goto :goto_4

    .line 210
    :cond_6
    const/4 p2, 0x0

    .line 211
    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->G1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Z)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method protected C1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;",
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
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    instance-of v0, p3, Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    check-cast p3, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->G1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    check-cast p3, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->H1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;J)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public final E1(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onClickListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lfp/w;->c(Landroid/view/LayoutInflater;)Lfp/w;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->J:Lfp/w;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lfp/w;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->J:Lfp/w;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lfp/w;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "getRoot(...)"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p2, -0x1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->t(Landroid/view/View;II)I

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->B1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected F1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;
    .locals 2

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
    invoke-static {p2, p1, v0}, Lfp/v;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/v;

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
    iget-object p2, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p2}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->D1(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1}, Lfp/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    .line 62
    iget-object p2, p1, Lfp/v;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    .line 79
    iget-object p2, p1, Lfp/v;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    .line 96
    iget-boolean p2, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->K:Z

    .line 97
    .line 98
    if-nez p2, :cond_2

    .line 99
    .line 100
    iget-object p2, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->J:Lfp/w;

    .line 101
    .line 102
    if-eqz p2, :cond_1

    .line 103
    .line 104
    invoke-virtual {p2}, Lfp/w;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    .line 123
    iget-object p2, p2, Lfp/w;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iget-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->I:Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    .line 140
    :cond_1
    const/4 p2, 0x1

    .line 141
    iput-boolean p2, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->K:Z

    .line 142
    .line 143
    :cond_2
    new-instance p2, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;

    .line 144
    .line 145
    invoke-direct {p2, p1}, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;-><init>(Lfp/v;)V

    .line 146
    .line 147
    .line 148
    return-object p2
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->C1(Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I1(Lcom/transsion/room/api/RoomsViewType;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->G:Lcom/transsion/room/api/RoomsViewType;

    .line 7
    .line 8
    return-void
.end method

.method public final J1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/CommunityRoomsAdapter;->F1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
