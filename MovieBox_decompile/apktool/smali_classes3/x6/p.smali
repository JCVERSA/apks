.class public final Lx6/p;
.super Landroidx/room/l0;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/l0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM hisavana_local_ab_room"

    .line 2
    .line 3
    return-object v0
.end method
