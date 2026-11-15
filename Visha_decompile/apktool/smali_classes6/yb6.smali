.class public final Lyb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb6$a;
    }
.end annotation


# static fields
.field public static final b:Lyb6$a;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyb6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyb6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lyb6;->b:Lyb6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb6;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lns1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lyb6;->c(Lns1;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p0

    return-object p0
.end method

.method public b(Lns1;)Ljava/util/List;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lxb6;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lxb6;

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lxb6;->a()I

    move-result v1

    invoke-virtual {v0}, Lxb6;->b()Z

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lyb6;->i(Landroid/content/Context;IZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.MediaBucketRequestInput"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c(Lns1;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    const-string p0, "request"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Lcom/transsion/dbdata/beans/media/MediaBucket;ILjava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object p0, Lao;->d:Lao$a;

    invoke-virtual {p0}, Lao$a;->a()Lao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    const-string p2, "parse(...)"

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUriType(I)V

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUriType(I)V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZZ)V
    .locals 10

    const-string v0, "MediaBucketTypeHandler"

    invoke-virtual {p0}, Lyb6;->h()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lou4;->d:[Ljava/lang/String;

    const-string v6, "is_music=1"

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVideoMediaBucket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isInternal:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Loa1;->f()I

    move-result p1

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lt55;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p4, :cond_2

    invoke-static {v2}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    if-nez p4, :cond_3

    sget-object v5, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {v4}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v6, 0xd

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez v7, :cond_7

    new-instance v7, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v7}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    int-to-long v8, v6

    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-boolean p3, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-virtual {v7, v4, v5}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    const-string v4, ""

    const/16 v5, 0xe

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v7, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    sget-object v5, Lou4;->e:Ljava/lang/String;

    invoke-static {v5, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v4, "Root"

    :cond_6
    invoke-virtual {v7, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {p3, v3}, Lt55;->k(ZI)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, v7, v2}, Lyb6;->k(Lcom/transsion/dbdata/beans/media/MediaBucket;Landroid/database/Cursor;)V

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p1, :cond_1

    goto :goto_1

    :cond_7
    iget v3, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    goto/16 :goto_0

    :cond_8
    :goto_1
    invoke-virtual {p0, v1, p2, p3, p4}, Lyb6;->g(Landroid/util/SparseArray;Ljava/util/ArrayList;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0, v1}, Lyb6;->l(Landroid/util/SparseArray;)V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0, v1}, Lyb6;->l(Landroid/util/SparseArray;)V

    :cond_a
    throw p1
.end method

.method public final f(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lou4;->d:[Ljava/lang/String;

    const-string v5, "is_music=1"

    const-string v7, "date_modified DESC "

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Loa1;->f()I

    move-result p1

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt55;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, ""

    const/16 v6, 0x19

    if-eq p4, v6, :cond_4

    const/16 v6, 0x1a

    if-eq p4, v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez v6, :cond_6

    new-instance v6, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {v6, v5}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    iput-boolean p3, v6, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-virtual {v6, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v6, v3, v2}, Lyb6;->d(Lcom/transsion/dbdata/beans/media/MediaBucket;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v6, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p1, :cond_1

    goto :goto_2

    :cond_6
    iget v2, v6, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_4

    :goto_3
    :try_start_2
    const-string p1, "MediaBucketTypeHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_8

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    throw p0
.end method

.method public final g(Landroid/util/SparseArray;Ljava/util/ArrayList;ZZ)V
    .locals 9

    :try_start_0
    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Ldw6;->k(Ldw6;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Loa1;->f()I

    move-result v1

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3}, Lt55;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p4, :cond_1

    invoke-static {v2}, Lt55;->i(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    if-nez p4, :cond_2

    sget-object v4, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {v3}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget-wide v5, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v7, v5

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez v8, :cond_6

    new-instance v8, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v8}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-wide v5, v8, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-boolean p3, v8, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-virtual {v8, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    const-string v3, ""

    iget-object v4, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v3, v4

    :cond_3
    iget-object v4, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v4}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v8, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    sget-object v5, Lou4;->e:Ljava/lang/String;

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "Root"

    :cond_5
    invoke-virtual {v8, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p3, v3}, Lt55;->k(ZI)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v4, "data"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v3, v2}, Lyb6;->j(Lcom/transsion/dbdata/beans/media/MediaBucket;ILjava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_0

    :cond_6
    iget v2, v8, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v8, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_1
    const-string p1, "MediaBucketTypeHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public final h()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lyb6;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyb6;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/util/SparseArray;

    :goto_0
    return-object p0
.end method

.method public final declared-synchronized i(Landroid/content/Context;IZ)Ljava/util/ArrayList;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1b

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v2, p3}, Lyb6;->e(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v2, p2}, Lyb6;->f(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final j(Lcom/transsion/dbdata/beans/media/MediaBucket;ILjava/lang/String;)V
    .locals 1

    sget-object p0, Lao;->d:Lao$a;

    invoke-virtual {p0}, Lao$a;->a()Lao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p2, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-nez p2, :cond_2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public final k(Lcom/transsion/dbdata/beans/media/MediaBucket;Landroid/database/Cursor;)V
    .locals 3

    sget-object p0, Lao;->d:Lao$a;

    invoke-virtual {p0}, Lao$a;->a()Lao;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-nez v0, :cond_2

    const/4 p0, 0x4

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public final l(Landroid/util/SparseArray;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lyb6;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
