.class public La/RouterMap__TheRouter__2035401828;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/subscription/my_subscription\",\"className\":\"com.transsion.room.sub.activity.subscription.SubscriptionListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/subscription/subscription\",\"className\":\"com.transsion.room.sub.activity.subscription.SubscriptionActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/ugc/likes\",\"className\":\"com.transsion.room.sub.activity.likes.UgcLikesActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/list\",\"className\":\"com.transsion.room.activity.RoomListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/home\",\"className\":\"com.transsion.room.activity.RoomHomeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/detail\",\"className\":\"com.transsion.room.activity.RoomDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/others_list\",\"className\":\"com.transsion.room.activity.OthersRoomListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/my\",\"className\":\"com.transsion.room.activity.MyRoomActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/hot_room\",\"className\":\"com.transsion.room.activity.HotRoomsActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/create\",\"className\":\"com.transsion.room.activity.CreateRoomActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addRoute()V
    .locals 4

    .line 1
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 2
    .line 3
    const-string v1, "/subscription/my_subscription"

    .line 4
    .line 5
    const-string v2, "com.transsion.room.sub.activity.subscription.SubscriptionListActivity"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 16
    .line 17
    const-string v1, "/subscription/subscription"

    .line 18
    .line 19
    const-string v2, "com.transsion.room.sub.activity.subscription.SubscriptionActivity"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 28
    .line 29
    const-string v1, "/ugc/likes"

    .line 30
    .line 31
    const-string v2, "com.transsion.room.sub.activity.likes.UgcLikesActivity"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 40
    .line 41
    const-string v1, "/room/list"

    .line 42
    .line 43
    const-string v2, "com.transsion.room.activity.RoomListActivity"

    .line 44
    .line 45
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 52
    .line 53
    const-string v1, "/room/home"

    .line 54
    .line 55
    const-string v2, "com.transsion.room.activity.RoomHomeActivity"

    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 64
    .line 65
    const-string v1, "/room/detail"

    .line 66
    .line 67
    const-string v2, "com.transsion.room.activity.RoomDetailActivity"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 76
    .line 77
    const-string v1, "/room/others_list"

    .line 78
    .line 79
    const-string v2, "com.transsion.room.activity.OthersRoomListActivity"

    .line 80
    .line 81
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 88
    .line 89
    const-string v1, "/room/my"

    .line 90
    .line 91
    const-string v2, "com.transsion.room.activity.MyRoomActivity"

    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 100
    .line 101
    const-string v1, "/room/hot_room"

    .line 102
    .line 103
    const-string v2, "com.transsion.room.activity.HotRoomsActivity"

    .line 104
    .line 105
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 112
    .line 113
    const-string v1, "/room/create"

    .line 114
    .line 115
    const-string v2, "com.transsion.room.activity.CreateRoomActivity"

    .line 116
    .line 117
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-static {}, La/RouterMap__TheRouter__2035401828;->addRoute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
