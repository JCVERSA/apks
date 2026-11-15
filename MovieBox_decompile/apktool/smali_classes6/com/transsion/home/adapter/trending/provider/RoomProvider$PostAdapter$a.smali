.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final A(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/16 v8, 0x40

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    const-string v5, "item"

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v6, p2

    .line 22
    invoke-static/range {v0 .. v9}, Lcom/transsion/postdetail/helper/a;->y(Lcom/transsion/postdetail/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "page_from"

    .line 26
    .line 27
    iget-object p0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "module_name"

    .line 34
    .line 35
    const-string p2, "item_post_more"

    .line 36
    .line 37
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x2

    .line 42
    new-array p2, p2, [Lkotlin/Pair;

    .line 43
    .line 44
    const/4 p3, 0x0

    .line 45
    aput-object p0, p2, p3

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    aput-object p1, p2, p0

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 55
    .line 56
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2, p0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lep/k;->a:Lep/k;

    .line 64
    .line 65
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/16 v5, 0xb

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static/range {v0 .. v6}, Lep/k;->i(Lep/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->A(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->item_adapter_room_entrance_post_more:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    const-string v0, "helper"

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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/home/adapter/trending/provider/t;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/t;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    sget p2, Lcom/transsion/home/R$id;->root_view:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    const/16 p2, 0xb6

    .line 40
    .line 41
    :goto_0
    invoke-static {p2}, Llj/a;->b(I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/16 p2, 0xdc

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    .line 51
    return-void
.end method
