.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/a0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

.field public final synthetic d:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->a:Lcom/transsion/home/bean/OperateItem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->d:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->a:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->d:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

    .line 8
    .line 9
    check-cast p1, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->y(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
