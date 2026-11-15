.class public final synthetic Lcom/transsion/home/adapter/trending/provider/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

.field public final synthetic d:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic e:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/s;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/s;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/home/adapter/trending/provider/s;->e:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/s;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/s;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/adapter/trending/provider/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/home/adapter/trending/provider/s;->e:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
