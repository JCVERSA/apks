.class public final Lcom/transsion/dbdata/utils/MigrationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/dbdata/utils/MigrationUtils;

.field public static b:I

.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/List;

.field public static e:Ljava/lang/Boolean;

.field public static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-direct {v0}, Lcom/transsion/dbdata/utils/MigrationUtils;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    const-string v0, "AudioAlbum"

    const-string v1, "convert_audio"

    const-string v2, "playlist"

    const-string v3, "media_playList"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->c:Ljava/util/List;

    const-string v0, "video_playlist"

    const-string v1, "video_media_playList"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->q(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->r(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->s(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->t(Landroid/content/Context;)V

    return-void
.end method

.method public static final e()Z
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->n()Z

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->o()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOldDatabaseExists: audioHasData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", videoHasData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MigrationUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final k()Z
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final f()I
    .locals 0

    sget p0, Lcom/transsion/dbdata/utils/MigrationUtils;->b:I

    return p0
.end method

.method public final g()I
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->l()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_2
    return v1
.end method

.method public final h(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p2, Ljava/lang/Iterable;

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v3}, Lcom/transsion/dbdata/utils/MigrationUtils;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    move v1, v0

    :cond_3
    :goto_0
    :try_start_2
    invoke-static {p0, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p0, p2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasOldData: open "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, fallback to true"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MigrationUtils"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return v0
.end method

.method public final i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=? COLLATE NOCASE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {p0, v1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT 1 FROM `"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` LIMIT 1"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_2
    move-object p1, p0

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :catchall_2
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {p0, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final j(I)V
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "mmkv_key_all_migrate_retry_count"

    goto :goto_0

    :cond_1
    const-string p1, "mmkv_key_video_migrate_retry_count"

    goto :goto_0

    :cond_2
    const-string p1, "mmkv_key_audio_migrate_retry_count"

    :goto_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "defaultMMKV(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    return-void
.end method

.method public final l()Z
    .locals 2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_audio_is_migrate"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final m()Z
    .locals 2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_video_is_migrate"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final n()Z
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "audioMedia.db"

    sget-object v1, Lcom/transsion/dbdata/utils/MigrationUtils;->c:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/utils/MigrationUtils;->h(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->e:Ljava/lang/Boolean;

    :goto_0
    return p0
.end method

.method public final o()Z
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "medias.db"

    sget-object v1, Lcom/transsion/dbdata/utils/MigrationUtils;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/utils/MigrationUtils;->h(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/MigrationUtils;->f:Ljava/lang/Boolean;

    :goto_0
    return p0
.end method

.method public final p(Landroid/content/Context;)V
    .locals 22

    invoke-static/range {p1 .. p1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v1

    sget-object v2, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v2

    const-string v3, "PRAGMA query_only = ON"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v3

    invoke-interface {v3}, Ld68;->getPlayedMediaList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->c()V

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object v5

    iget-object v5, v5, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/dbdata/database/PlayListMedia;

    iget-object v9, v9, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v6}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/16 v6, 0x10

    if-eqz v5, :cond_3

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-static {v9}, Lky5;->g(I)I

    move-result v9

    invoke-static {v9, v6}, Lwn8;->d(II)I

    move-result v9

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v9}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v10

    :cond_4
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Lky5;->g(I)I

    move-result v8

    invoke-static {v8, v6}, Lwn8;->d(II)I

    move-result v6

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v8

    :cond_6
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->g()I

    move-result v8

    const/4 v9, 0x1

    const-string v11, "_data"

    if-eq v8, v9, :cond_b

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    goto/16 :goto_8

    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v9, v7, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    int-to-long v12, v9

    iget-object v15, v7, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    invoke-static {v15, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v7, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v17, v9

    move-object/from16 p1, v11

    goto :goto_5

    :cond_8
    move-object/from16 p1, v11

    const/16 v17, 0x0

    :goto_5
    iget-wide v10, v7, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    new-instance v7, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v14, v7

    move-wide/from16 v18, v10

    move-wide/from16 v20, v10

    invoke-direct/range {v14 .. v21}, Lcom/transsion/dbdata/database/AudioPlayHistory;-><init>(Ljava/lang/String;Ljava/lang/Long;IJJ)V

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->f()Lht;

    move-result-object v2

    invoke-interface {v2, v8}, Lht;->upsertMultiple(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    invoke-interface {v0, v5}, Lg5c;->batchUpdatePlayCounts(Ljava/util/Map;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    invoke-interface {v0, v5}, Lg5c;->batchUpdatePlayCounts(Ljava/util/Map;)V

    goto :goto_8

    :cond_b
    move-object/from16 p1, v11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v7, v5, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    int-to-long v7, v7

    iget-object v10, v5, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    move-object/from16 v15, p1

    invoke-static {v10, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v5, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v12, v9

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    iget-wide v13, v5, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    new-instance v5, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v9, v5

    move-wide v7, v13

    move-object/from16 v17, v15

    move-wide v15, v7

    invoke-direct/range {v9 .. v16}, Lcom/transsion/dbdata/database/AudioPlayHistory;-><init>(Ljava/lang/String;Ljava/lang/Long;IJJ)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 p1, v17

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->f()Lht;

    move-result-object v2

    invoke-interface {v2, v0}, Lht;->upsertMultiple(Ljava/util/List;)Ljava/util/List;

    :goto_8
    const-string v0, "PRAGMA query_only = OFF"

    invoke-virtual {v1, v0, v4}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    return-void
.end method

.method public final q(Landroid/content/Context;)V
    .locals 26

    invoke-static/range {p1 .. p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v1

    const-string v2, "PRAGMA query_only = ON"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object v2

    const v4, 0x7fffffff

    invoke-interface {v2, v4}, Lx38;->getPlayList(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v4

    invoke-interface {v4}, Ld68;->getAllPlayListMedia()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " audio playlists, "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " media items"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "MigrationUtils"

    invoke-static {v7, v6}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v12, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    if-nez v12, :cond_2

    iget v11, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    if-eq v11, v10, :cond_1

    :cond_2
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v11, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v12, v11, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    iget v13, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    iget v14, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    iget-object v11, v11, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flag="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateAudio: allMediaItems="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    const/4 v6, 0x2

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_6

    :cond_7
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/PlayList;

    iget v11, v4, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-nez v11, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v11

    :cond_8
    new-instance v15, Lcom/transsion/dbdata/database/PlayListItem;

    iget-object v13, v4, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    const-string v12, "name"

    invoke-static {v13, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    const/4 v14, 0x3

    if-nez v12, :cond_9

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v11, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    if-ne v11, v6, :cond_9

    move/from16 v16, v6

    goto :goto_5

    :cond_9
    move/from16 v16, v14

    :goto_5
    iget-wide v11, v4, Lcom/transsion/dbdata/database/PlayList;->setup_time:J

    iget-wide v5, v4, Lcom/transsion/dbdata/database/PlayList;->last_play_time:J

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    move-wide/from16 v20, v11

    move-object v12, v15

    move-object v11, v13

    move-wide/from16 v13, v17

    move-object v10, v15

    move-object v15, v11

    move/from16 v17, v19

    move-wide/from16 v18, v20

    move-wide/from16 v20, v5

    invoke-direct/range {v12 .. v23}, Lcom/transsion/dbdata/database/PlayListItem;-><init>(JLjava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v5

    invoke-interface {v5, v10}, Lb68;->insertSingle(Lcom/transsion/dbdata/database/PlayListItem;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget v12, v4, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v4, Lcom/transsion/dbdata/database/PlayList;->id:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserted new playlistItem,oldListId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newPlaylistId: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",newItem:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_a
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "_data"

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v21

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_b

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    :cond_b
    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/dbdata/database/PlayListMedia;

    new-instance v15, Lcom/transsion/dbdata/database/PlayListMediaItem;

    iget v13, v10, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    iget-wide v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    iget-object v14, v10, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    invoke-static {v14, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v15

    move-wide/from16 v24, v11

    move-wide/from16 v11, v16

    move/from16 v16, v13

    move-object/from16 v18, v14

    move-wide/from16 v13, v21

    move-object v9, v15

    move/from16 v15, v16

    move-wide/from16 v16, v24

    invoke-direct/range {v10 .. v20}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v9, 0xa

    goto :goto_8

    :cond_c
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v9, 0xa

    goto :goto_7

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create playlistItems,allNewMediaItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lb68;->getFavoritePlaylistId(I)J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create favoriteItems,favoritePlaylistId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    cmp-long v6, v3, v9

    if-gtz v6, :cond_e

    const-string v3, "migrateAudio: favoritePlaylistId not found, creating default favorite playlist"

    invoke-static {v7, v3}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v3

    new-instance v4, Lcom/transsion/dbdata/database/PlayListItem;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "Favorite"

    const/4 v13, 0x2

    const/4 v14, 0x1

    move-object v9, v4

    move-wide/from16 v15, v17

    invoke-direct/range {v9 .. v20}, Lcom/transsion/dbdata/database/PlayListItem;-><init>(JLjava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Lb68;->insertSingle(Lcom/transsion/dbdata/database/PlayListItem;)J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "migrateAudio: created favoritePlaylistId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_f

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_9

    :cond_f
    move v9, v6

    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "migrateAudio: mediaItemsByPlaylistId[0] size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_12

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v11, v11, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/dbdata/database/PlayListMedia;

    new-instance v15, Lcom/transsion/dbdata/database/PlayListMediaItem;

    iget v14, v9, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    iget-wide v12, v9, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    iget-object v10, v9, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    invoke-static {v10, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/16 v16, 0x0

    move-object v9, v15

    move-object/from16 v21, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v12

    move-wide v12, v3

    move-object v6, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v21

    invoke-direct/range {v9 .. v19}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    :cond_13
    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateAudio: favoritePlayListItems size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_16

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create favoriteItems,favoritePlayListItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_d
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->k()Lf68;

    move-result-object v1

    invoke-interface {v1, v2}, Lf68;->insertMultiple(Ljava/util/List;)Ljava/util/List;

    :cond_17
    const-string v1, "PRAGMA query_only = OFF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 30

    invoke-static/range {p1 .. p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v1

    const-string v2, "PRAGMA query_only = ON"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object v2

    invoke-interface {v2}, Lsl;->getAllAudioAlbum()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    const-string v5, "PRAGMA query_only = OFF"

    const-string v6, "MigrationUtils"

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v3

    goto/16 :goto_10

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "migrateAudioCover: Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " audio album items to migrate"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object v9, v9, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    invoke-direct {v8}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;-><init>()V

    const/4 v9, 0x2

    invoke-static {v8, v4, v3, v9, v3}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v10, v10, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_3

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v8, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lky5;->g(I)I

    move-result v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Lwn8;->d(II)I

    move-result v4

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v9, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v1, "migrateAudioCover: No valid audio items found after filtering"

    invoke-static {v6, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v3}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    return-void

    :cond_8
    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->h()Loe6;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object v9, v8, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v9, :cond_14

    iget-object v10, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v11, "data"

    invoke-static {v10, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Loe6;->getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v10

    iget-object v12, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_9

    goto :goto_6

    :cond_9
    move-object v12, v3

    :goto_6
    if-nez v12, :cond_c

    :cond_a
    iget-object v12, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v12, :cond_b

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_b

    goto :goto_7

    :cond_b
    move-object v12, v3

    :cond_c
    :goto_7
    iget-object v13, v8, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    iget-object v14, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v15, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p1, v2

    move-object/from16 v3, v16

    goto :goto_8

    :cond_d
    move-object/from16 p1, v2

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v7

    const-string v7, "migrateAudioCover: id="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " title="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " displayName="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " titleFromMediaStore="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " existingAlias="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    iget-object v15, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v15, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    const-string v7, "id"

    invoke-static {v3, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v16

    iget-object v3, v8, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    const/16 v27, 0x3f8

    const/16 v28, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v2

    move-object/from16 v25, v12

    move-object/from16 v26, v3

    invoke-direct/range {v14 .. v28}, Lcom/transsion/dbdata/database/MediaDataMissingItem;-><init>(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_e

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v24, v3

    goto :goto_b

    :cond_10
    :goto_a
    move-object/from16 v24, v12

    :goto_b
    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getArtist()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbum()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbumYear()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v23

    iget-object v3, v8, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_11

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_12

    invoke-virtual {v10}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object v3

    :cond_12
    move-object/from16 v25, v3

    const/16 v26, 0x7

    const/16 v27, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v27}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->copy$default(Lcom/transsion/dbdata/database/MediaDataMissingItem;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_d

    :cond_13
    move-object v2, v3

    goto :goto_d

    :cond_14
    move-object/from16 p1, v2

    move-object/from16 v29, v7

    const/4 v2, 0x0

    :cond_15
    :goto_d
    if-eqz v2, :cond_16

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object/from16 v2, p1

    move-object/from16 v7, v29

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_17
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-interface {v1, v4}, Loe6;->upsertMultiple(Ljava/util/List;)Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrateAudioCover: Successfully migrated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audio cover items"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :cond_18
    const-string v1, "migrateAudioCover: No valid media data missing items to insert"

    invoke-static {v6, v1}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :goto_f
    invoke-virtual {v0, v5, v1}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    const-string v0, "migrateAudioCover: Database unlocked successfully"

    invoke-static {v6, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_10
    const-string v2, "migrateAudioCover: No audio album data found, skipping migration"

    invoke-static {v6, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 25

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->h()Loe6;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;-><init>()V

    invoke-interface {v0}, Loe6;->getAllMissingData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lky5;->g(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lwn8;->d(II)I

    move-result v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    invoke-virtual {v5}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v5, "MigrationUtils"

    if-eqz v2, :cond_1

    const-string v0, "migrateSmartEditAlias: No audio items found, skipping"

    invoke-static {v5, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrateSmartEditAlias: Scanning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " audio items"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    iget v9, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    iget-object v10, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v10, :cond_2

    invoke-static {v10}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v7, v10}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrateSmartEditAlias: skip (alias exists), path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "migrateSmartEditAlias: title="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " != displayName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", path="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_7

    const/16 v23, 0xbff

    const/16 v24, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v7

    invoke-static/range {v10 .. v24}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->copy$default(Lcom/transsion/dbdata/database/MediaDataMissingItem;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v10

    if-nez v10, :cond_9

    :cond_7
    iget-object v12, v6, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-object v13, v6, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iget-object v14, v6, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    iget-wide v10, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    const-wide/16 v15, 0x0

    cmp-long v10, v10, v15

    if-lez v10, :cond_8

    move-object v11, v6

    goto :goto_2

    :cond_8
    move-object v11, v3

    :goto_2
    new-instance v6, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    const/16 v20, 0xb80

    const/16 v21, 0x0

    const/4 v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v7

    move-object v7, v6

    invoke-direct/range {v7 .. v21}, Lcom/transsion/dbdata/database/MediaDataMissingItem;-><init>(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v6

    :cond_9
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v0, v2}, Loe6;->upsertMultiple(Ljava/util/List;)Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrateSmartEditAlias: Migrated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " alias items"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v0, "migrateSmartEditAlias: No alias items to migrate"

    invoke-static {v5, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final t(Landroid/content/Context;)V
    .locals 26

    invoke-static/range {p1 .. p1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v1

    const-string v2, "PRAGMA query_only = ON"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d()Ljub;

    move-result-object v2

    const v4, 0x7fffffff

    invoke-interface {v2, v4}, Ljub;->getPlayList(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v4

    invoke-interface {v4}, Livb;->getAllPlayListMedia()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " video playlists, "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " media items"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MigrationUtils"

    invoke-static {v7, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget v9, v9, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlistFlag:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget v9, v9, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlist_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    const/4 v9, 0x2

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_5

    :cond_5
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/database/VideoPlayList;

    iget v10, v8, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v10, :cond_6

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v10

    :cond_6
    new-instance v15, Lcom/transsion/dbdata/database/PlayListItem;

    iget-object v14, v8, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    const-string v11, "name"

    invoke-static {v14, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    const/4 v12, 0x3

    if-nez v11, :cond_7

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget v10, v10, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlistFlag:I

    if-ne v10, v9, :cond_7

    move v10, v9

    goto :goto_4

    :cond_7
    move v10, v12

    :goto_4
    iget-wide v12, v8, Lcom/transsion/dbdata/database/VideoPlayList;->setup_time:J

    move-object/from16 p1, v4

    iget-wide v3, v8, Lcom/transsion/dbdata/database/VideoPlayList;->last_play_time:J

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x2

    move-object v11, v15

    move-wide/from16 v19, v12

    move-wide/from16 v12, v16

    move-object v5, v15

    move v15, v10

    move/from16 v16, v18

    move-wide/from16 v17, v19

    move-wide/from16 v19, v3

    invoke-direct/range {v11 .. v22}, Lcom/transsion/dbdata/database/PlayListItem;-><init>(JLjava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v3

    invoke-interface {v3, v5}, Lb68;->insertSingle(Lcom/transsion/dbdata/database/PlayListItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v11, v8, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v8, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inserted new video playlistItem,oldListId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", newPlaylistId: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",newItem:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_8
    :goto_5
    move-object/from16 p1, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "_data"

    const/16 v6, 0xa

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v8, p1

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    :cond_9
    check-cast v4, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    new-instance v13, Lcom/transsion/dbdata/database/PlayListMediaItem;

    iget v14, v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;->media_id:I

    iget-wide v11, v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;->record_time:J

    iget-object v6, v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    invoke-static {v6, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v13

    move-wide/from16 v23, v11

    move-wide/from16 v11, v16

    move-object v9, v13

    move/from16 v16, v14

    move-wide/from16 v13, v21

    move-object/from16 v25, v15

    move/from16 v15, v16

    move-wide/from16 v16, v23

    move-object/from16 v18, v6

    invoke-direct/range {v10 .. v20}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v25

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v15, v6

    const/4 v9, 0x2

    goto :goto_7

    :cond_a
    move-object v6, v15

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 p1, v8

    const/4 v9, 0x2

    goto/16 :goto_6

    :cond_b
    move-object/from16 v8, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create video playlistItems,allNewMediaItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lb68;->getFavoritePlaylistId(I)J

    move-result-wide v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create video favoriteItems,favoritePlaylistId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-gtz v3, :cond_c

    const-string v3, "migrateVideo: favoritePlaylistId not found, creating default favorite playlist"

    invoke-static {v7, v3}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->j()Lb68;

    move-result-object v3

    new-instance v4, Lcom/transsion/dbdata/database/PlayListItem;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "Favorite"

    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object v9, v4

    move-wide/from16 v15, v17

    invoke-direct/range {v9 .. v20}, Lcom/transsion/dbdata/database/PlayListItem;-><init>(JLjava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Lb68;->insertSingle(Lcom/transsion/dbdata/database/PlayListItem;)J

    move-result-wide v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateVideo: created favoritePlaylistId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_f

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget v11, v11, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlistFlag:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    new-instance v8, Lcom/transsion/dbdata/database/PlayListMediaItem;

    iget v14, v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;->media_id:I

    iget-wide v12, v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;->record_time:J

    iget-object v6, v6, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    invoke-static {v6, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-wide/16 v15, 0x0

    move-object v11, v8

    move-wide/from16 v17, v12

    move-wide v12, v15

    move/from16 v16, v14

    move-wide v14, v9

    move-object/from16 v19, v6

    invoke-direct/range {v11 .. v21}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :cond_10
    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create video favoriteItems,favoritePlayListItems: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->k()Lf68;

    move-result-object v1

    invoke-interface {v1, v2}, Lf68;->insertMultiple(Ljava/util/List;)Ljava/util/List;

    :cond_13
    const-string v1, "PRAGMA query_only = OFF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    return-void
.end method

.method public final u(I)V
    .locals 0

    sput p1, Lcom/transsion/dbdata/utils/MigrationUtils;->b:I

    return-void
.end method

.method public final v(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
    .locals 7

    const-string v0, "MigrationUtils"

    const-string v1, "PRAGMA query_only = OFF"

    instance-of v2, p2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;

    iget v3, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;

    invoke-direct {v2, p0, p2}, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;-><init>(Lcom/transsion/dbdata/utils/MigrationUtils;Lwh1;)V

    :goto_0
    iget-object p2, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object p0, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    :try_start_0
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->p(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->g()I

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v6}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/utils/MigrationUtils;->j(I)V

    sget-object p0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object p0

    new-instance v4, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;

    invoke-direct {v4, p2, p1, v5}, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;-><init>(ILandroid/content/Context;Lwh1;)V

    iput-object p1, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$1;->label:I

    invoke-static {p0, v4, v2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Le74;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v3, :cond_4

    return-object v3

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p2

    invoke-virtual {p2, v1, v5}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    invoke-static {p1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Failed to unlock databases"

    invoke-static {v0, p2, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string p1, "migration failed"

    invoke-static {v0, p1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    :cond_4
    :goto_3
    invoke-static {v6}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
