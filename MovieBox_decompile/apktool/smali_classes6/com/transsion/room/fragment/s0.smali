.class public final synthetic Lcom/transsion/room/fragment/s0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/api/RoomHomeRefreshCacheEvent;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/room/fragment/RoomHomeFragment;->G0(Lcom/transsion/room/api/RoomHomeRefreshCacheEvent;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
