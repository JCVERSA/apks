.class public final Lx6/n;
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
    const-string v0, "INSERT OR REPLACE INTO `hisavana_local_ab_room` (`local_ab_version_code`,`local_ab_json`) VALUES (?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Lz3/h;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lx6/r;

    .line 2
    .line 3
    iget-wide v0, p2, Lx6/r;->a:J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p2, Lx6/r;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lz3/f;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1, v0, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
