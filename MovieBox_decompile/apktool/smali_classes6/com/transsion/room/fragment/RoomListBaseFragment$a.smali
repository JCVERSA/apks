.class public final Lcom/transsion/room/fragment/RoomListBaseFragment$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomListBaseFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomListBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment$a;->a:Lcom/transsion/room/fragment/RoomListBaseFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    .line 1
    iget-object p4, p0, Lcom/transsion/room/fragment/RoomListBaseFragment$a;->a:Lcom/transsion/room/fragment/RoomListBaseFragment;

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-virtual {p4}, Lcom/transsion/room/fragment/RoomListBaseFragment;->u0()Lcom/transsion/room/adapter/RoomListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v7, v0

    .line 16
    check-cast v7, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 22
    .line 23
    invoke-static {p4}, Lcom/transsion/room/fragment/RoomListBaseFragment;->r0(Lcom/transsion/room/fragment/RoomListBaseFragment;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p4}, Lcom/transsion/room/fragment/RoomListBaseFragment;->pageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move v4, p1

    .line 32
    move-wide v5, p2

    .line 33
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/room/helper/l;->i(Ljava/lang/String;Ljava/lang/String;IJLcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method
