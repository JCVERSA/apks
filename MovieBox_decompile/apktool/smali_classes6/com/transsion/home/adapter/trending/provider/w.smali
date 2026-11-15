.class public final synthetic Lcom/transsion/home/adapter/trending/provider/w;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/RoomItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/w;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/w;->b:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/w;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/w;->b:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->B1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
