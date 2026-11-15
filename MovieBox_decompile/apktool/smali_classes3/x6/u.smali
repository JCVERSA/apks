.class public final Lx6/u;
.super Landroidx/room/f;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/f;-><init>(Landroidx/room/RoomDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM `hisavana_ab_room` WHERE `layer_id` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Lz3/h;Ljava/lang/Object;)V
    .locals 2

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
    const/4 p2, 0x1

    .line 8
    invoke-interface {p1, p2, v0, v1}, Lz3/f;->c(IJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
