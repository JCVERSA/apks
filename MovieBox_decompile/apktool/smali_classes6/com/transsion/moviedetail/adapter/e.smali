.class public final synthetic Lcom/transsion/moviedetail/adapter/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/transsion/moviedetail/adapter/i$a;

.field public final synthetic c:Lcom/transsion/moviedetail/adapter/i;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/e;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/e;->b:Lcom/transsion/moviedetail/adapter/i$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/e;->c:Lcom/transsion/moviedetail/adapter/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/e;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/moviedetail/adapter/e;->b:Lcom/transsion/moviedetail/adapter/i$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/moviedetail/adapter/e;->c:Lcom/transsion/moviedetail/adapter/i;

    .line 6
    .line 7
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/moviedetail/adapter/i;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
