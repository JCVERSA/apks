.class public final synthetic Lcom/transsion/home/adapter/trending/provider/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/u;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/u;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/u;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/u;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/u;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/u;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
