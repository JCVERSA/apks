.class public final Ler;
.super Lzm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ler$a;
    }
.end annotation


# static fields
.field public static final t:Ler$a;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ler;->t:Ler$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->p:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->r:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ler;->s:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Ler;->w(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "?"

    return-object p0
.end method

.method public static synthetic z(Ler;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const/4 p6, 0x0

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Ler;->y(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/ArrayList;
    .locals 8

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p3, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<queryAllAudioFromBucket>,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioItemTypeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bucket_id = ? AND is_music = ?"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    iget-wide v2, p3, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v6, v2

    const/4 v0, 0x1

    const-string v2, "1"

    aput-object v2, v6, v0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p3, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {v2}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<queryAlbumFromAudio>: [ERROR] query() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    const-string p0, "<queryAlbumFromAudio> [ERROR] fail to query()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-boolean v3, p3, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryAlbumFromAudio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInternal:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt55;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v2, p3, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {p1, v2}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p3

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<queryAlbumFromAudio>: [ERROR] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    sget-object p1, Ler;->t:Ler$a;

    invoke-virtual {p1, p0, v0, p2}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object p0

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public final B(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;JI)Ljava/util/ArrayList;
    .locals 11

    const/4 v0, 0x1

    move-object v1, p3

    invoke-virtual {p3, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    move-object v1, p4

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move/from16 v6, p7

    invoke-static/range {v1 .. v9}, Ler;->z(Ler;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "AudioItemTypeHandler"

    const-string v2, "queryAudioFromBucketPath list is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v5

    const-string v0, "setFromInternal(...)"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v7, p7

    invoke-static/range {v2 .. v10}, Ler;->z(Ler;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final C(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v5

    iput-object p3, v5, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v10}, Ler;->z(Ler;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final D(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 9

    const-string p0, "AudioItemTypeHandler"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "_id = ?"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lou4;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<queryVideoItem>: [ERROR] query() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v8

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "<queryVideoItem> [ERROR] fail to query()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, p3}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p3

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<queryVideoItem>: [ERROR] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v8, :cond_2

    sget-object p1, Lhz9;->a:Lhz9;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "<queryVideoItem> itemId=%d, path=%s, costTime=%dms"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v8

    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public final E(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaIds"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ler;->s(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final F(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 16

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "["

    const-string v6, "("

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "]"

    const-string v12, ")"

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_music=1 and _id in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and title like \'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lt55;->l(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v5, p3

    invoke-static {v4, v5}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_4

    sget-object v5, Ldw6;->c:Ldw6$a;

    invoke-virtual {v5}, Ldw6$a;->a()Ldw6;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ldw6;->r(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string v1, "AudioItemTypeHandler"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    return-object v2

    :goto_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :goto_4
    return-object v2
.end method

.method public final G(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 7

    const-string p0, "resolver"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "displayName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    const-string v3, "_display_name = ?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lou4;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p3}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v6, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v6, p1

    goto :goto_1

    :cond_1
    sget-object p3, Ldw6;->c:Ldw6$a;

    invoke-virtual {p3}, Ldw6$a;->a()Ldw6;

    move-result-object p3

    invoke-virtual {p3, p2}, Ldw6;->o(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-object p0

    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public final H(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 7

    const-string p0, "resolver"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    const-string v3, "_data = ?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lou4;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p3}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v6, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v6, p1

    goto :goto_1

    :cond_1
    sget-object p3, Ldw6;->c:Ldw6$a;

    invoke-virtual {p3}, Ldw6$a;->a()Ldw6;

    move-result-object p3

    invoke-virtual {p3, p2}, Ldw6;->s(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-object p0

    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public final I(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ler;->v(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lb00;->g()I

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final J(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    const-string v8, "_id"

    const-string v9, "_data"

    const-string v10, "artist"

    const-string v11, "mime_type"

    const-string v12, "_size"

    const-string v13, "_display_name"

    const-string v1, "resolver"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v14}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-object v7, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iput-object v7, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_1
    :goto_0
    return-object v14

    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object v7, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_3
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    :cond_4
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    :cond_5
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_6

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :cond_6
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_7

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_7
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    :cond_8
    iget-object v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v14, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v2, "displayName"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2}, Ler;->G(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    move-object v14, v0

    :cond_9
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v7, v14, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_a

    goto :goto_1

    :cond_a
    :goto_3
    return-object v14

    :goto_4
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public final K(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Ler;->q(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    :goto_0
    add-int/lit8 p2, p1, -0x1

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final L(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Ler;->t(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    :goto_0
    add-int/lit8 p2, p1, -0x1

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final M(J)V
    .locals 0

    iget-object p0, p0, Ler;->s:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sput-wide p1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->i:J

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Lns1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ler;->m(Lns1;)Lcom/transsion/dbdata/beans/media/AudioItem;

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

    invoke-virtual {p0, v0, p1}, Ler;->o(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public m(Lns1;)Lcom/transsion/dbdata/beans/media/AudioItem;
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

    invoke-virtual {p0, v0, p1}, Ler;->p(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;

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

.method public final n(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ler;->D(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    sget-object p3, Ldw6;->c:Ldw6$a;

    invoke-virtual {p3}, Ldw6$a;->a()Ldw6;

    move-result-object p3

    invoke-virtual {p3, p2}, Ldw6;->p(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Ler;->D(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Ler;->D(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    invoke-virtual {p0, p2}, Ldw6;->p(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final o(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 9

    invoke-virtual {p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ler;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p1}, Lcr;->e()Z

    move-result v7

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Ler;->F(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    invoke-virtual {p1}, Lcr;->r()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcr;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcr;->r()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcr;->f()I

    move-result p1

    invoke-virtual {p0, p2, v1, v2, p1}, Ler;->I(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ler;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcr;->e()Z

    move-result p1

    invoke-virtual {p0, p2, v1, v2, p1}, Ler;->E(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcr;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ler;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
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

    invoke-virtual/range {v1 .. v7}, Ler;->y(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v0

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcr;->j()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ler;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Ler;->A(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit v0

    goto/16 :goto_0

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ler;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v4

    invoke-virtual {p1}, Lcr;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->d()J

    move-result-wide v6

    invoke-virtual {p1}, Lcr;->j()I

    move-result v8

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Ler;->B(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit v0

    goto/16 :goto_0

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcr;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ler;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcr;->j()I

    move-result p1

    invoke-virtual {p0, p2, v1, v2, p1}, Ler;->C(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    monitor-exit v0

    goto/16 :goto_0

    :catchall_6
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_6
    invoke-virtual {p1}, Lcr;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ler;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v4

    invoke-virtual {p1}, Lcr;->t()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v7

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Ler;->L(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    monitor-exit v0

    goto/16 :goto_0

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7
    invoke-virtual {p1}, Lcr;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ler;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v4

    invoke-virtual {p1}, Lcr;->t()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v6

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Ler;->K(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    monitor-exit v0

    goto/16 :goto_0

    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_8
    invoke-virtual {p1}, Lcr;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ler;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcr;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcr;->j()I

    move-result v7

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Ler;->x(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    monitor-exit v0

    goto/16 :goto_0

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_9
    invoke-virtual {p1}, Lcr;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Ler;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-virtual {p1}, Lcr;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1}, Lcr;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcr;->j()I

    move-result v7

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Ler;->x(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    monitor-exit v0

    goto :goto_0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_a
    invoke-virtual {p1}, Lcr;->s()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ler;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    invoke-virtual {p1}, Lcr;->y()Z

    move-result v3

    invoke-virtual {p1}, Lcr;->s()I

    move-result v4

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v5

    invoke-virtual {p1}, Lcr;->e()Z

    move-result v6

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Ler;->u(Landroid/content/ContentResolver;ZIZZ)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    monitor-exit v0

    goto :goto_0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_b
    invoke-virtual {p1}, Lcr;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Ler;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-virtual {p1}, Lcr;->y()Z

    move-result v1

    invoke-virtual {p1}, Lcr;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Ler;->r(Landroid/content/ContentResolver;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    monitor-exit v0

    goto :goto_0

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_c
    iget-object v0, p0, Ler;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
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

    invoke-virtual/range {v1 .. v7}, Ler;->q(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final p(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    invoke-virtual {p1}, Lcr;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ler;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcr;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcr;->y()Z

    move-result p1

    invoke-virtual {p0, p2, v1, p1}, Ler;->H(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

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
    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ler;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcr;->y()Z

    move-result p1

    invoke-virtual {p0, p2, v1, p1}, Ler;->G(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcr;->k()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ler;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Lcr;->k()I

    move-result v1

    invoke-virtual {p1}, Lcr;->e()Z

    move-result p1

    invoke-virtual {p0, p2, v1, p1}, Ler;->n(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcr;->v()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Ler;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Ler;->J(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final q(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-string v4, "loadAudioItem:"

    const-string v5, "AudioItemTypeHandler"

    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lou4;->d:[Ljava/lang/String;

    const-string v12, "is_music=1"

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_0

    return-object v7

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isInternal:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",filtered:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lt55;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result v4

    if-eq v3, v4, :cond_2

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_2
    invoke-static {v8, v1}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p0, v4}, Lzm;->g(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz p6, :cond_9

    sget-object v1, Ldw6;->c:Ldw6$a;

    invoke-virtual {v1}, Ldw6$a;->a()Ldw6;

    move-result-object v1

    invoke-virtual {v1, v3}, Ldw6;->l(Z)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

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

    move-result v11

    if-nez v11, :cond_6

    :cond_7
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide v3

    add-long/2addr v9, v3

    :cond_9
    invoke-virtual {p0, v9, v10}, Ler;->M(J)V

    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v2, v1}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lns9;->x(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_b

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->l(Ljava/util/Set;Z)V

    return-object v7

    :goto_6
    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method public final r(Landroid/content/ContentResolver;ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const-string p0, "AudioItemTypeHandler"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lou4;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v6

    const-string v4, "is_music=1"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gtz v8, :cond_2

    invoke-static {}, Lbx9;->t()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    invoke-static {}, Lbya;->c()V

    invoke-static {v2, v7}, Lcom/transsion/utils/MediaMetadataRetrieverUtils;->a(Ljava/lang/String;I)Lcom/transsion/utils/MediaMetadataRetrieverUtils$a;

    move-result-object v8

    iget v8, v8, Lcom/transsion/utils/MediaMetadataRetrieverUtils$a;->a:I

    if-eqz v8, :cond_1

    int-to-long v5, v8

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAudioItemByFilterType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " duration is 0, set duration:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    const-string v8, "loadAudioItemByFilterType metadata failed"

    invoke-static {p0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    invoke-static {v2}, Lt55;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "filter_size"

    invoke-static {p3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3, v4}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->q(J)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_4
    const-string v1, "filter_duration"

    invoke-static {p3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v5, v6}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->n(J)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-static {p1, p2}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public final s(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 24

    move/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "loadAudioItemByPlayListMedia:"

    const-string v3, "AudioItemTypeHandler"

    const-string v4, "resolver"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v6, "toString(...)"

    invoke-static {v12, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "["

    const-string v14, "("

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "]"

    const-string v20, ")"

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is_music=1 and _id in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAudioItemByMediaIds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInternal:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt55;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v0}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v5

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v11, v5

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_4

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldw6;->q(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v11, v1}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    return-object v4

    :goto_3
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :goto_4
    return-object v4
.end method

.method public final t(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9

    const-string p0, "loadAudioItem:"

    const-string v0, "AudioItemTypeHandler"

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "title LIKE ? AND is_music = ?"

    const-string v3, "1"

    filled-new-array {p5, v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isInternal:"

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result p1

    if-eq p6, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0}, Lt55;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2, p3}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-eqz p4, :cond_4

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object p0, Ler;->t:Ler$a;

    invoke-virtual {p0, v1, p4, p2}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    return-object v1

    :goto_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public final u(Landroid/content/ContentResolver;ZIZZ)Ljava/util/ArrayList;
    .locals 9

    const-string p0, "loadAudioItemFrequently:"

    const-string v0, "AudioItemTypeHandler"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lou4;->d:[Ljava/lang/String;

    const-string v6, "is_music=1"

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isInternal:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result p1

    if-eq p4, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0}, Lt55;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2, p2}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    if-lt p1, p3, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    if-eqz p5, :cond_6

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    invoke-virtual {p0, p3}, Ldw6;->n(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    return-object v1

    :goto_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public final v(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 13

    move/from16 v0, p3

    const-string v1, "AudioItemTypeHandler"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v5, ","

    new-instance v10, Ldr;

    invoke-direct {v10}, Ldr;-><init>()V

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p4

    invoke-static/range {v4 .. v12}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lou4;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, [Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v11

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadConverterItem:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isInternal:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    invoke-static {v6}, Lt55;->l(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v0}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v7, p5

    if-le v6, v7, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v5

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Ler;->t:Ler$a;

    move-object v4, p2

    invoke-virtual {v0, v2, v3, p2}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    return-object v2

    :goto_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public final x(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 16

    move/from16 v1, p6

    const-string v2, "AudioItemTypeHandler"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x2b

    const/4 v4, 0x2

    const-string v5, "1"

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_0

    move-object v13, v9

    move-object v14, v13

    goto :goto_1

    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    aput-object p3, v0, v8

    aput-object v5, v0, v6

    aput-object p5, v0, v4

    const-string v4, "album LIKE ? AND is_music = ? AND title LIKE ?"

    :goto_0
    move-object v14, v0

    move-object v13, v4

    goto :goto_1

    :cond_1
    new-array v0, v7, [Ljava/lang/String;

    aput-object p4, v0, v8

    aput-object v5, v0, v6

    aput-object p5, v0, v4

    const-string v4, "artist LIKE ? AND is_music = ? AND title LIKE ?"

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-static {v8}, Lt55;->e(Z)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<queryAlbumFromAudio>: [ERROR] query() Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v9

    :goto_2
    if-nez v4, :cond_2

    const-string v0, "<queryAlbumFromAudio> [ERROR] fail to query()"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryAlbumFromAudio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isInternal:false"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt55;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x16

    if-ne v1, v0, :cond_4

    invoke-static {v4}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_4
    invoke-static {v4, v8}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<queryAlbumFromAudio>: [ERROR] Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_6
    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v9, v1}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v3

    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final y(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<queryAlbumFromAudio> flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AudioItemTypeHandler"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x16

    const-string v0, "1"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eq v3, v6, :cond_4

    const/16 v11, 0x22

    if-eq v3, v11, :cond_3

    const/16 v11, 0x2a

    if-eq v3, v11, :cond_2

    const/16 v11, 0x19

    if-eq v3, v11, :cond_1

    const/16 v11, 0x1a

    if-eq v3, v11, :cond_0

    move-object v14, v10

    move-object v15, v14

    goto :goto_1

    :cond_0
    new-array v7, v7, [Ljava/lang/String;

    iget-object v11, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "artist LIKE ? AND is_music = ?"

    :goto_0
    move-object v14, v0

    move-object v15, v7

    goto :goto_1

    :cond_1
    new-array v7, v7, [Ljava/lang/String;

    iget-object v11, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "album LIKE ? AND is_music = ?"

    goto :goto_0

    :cond_2
    new-array v7, v7, [Ljava/lang/String;

    iget-object v11, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "title LIKE ? AND is_music = ?"

    goto :goto_0

    :cond_3
    new-array v7, v8, [Ljava/lang/String;

    aput-object v2, v7, v9

    const-string v0, "relative_path = ?"

    goto :goto_0

    :cond_4
    new-array v7, v7, [Ljava/lang/String;

    iget-wide v11, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    aput-object v0, v7, v8

    const-string v0, "bucket_id = ? AND is_music = ?"

    goto :goto_0

    :goto_1
    :try_start_0
    iget-boolean v0, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

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

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<queryAlbumFromAudio>: [ERROR] query() Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v10

    :goto_2
    if-nez v7, :cond_5

    const-string v0, "<queryAlbumFromAudio> [ERROR] fail to query()"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-boolean v8, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "queryAlbumFromAudio:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isInternal:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
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

    if-eqz v0, :cond_6

    if-ne v3, v6, :cond_7

    invoke-static {v7}, Lt55;->g(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    iget-boolean v0, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {v7, v0}, Lt55;->f(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz p6, :cond_9

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Ldw6;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<queryAlbumFromAudio>: [ERROR] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_6
    sget-object v0, Ler;->t:Ler$a;

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v10, v1}, Ler$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v4

    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
