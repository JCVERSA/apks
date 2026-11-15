.class public final Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;
.super Lcom/transsion/dbdata/database/VideoRoomDatabase;
.source "SourceFile"


# instance fields
.field public volatile n:Lg5c;

.field public volatile o:Lm5a;

.field public volatile p:Ljub;

.field public volatile q:Livb;

.field public volatile r:Lq10;

.field public volatile s:Lh6a;

.field public volatile t:Lw4a;

.field public volatile u:Lqj1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;-><init>()V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method public static synthetic m(Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lqj1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->u:Lqj1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->u:Lqj1;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->u:Lqj1;

    if-nez v0, :cond_1

    new-instance v0, Lrj1;

    invoke-direct {v0, p0}, Lrj1;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->u:Lqj1;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->u:Lqj1;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lm5a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->o:Lm5a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->o:Lm5a;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->o:Lm5a;

    if-nez v0, :cond_1

    new-instance v0, Ln5a;

    invoke-direct {v0, p0}, Ln5a;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->o:Lm5a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->o:Lm5a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lh6a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->s:Lh6a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->s:Lh6a;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->s:Lh6a;

    if-nez v0, :cond_1

    new-instance v0, Li6a;

    invoke-direct {v0, p0}, Li6a;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->s:Lh6a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->s:Lh6a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `VideoStates`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `SubtitleRecord`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `video_playlist`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `video_media_playList`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AudioTrack`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `SubtitleSetting`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `SubtitleHistory`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `converting_video`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v9, "SubtitleHistory"

    const-string v10, "converting_video"

    const-string v3, "VideoStates"

    const-string v4, "SubtitleRecord"

    const-string v5, "video_playlist"

    const-string v6, "video_media_playList"

    const-string v7, "AudioTrack"

    const-string v8, "SubtitleSetting"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl$a;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl$a;-><init>(Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;I)V

    const-string p0, "a6435b753f40a9e09e73a46aa13df199"

    const-string v2, "b602c0879dad5de8a7c81226c77f02f4"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljub;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->p:Ljub;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->p:Ljub;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->p:Ljub;

    if-nez v0, :cond_1

    new-instance v0, Lkub;

    invoke-direct {v0, p0}, Lkub;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->p:Ljub;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->p:Ljub;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Livb;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->q:Livb;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->q:Livb;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->q:Livb;

    if-nez v0, :cond_1

    new-instance v0, Ljvb;

    invoke-direct {v0, p0}, Ljvb;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->q:Livb;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->q:Livb;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Lg5c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->n:Lg5c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->n:Lg5c;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->n:Lg5c;

    if-nez v0, :cond_1

    new-instance v0, Lh5c;

    invoke-direct {v0, p0}, Lh5c;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->n:Lg5c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->n:Lg5c;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Lq10;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->r:Lq10;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->r:Lq10;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->r:Lq10;

    if-nez v0, :cond_1

    new-instance v0, Lr10;

    invoke-direct {v0, p0}, Lr10;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->r:Lq10;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->r:Lq10;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lg5c;

    invoke-static {}, Lh5c;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lm5a;

    invoke-static {}, Ln5a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljub;

    invoke-static {}, Lkub;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Livb;

    invoke-static {}, Ljvb;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lq10;

    invoke-static {}, Lr10;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lh6a;

    invoke-static {}, Li6a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lw4a;

    invoke-static {}, Lx4a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lqj1;

    invoke-static {}, Lrj1;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public i()Lw4a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->t:Lw4a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->t:Lw4a;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->t:Lw4a;

    if-nez v0, :cond_1

    new-instance v0, Lx4a;

    invoke-direct {v0, p0}, Lx4a;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->t:Lw4a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/database/VideoRoomDatabase_Impl;->t:Lw4a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
