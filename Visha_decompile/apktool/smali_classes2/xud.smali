.class public final Lxud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpod;


# instance fields
.field public final a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

.field public final b:Lcom/cloud/hisavana/abtestkit/p;

.field public final c:Lcom/cloud/hisavana/abtestkit/r;

.field public final d:Lcom/cloud/hisavana/abtestkit/s;

.field public final e:Lcom/cloud/hisavana/abtestkit/t;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    new-instance v0, Lcom/cloud/hisavana/abtestkit/p;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/abtestkit/p;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lxud;->b:Lcom/cloud/hisavana/abtestkit/p;

    new-instance v0, Lcom/cloud/hisavana/abtestkit/q;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/abtestkit/q;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    new-instance v0, Lcom/cloud/hisavana/abtestkit/r;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/abtestkit/r;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lxud;->c:Lcom/cloud/hisavana/abtestkit/r;

    new-instance v0, Lcom/cloud/hisavana/abtestkit/s;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/abtestkit/s;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lxud;->d:Lcom/cloud/hisavana/abtestkit/s;

    new-instance v0, Lcom/cloud/hisavana/abtestkit/t;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/abtestkit/t;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lxud;->e:Lcom/cloud/hisavana/abtestkit/t;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 6
    iget-object v0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 7
    iget-object v0, p0, Lxud;->d:Lcom/cloud/hisavana/abtestkit/s;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 10
    iget-object v2, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v2, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    iget-object p0, p0, Lxud;->d:Lcom/cloud/hisavana/abtestkit/s;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 13
    :try_start_3
    iget-object v2, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 14
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :goto_0
    iget-object p0, p0, Lxud;->d:Lcom/cloud/hisavana/abtestkit/s;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 16
    throw v1
.end method

.method public final a(Lnvd;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lpod$a;->b(Lxud;Lnvd;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 5
    throw p1
.end method

.method public final b()Landroid/database/Cursor;
    .locals 2

    .line 6
    const-string v0, "SELECT * FROM hisavana_ab_room"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lnvd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lpod$a;->a(Lxud;Lnvd;)V

    .line 3
    iget-object p1, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lxud;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 5
    throw p1
.end method
