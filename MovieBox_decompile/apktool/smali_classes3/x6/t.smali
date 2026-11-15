.class public final Lx6/t;
.super Landroidx/room/h;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `hisavana_ab_room` (`layer_id`,`request_time`,`ab_info`) VALUES (?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Lz3/h;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lx6/z;

    .line 2
    .line 3
    invoke-virtual {p2}, Lx6/z;->getLayerId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lx6/z;->getRequestTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lx6/z;->getInfo()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x3

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lx6/z;->getInfo()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1, v1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
