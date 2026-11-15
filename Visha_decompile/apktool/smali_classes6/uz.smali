.class public final Luz;
.super Lzm;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzm;-><init>()V

    const-string v0, "AudioResultTypeHandler"

    iput-object v0, p0, Luz;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Luz;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Luz;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lns1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Luz;->l(Lns1;)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    return-object p0
.end method

.method public b(Lns1;)Ljava/util/List;
    .locals 0

    const-string p0, "request"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public l(Lns1;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcr;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcr;

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getContentResolver(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Luz;->m(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 8

    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luz;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v4

    invoke-virtual {p1}, Lcr;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->j()I

    move-result v6

    invoke-virtual {p1}, Lcr;->e()Z

    move-result v7

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Luz;->o(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZ)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    iget-object v0, p0, Luz;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v4

    invoke-virtual {p1}, Lcr;->t()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v6

    invoke-virtual {p1}, Lcr;->e()Z

    move-result v7

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Luz;->n(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final n(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-string v4, ",filtered:"

    const-string v5, ", isInternal:"

    const-string v6, "loadAudioItem:"

    const-string v7, "loadAudioItem cursor:"

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v14

    sget-object v15, Lou4;->d:[Ljava/lang/String;

    const-string v16, "is_music=1"

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v13, v1, Luz;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lvdb;->a:Lvdb$a;

    iget-object v14, v1, Luz;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    :try_start_1
    new-instance v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, v9, v11, v12}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_2
    iget-object v14, v1, Luz;->b:Ljava/lang/String;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v14, v7}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Luz;->b:Ljava/lang/String;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v11, 0x0

    :goto_0
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lt55;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result v4

    if-eq v3, v4, :cond_2

    const-wide/16 v4, 0x1

    add-long/2addr v11, v4

    goto :goto_0

    :cond_2
    invoke-static {v10, v0}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v1, v4}, Lzm;->g(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_4
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz p6, :cond_9

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldw6;->l(Z)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_7
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide v3

    add-long/2addr v11, v3

    :cond_9
    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v3, p2

    invoke-virtual {v0, v9, v2, v3}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_1
    move-exception v0

    const-wide/16 v11, 0x0

    :goto_3
    :try_start_4
    sget-object v2, Lvdb;->a:Lvdb$a;

    iget-object v3, v1, Luz;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAudioItem exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Luz;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_a

    goto :goto_2

    :cond_a
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lns9;->x(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "iterator(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_b

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->l(Ljava/util/Set;Z)V

    sget-object v0, Lvdb;->a:Lvdb$a;

    iget-object v1, v1, Luz;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAudioItem result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, v9, v11, v12}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object v0

    :goto_6
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method public final o(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZ)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Luz;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<queryAlbumFromAudio> flag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x16

    const-string v0, "1"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eq v4, v6, :cond_4

    const/16 v11, 0x22

    if-eq v4, v11, :cond_3

    const/16 v11, 0x2a

    if-eq v4, v11, :cond_2

    const/16 v11, 0x19

    if-eq v4, v11, :cond_1

    const/16 v11, 0x1a

    if-eq v4, v11, :cond_0

    move-object v14, v10

    move-object v15, v14

    goto :goto_1

    :cond_0
    new-array v7, v7, [Ljava/lang/String;

    iget-object v11, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "artist LIKE ? AND is_music = ?"

    :goto_0
    move-object v14, v0

    move-object v15, v7

    goto :goto_1

    :cond_1
    new-array v7, v7, [Ljava/lang/String;

    iget-object v11, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "album LIKE ? AND is_music = ?"

    goto :goto_0

    :cond_2
    new-array v7, v7, [Ljava/lang/String;

    iget-object v11, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "title LIKE ? AND is_music = ?"

    goto :goto_0

    :cond_3
    new-array v7, v8, [Ljava/lang/String;

    aput-object v3, v7, v9

    const-string v0, "relative_path = ?"

    goto :goto_0

    :cond_4
    new-array v7, v7, [Ljava/lang/String;

    iget-wide v11, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "bucket_id = ? AND is_music = ?"

    goto :goto_0

    :goto_1
    :try_start_0
    iget-boolean v0, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {v0}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v7, v1, Luz;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<queryAlbumFromAudio>: [ERROR] query() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v10

    :goto_2
    if-nez v7, :cond_5

    iget-object v0, v1, Luz;->b:Ljava/lang/String;

    const-string v1, "<queryAlbumFromAudio> [ERROR] fail to query()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_5
    iget-object v0, v1, Luz;->b:Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    iget-boolean v9, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "queryAlbumFromAudio:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isInternal:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt55;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    if-ne v4, v6, :cond_7

    invoke-static {v7}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    iget-boolean v0, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {v7, v0}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz p6, :cond_a

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Ldw6;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v8, v0

    :cond_a
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_5
    :try_start_2
    iget-object v1, v1, Luz;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<queryAlbumFromAudio>: [ERROR] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_6
    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v10, v1}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, v5, v8, v9}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object v0

    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
