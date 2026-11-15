.class public final La/TheRouterServiceProvideInjecter;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\r\u0010\u0001\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u001a\u0017\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001f\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\r\u0010\r\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0002\"\u0016\u0010\u000f\u001a\u00020\u000e8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "",
        "d",
        "()V",
        "",
        "obj",
        "b",
        "(Ljava/lang/Object;)V",
        "Landroid/content/Context;",
        "context",
        "Ljf/b;",
        "digraph",
        "a",
        "(Landroid/content/Context;Ljf/b;)V",
        "c",
        "",
        "asm",
        "Z",
        "router_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
.end annotation


# static fields
.field public static asm:Z = true
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljf/b;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1240717169;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    :try_start_1
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1452284254;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_1
    :try_start_2
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1471326562;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :catchall_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_2
    :try_start_3
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1555715313;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :catchall_3
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_3
    :try_start_4
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1743846167;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :catchall_4
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_4
    :try_start_5
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1761636898;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 42
    .line 43
    .line 44
    goto :goto_5

    .line 45
    :catchall_5
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_5
    :try_start_6
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__1777372247;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 50
    .line 51
    .line 52
    goto :goto_6

    .line 53
    :catchall_6
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_6
    :try_start_7
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__177862002;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 58
    .line 59
    .line 60
    goto :goto_7

    .line 61
    :catchall_7
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_7
    :try_start_8
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__2019351757;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 66
    .line 67
    .line 68
    goto :goto_8

    .line 69
    :catchall_8
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_8
    :try_start_9
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__206886985;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 74
    .line 75
    .line 76
    goto :goto_9

    .line 77
    :catchall_9
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_9
    :try_start_a
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__2072000671;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 82
    .line 83
    .line 84
    goto :goto_a

    .line 85
    :catchall_a
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_a
    :try_start_b
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__2146612191;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 90
    .line 91
    .line 92
    goto :goto_b

    .line 93
    :catchall_b
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_b
    :try_start_c
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__296321641;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 98
    .line 99
    .line 100
    goto :goto_c

    .line 101
    :catchall_c
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_c
    :try_start_d
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__651322747;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 106
    .line 107
    .line 108
    goto :goto_d

    .line 109
    :catchall_d
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_d
    :try_start_e
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__865411724;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 114
    .line 115
    .line 116
    goto :goto_e

    .line 117
    :catchall_e
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :goto_e
    :try_start_f
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__978335634;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 122
    .line 123
    .line 124
    goto :goto_f

    .line 125
    :catchall_f
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_f
    :try_start_10
    invoke-static {p0, p1}, La/ServiceProvider__TheRouter__986479163;->addFlowTask(Landroid/content/Context;Ljf/b;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 130
    .line 131
    .line 132
    goto :goto_10

    .line 133
    :catchall_10
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_10
    return-void
.end method

.method public static final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/transsion/commercialization/aha/AhaGameAllActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/transsion/home/activity/FilterActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/transsion/home/activity/MovieFilterActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :catchall_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/transsion/home/activity/OperateActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :catchall_3
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_3
    :try_start_4
    invoke-static {p0}, Lcom/transsion/home/activity/RankAllActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :catchall_4
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_4
    :try_start_5
    invoke-static {p0}, Lcom/transsion/home/activity/UGCFilmListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 42
    .line 43
    .line 44
    goto :goto_5

    .line 45
    :catchall_5
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_5
    :try_start_6
    invoke-static {p0}, Lcom/transsion/home/activity/UGCFilterActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 50
    .line 51
    .line 52
    goto :goto_6

    .line 53
    :catchall_6
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_6
    :try_start_7
    invoke-static {p0}, Lcom/transsion/home/activity/UGCHashTagActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 58
    .line 59
    .line 60
    goto :goto_7

    .line 61
    :catchall_7
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_7
    :try_start_8
    invoke-static {p0}, Lcom/transsion/home/activity/UGCRankingActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 66
    .line 67
    .line 68
    goto :goto_8

    .line 69
    :catchall_8
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_8
    :try_start_9
    invoke-static {p0}, Lcom/transsion/home/category/CategoryActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 74
    .line 75
    .line 76
    goto :goto_9

    .line 77
    :catchall_9
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_9
    :try_start_a
    invoke-static {p0}, Lcom/transsion/home/category/PlayListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 82
    .line 83
    .line 84
    goto :goto_a

    .line 85
    :catchall_a
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_a
    :try_start_b
    invoke-static {p0}, Lcom/transsion/moviedetail/activity/MovieDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 90
    .line 91
    .line 92
    goto :goto_b

    .line 93
    :catchall_b
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_b
    :try_start_c
    invoke-static {p0}, Lcom/transsion/moviedetail/staff/MovieStaffActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 98
    .line 99
    .line 100
    goto :goto_c

    .line 101
    :catchall_c
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_c
    :try_start_d
    invoke-static {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 106
    .line 107
    .line 108
    goto :goto_d

    .line 109
    :catchall_d
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_d
    :try_start_e
    invoke-static {p0}, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 114
    .line 115
    .line 116
    goto :goto_e

    .line 117
    :catchall_e
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :goto_e
    :try_start_f
    invoke-static {p0}, Lcom/transsion/postdetail/ui/activity/PostDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 122
    .line 123
    .line 124
    goto :goto_f

    .line 125
    :catchall_f
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_f
    :try_start_10
    invoke-static {p0}, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 130
    .line 131
    .line 132
    goto :goto_10

    .line 133
    :catchall_10
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_10
    :try_start_11
    invoke-static {p0}, Lcom/transsion/room/activity/OthersRoomListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 138
    .line 139
    .line 140
    goto :goto_11

    .line 141
    :catchall_11
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_11
    :try_start_12
    invoke-static {p0}, Lcom/transsion/room/activity/RoomDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 146
    .line 147
    .line 148
    goto :goto_12

    .line 149
    :catchall_12
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :goto_12
    :try_start_13
    invoke-static {p0}, Lcom/transsion/room/activity/RoomHomeActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 154
    .line 155
    .line 156
    goto :goto_13

    .line 157
    :catchall_13
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :goto_13
    :try_start_14
    invoke-static {p0}, Lcom/transsion/room/activity/RoomListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 162
    .line 163
    .line 164
    goto :goto_14

    .line 165
    :catchall_14
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :goto_14
    :try_start_15
    invoke-static {p0}, Lcom/transsion/search/activity/SearchManagerActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 170
    .line 171
    .line 172
    goto :goto_15

    .line 173
    :catchall_15
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :goto_15
    :try_start_16
    invoke-static {p0}, Lcom/transsion/search_pugc/activity/SearchManagerActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 178
    .line 179
    .line 180
    goto :goto_16

    .line 181
    :catchall_16
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :goto_16
    :try_start_17
    invoke-static {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvCategoryActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 186
    .line 187
    .line 188
    goto :goto_17

    .line 189
    :catchall_17
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :goto_17
    :try_start_18
    invoke-static {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 194
    .line 195
    .line 196
    goto :goto_18

    .line 197
    :catchall_18
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :goto_18
    :try_start_19
    invoke-static {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvPlayListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 202
    .line 203
    .line 204
    goto :goto_19

    .line 205
    :catchall_19
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :goto_19
    :try_start_1a
    invoke-static {p0}, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 210
    .line 211
    .line 212
    goto :goto_1a

    .line 213
    :catchall_1a
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :goto_1a
    :try_start_1b
    invoke-static {p0}, Lcom/transsion/shorttv/ui/activity/ShortTvListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 218
    .line 219
    .line 220
    goto :goto_1b

    .line 221
    :catchall_1b
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :goto_1b
    :try_start_1c
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 226
    .line 227
    .line 228
    goto :goto_1c

    .line 229
    :catchall_1c
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    .line 232
    .line 233
    :goto_1c
    :try_start_1d
    invoke-static {p0}, Lcom/transsion/subroom/activity/MainActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 234
    .line 235
    .line 236
    goto :goto_1d

    .line 237
    :catchall_1d
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    :goto_1d
    :try_start_1e
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 242
    .line 243
    .line 244
    goto :goto_1e

    .line 245
    :catchall_1e
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .line 248
    .line 249
    :goto_1e
    :try_start_1f
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 250
    .line 251
    .line 252
    goto :goto_1f

    .line 253
    :catchall_1f
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    :goto_1f
    :try_start_20
    invoke-static {p0}, Lcom/transsion/usercenter/message/UserRoomMessageActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 258
    .line 259
    .line 260
    goto :goto_20

    .line 261
    :catchall_20
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    :goto_20
    :try_start_21
    invoke-static {p0}, Lcom/transsion/usercenter/message/detail/MessageDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 266
    .line 267
    .line 268
    goto :goto_21

    .line 269
    :catchall_21
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    .line 272
    .line 273
    :goto_21
    :try_start_22
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 274
    .line 275
    .line 276
    goto :goto_22

    .line 277
    :catchall_22
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :goto_22
    :try_start_23
    invoke-static {p0}, Lcom/transsion/usercenter/profile/UserProfileActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 282
    .line 283
    .line 284
    goto :goto_23

    .line 285
    :catchall_23
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    .line 288
    .line 289
    :goto_23
    :try_start_24
    invoke-static {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 290
    .line 291
    .line 292
    goto :goto_24

    .line 293
    :catchall_24
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    :goto_24
    :try_start_25
    invoke-static {p0}, Lcom/transsion/videodetail/BaseDetailActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 298
    .line 299
    .line 300
    goto :goto_25

    .line 301
    :catchall_25
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    .line 304
    .line 305
    :goto_25
    :try_start_26
    invoke-static {p0}, Lcom/transsion/web/activity/WebActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 306
    .line 307
    .line 308
    goto :goto_26

    .line 309
    :catchall_26
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    :goto_26
    :try_start_27
    invoke-static {p0}, Lcom/transsnet/downloader/activity/DownloadPanelActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 314
    .line 315
    .line 316
    goto :goto_27

    .line 317
    :catchall_27
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 319
    .line 320
    .line 321
    :goto_27
    :try_start_28
    invoke-static {p0}, Lcom/transsnet/downloader/activity/DownloadSeriesListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 322
    .line 323
    .line 324
    goto :goto_28

    .line 325
    :catchall_28
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 327
    .line 328
    .line 329
    :goto_28
    :try_start_29
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/activity/UGCDownloadCollectionListActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 330
    .line 331
    .line 332
    goto :goto_29

    .line 333
    :catchall_29
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    .line 336
    .line 337
    :goto_29
    :try_start_2a
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity__TheRouter__Autowired;->autowiredInject(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    .line 338
    .line 339
    .line 340
    goto :goto_2a

    .line 341
    :catchall_2a
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 343
    .line 344
    .line 345
    :goto_2a
    return-void
.end method

.method public static final c()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, La/RouterMap__TheRouter__1080211237;->addRoute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    :try_start_1
    invoke-static {}, La/RouterMap__TheRouter__108983972;->addRoute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_1
    :try_start_2
    invoke-static {}, La/RouterMap__TheRouter__1190314991;->addRoute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :catchall_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_2
    :try_start_3
    invoke-static {}, La/RouterMap__TheRouter__1347258790;->addRoute()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :catchall_3
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_3
    :try_start_4
    invoke-static {}, La/RouterMap__TheRouter__1365664310;->addRoute()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :catchall_4
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_4
    :try_start_5
    invoke-static {}, La/RouterMap__TheRouter__1371816234;->addRoute()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 42
    .line 43
    .line 44
    goto :goto_5

    .line 45
    :catchall_5
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_5
    :try_start_6
    invoke-static {}, La/RouterMap__TheRouter__1526343298;->addRoute()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 50
    .line 51
    .line 52
    goto :goto_6

    .line 53
    :catchall_6
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_6
    :try_start_7
    invoke-static {}, La/RouterMap__TheRouter__1544766231;->addRoute()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 58
    .line 59
    .line 60
    goto :goto_7

    .line 61
    :catchall_7
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_7
    :try_start_8
    invoke-static {}, La/RouterMap__TheRouter__1561463634;->addRoute()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 66
    .line 67
    .line 68
    goto :goto_8

    .line 69
    :catchall_8
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_8
    :try_start_9
    invoke-static {}, La/RouterMap__TheRouter__1763260754;->addRoute()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 74
    .line 75
    .line 76
    goto :goto_9

    .line 77
    :catchall_9
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_9
    :try_start_a
    invoke-static {}, La/RouterMap__TheRouter__1773921142;->addRoute()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 82
    .line 83
    .line 84
    goto :goto_a

    .line 85
    :catchall_a
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_a
    :try_start_b
    invoke-static {}, La/RouterMap__TheRouter__1880430013;->addRoute()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 90
    .line 91
    .line 92
    goto :goto_b

    .line 93
    :catchall_b
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_b
    :try_start_c
    invoke-static {}, La/RouterMap__TheRouter__1980384028;->addRoute()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 98
    .line 99
    .line 100
    goto :goto_c

    .line 101
    :catchall_c
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_c
    :try_start_d
    invoke-static {}, La/RouterMap__TheRouter__2035401828;->addRoute()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 106
    .line 107
    .line 108
    goto :goto_d

    .line 109
    :catchall_d
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_d
    :try_start_e
    invoke-static {}, La/RouterMap__TheRouter__2071639136;->addRoute()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 114
    .line 115
    .line 116
    goto :goto_e

    .line 117
    :catchall_e
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :goto_e
    :try_start_f
    invoke-static {}, La/RouterMap__TheRouter__2081998313;->addRoute()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 122
    .line 123
    .line 124
    goto :goto_f

    .line 125
    :catchall_f
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_f
    :try_start_10
    invoke-static {}, La/RouterMap__TheRouter__330865985;->addRoute()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 130
    .line 131
    .line 132
    goto :goto_10

    .line 133
    :catchall_10
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_10
    :try_start_11
    invoke-static {}, La/RouterMap__TheRouter__509260627;->addRoute()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 138
    .line 139
    .line 140
    goto :goto_11

    .line 141
    :catchall_11
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_11
    :try_start_12
    invoke-static {}, La/RouterMap__TheRouter__601604161;->addRoute()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 146
    .line 147
    .line 148
    goto :goto_12

    .line 149
    :catchall_12
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :goto_12
    :try_start_13
    invoke-static {}, La/RouterMap__TheRouter__942905260;->addRoute()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 154
    .line 155
    .line 156
    goto :goto_13

    .line 157
    :catchall_13
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :goto_13
    return-void
.end method

.method public static final d()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, La/ServiceProvider__TheRouter__1240717169;

    .line 6
    .line 7
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1240717169;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, La/ServiceProvider__TheRouter__1452284254;

    .line 23
    .line 24
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1452284254;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, La/ServiceProvider__TheRouter__1471326562;

    .line 40
    .line 41
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1471326562;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catchall_2
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, La/ServiceProvider__TheRouter__1555715313;

    .line 57
    .line 58
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1555715313;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catchall_3
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, La/ServiceProvider__TheRouter__1743846167;

    .line 74
    .line 75
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1743846167;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :catchall_4
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, La/ServiceProvider__TheRouter__1761636898;

    .line 91
    .line 92
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1761636898;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :catchall_5
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, La/ServiceProvider__TheRouter__1777372247;

    .line 108
    .line 109
    invoke-direct {v1}, La/ServiceProvider__TheRouter__1777372247;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 113
    .line 114
    .line 115
    goto :goto_6

    .line 116
    :catchall_6
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, La/ServiceProvider__TheRouter__177862002;

    .line 125
    .line 126
    invoke-direct {v1}, La/ServiceProvider__TheRouter__177862002;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 130
    .line 131
    .line 132
    goto :goto_7

    .line 133
    :catchall_7
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, La/ServiceProvider__TheRouter__2019351757;

    .line 142
    .line 143
    invoke-direct {v1}, La/ServiceProvider__TheRouter__2019351757;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :catchall_8
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :goto_8
    :try_start_9
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, La/ServiceProvider__TheRouter__206886985;

    .line 159
    .line 160
    invoke-direct {v1}, La/ServiceProvider__TheRouter__206886985;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 164
    .line 165
    .line 166
    goto :goto_9

    .line 167
    :catchall_9
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    :goto_9
    :try_start_a
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v1, La/ServiceProvider__TheRouter__2072000671;

    .line 176
    .line 177
    invoke-direct {v1}, La/ServiceProvider__TheRouter__2072000671;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 181
    .line 182
    .line 183
    goto :goto_a

    .line 184
    :catchall_a
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :goto_a
    :try_start_b
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v1, La/ServiceProvider__TheRouter__2146612191;

    .line 193
    .line 194
    invoke-direct {v1}, La/ServiceProvider__TheRouter__2146612191;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 198
    .line 199
    .line 200
    goto :goto_b

    .line 201
    :catchall_b
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :goto_b
    :try_start_c
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, La/ServiceProvider__TheRouter__296321641;

    .line 210
    .line 211
    invoke-direct {v1}, La/ServiceProvider__TheRouter__296321641;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 215
    .line 216
    .line 217
    goto :goto_c

    .line 218
    :catchall_c
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    .line 221
    .line 222
    :goto_c
    :try_start_d
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    new-instance v1, La/ServiceProvider__TheRouter__651322747;

    .line 227
    .line 228
    invoke-direct {v1}, La/ServiceProvider__TheRouter__651322747;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 232
    .line 233
    .line 234
    goto :goto_d

    .line 235
    :catchall_d
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    :goto_d
    :try_start_e
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    new-instance v1, La/ServiceProvider__TheRouter__865411724;

    .line 244
    .line 245
    invoke-direct {v1}, La/ServiceProvider__TheRouter__865411724;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 249
    .line 250
    .line 251
    goto :goto_e

    .line 252
    :catchall_e
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    :goto_e
    :try_start_f
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    new-instance v1, La/ServiceProvider__TheRouter__978335634;

    .line 261
    .line 262
    invoke-direct {v1}, La/ServiceProvider__TheRouter__978335634;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 266
    .line 267
    .line 268
    goto :goto_f

    .line 269
    :catchall_f
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    .line 272
    .line 273
    :goto_f
    :try_start_10
    invoke-static {}, Lcom/therouter/TheRouter;->h()Lcom/therouter/inject/RouterInject;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v1, La/ServiceProvider__TheRouter__986479163;

    .line 278
    .line 279
    invoke-direct {v1}, La/ServiceProvider__TheRouter__986479163;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Lcom/therouter/inject/RouterInject;->privateAddInterceptor(Lcom/therouter/inject/b;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 283
    .line 284
    .line 285
    goto :goto_10

    .line 286
    :catchall_10
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    :goto_10
    return-void
.end method
