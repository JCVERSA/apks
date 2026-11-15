.class public final synthetic Lcom/transsion/home/adapter/trending/provider/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/t;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/t;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/t;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/t;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/t;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/t;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
