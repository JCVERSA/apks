.class public Lcom/transsion/room/activity/RoomDetailActivity__TheRouter__Autowired;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
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

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 13

    .line 1
    instance-of v0, p0, Lcom/transsion/room/activity/RoomDetailActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p0, Lcom/transsion/room/activity/RoomDetailActivity;

    .line 6
    .line 7
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lmf/a;

    .line 26
    .line 27
    :try_start_0
    const-string v2, "boolean"

    .line 28
    .line 29
    new-instance v12, Lcom/therouter/router/b;

    .line 30
    .line 31
    const-string v4, "boolean"

    .line 32
    .line 33
    const-string v5, "need_start_room_home"

    .line 34
    .line 35
    const-string v7, ""

    .line 36
    .line 37
    const-string v8, "com.transsion.room.activity.RoomDetailActivity"

    .line 38
    .line 39
    const-string v9, "isNeedStartRoomHome"

    .line 40
    .line 41
    const-string v11, "No desc."

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v3, v12

    .line 46
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v2, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput-boolean v2, p0, Lcom/transsion/room/activity/RoomDetailActivity;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_1
    :try_start_1
    const-string v2, "com.transsion.moviedetailapi.bean.RoomItem"

    .line 75
    .line 76
    new-instance v12, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v4, "com.transsion.moviedetailapi.bean.RoomItem"

    .line 79
    .line 80
    const-string v5, "item"

    .line 81
    .line 82
    const-string v7, ""

    .line 83
    .line 84
    const-string v8, "com.transsion.room.activity.RoomDetailActivity"

    .line 85
    .line 86
    const-string v9, "item"

    .line 87
    .line 88
    const-string v11, "No desc."

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    move-object v3, v12

    .line 93
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v2, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iput-object v2, p0, Lcom/transsion/room/activity/RoomDetailActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception v2

    .line 108
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_2
    :try_start_2
    const-string v2, "java.lang.String"

    .line 118
    .line 119
    new-instance v12, Lcom/therouter/router/b;

    .line 120
    .line 121
    const-string v4, "java.lang.String"

    .line 122
    .line 123
    const-string v5, "id"

    .line 124
    .line 125
    const-string v7, ""

    .line 126
    .line 127
    const-string v8, "com.transsion.room.activity.RoomDetailActivity"

    .line 128
    .line 129
    const-string v9, "id"

    .line 130
    .line 131
    const-string v11, "No desc."

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    const/4 v10, 0x0

    .line 135
    move-object v3, v12

    .line 136
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v1, v2, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    iput-object v1, p0, Lcom/transsion/room/activity/RoomDetailActivity;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :catch_2
    move-exception v1

    .line 152
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_0

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_3
    return-void
.end method
