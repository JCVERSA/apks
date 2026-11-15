.class public final Ljx5;
.super Lmw5;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmw5;-><init>()V

    const-string v0, "MVResultTypeHandler"

    iput-object v0, p0, Ljx5;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljx5;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljx5;->d:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic i(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Ljx5;->m(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Ljx5;->o(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final o(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic s(Ljx5;Landroid/content/ContentResolver;Lcr;ZILjava/lang/Object;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljx5;->r(Landroid/content/ContentResolver;Lcr;Z)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lns1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljx5;->k(Lns1;)Lcom/transsion/dbdata/beans/AudioResultModel;

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

.method public k(Lns1;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 3

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

    move-result-object v1

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "getContentResolver(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, p1}, Ljx5;->p(Landroid/content/Context;Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/AudioResultModel;

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

.method public final l(ZZ)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const-string p2, "scanMusicVideoCache"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance v2, Lhx5;

    invoke-direct {v2, p0}, Lhx5;-><init>(Ljava/util/List;)V

    invoke-static {p2, v0, v1, p1, v2}, Lt55;->m(Ljava/util/List;JZLe74;)J

    move-result-wide p1

    new-instance v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public final n(ZZ)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string p2, "musicVideoAddByUserCache"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    new-instance v2, Lix5;

    invoke-direct {v2, p0}, Lix5;-><init>(Ljava/util/List;)V

    invoke-static {p2, v0, v1, p1, v2}, Lt55;->m(Ljava/util/List;JZLe74;)J

    move-result-wide p1

    new-instance v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public final p(Landroid/content/Context;Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 2

    invoke-virtual {p2}, Lcr;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljx5;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljx5;->t(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    invoke-virtual {p2}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcr;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ljx5;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p2}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    invoke-virtual {p2}, Lcr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcr;->j()I

    move-result p2

    invoke-virtual {p0, p3, v0, v1, p2}, Ljx5;->q(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-eq p4, v3, :cond_5

    const/16 v5, 0x22

    if-eq p4, v5, :cond_3

    const/16 p3, 0x2a

    const-string v5, "parentName"

    if-eq p4, p3, :cond_2

    const/16 p3, 0x19

    if-eq p4, p3, :cond_1

    const/16 p3, 0x1a

    if-eq p4, p3, :cond_0

    move-object v8, v4

    goto/16 :goto_2

    :cond_0
    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist LIKE ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v8, p3

    goto/16 :goto_2

    :cond_1
    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album LIKE ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title LIKE ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string p3, ""

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "relative_path = ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id = ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_2
    const/4 p3, 0x0

    :try_start_0
    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {v2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v9, p3

    check-cast v9, [Ljava/lang/String;

    iget-boolean p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-virtual {p0, p3}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v4

    :goto_3
    if-nez p0, :cond_6

    return-object v4

    :cond_6
    const-wide/16 v1, 0x0

    :goto_4
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "_data"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt55;->l(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    if-ne p4, v3, :cond_8

    invoke-static {p0}, Lt55;->h(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_8
    iget-boolean p1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {p0, p1}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    new-instance p3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p3, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_9
    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :goto_6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_7
    new-instance p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object p0

    :goto_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public final r(Landroid/content/ContentResolver;Lcr;Z)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 12

    if-nez p3, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p3

    iget-object p3, p3, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const-string v0, "scanMusicVideoCache"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcr;->i()Z

    move-result p1

    invoke-virtual {p2}, Lcr;->x()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljx5;->l(ZZ)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p3

    iget-object p3, p3, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3, v4}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {p2}, Lcr;->y()Z

    move-result v4

    invoke-virtual {p0, v4}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lqpb;->b:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v11

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcr;->y()Z

    move-result v6

    invoke-virtual {p0, v3, v6}, Lmw5;->c(Landroid/database/Cursor;Z)V

    invoke-virtual {p2}, Lcr;->i()Z

    move-result v6

    invoke-static {v3}, Lt55;->h(Landroid/database/Cursor;)Z

    move-result v7

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-static {v4}, Lt55;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcr;->y()Z

    move-result v4

    invoke-static {v3, v4}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v4

    move-object v3, v0

    :goto_3
    :try_start_2
    iget-object v5, p0, Ljx5;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {p2}, Lcr;->y()Z

    move-result v3

    invoke-virtual {p2}, Lcr;->i()Z

    move-result p2

    invoke-virtual {p0, p1, p3, v3, p2}, Lmw5;->g(Landroid/content/ContentResolver;Ljava/util/List;ZZ)V

    invoke-virtual {p0, p3}, Lmw5;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    :cond_7
    return-object v0

    :goto_5
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0
.end method

.method public final t(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 7

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Ljx5;->s(Ljx5;Landroid/content/ContentResolver;Lcr;ZILjava/lang/Object;)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p2

    invoke-virtual {p0, p1}, Ljx5;->u(Lcr;)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    const-wide/16 v1, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide v3

    goto :goto_2

    :cond_4
    move-wide v3, v1

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_5
    invoke-static {p1}, Lns9;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_6
    invoke-direct {p1, p0, v1, v2}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object p1
.end method

.method public final u(Lcr;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 7

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcr;->x()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljx5;->n(ZZ)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object v0

    invoke-interface {v0}, Lbw6;->getAll()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v5, v4}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-virtual {p0, v5}, Lmw5;->d(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v4

    invoke-static {v5}, Lt55;->i(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v6

    if-eq v4, v6, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/dbdata/beans/AudioResultModel;-><init>(Ljava/util/List;J)V

    return-object p0
.end method
