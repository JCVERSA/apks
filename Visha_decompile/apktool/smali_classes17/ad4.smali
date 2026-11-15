.class public abstract Lad4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ad4"

.field public static final b:Landroid/net/Uri;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lad4;->b:Landroid/net/Uri;

    const-string v11, "date_added"

    const-string v12, "orientation"

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lad4;->c:[Ljava/lang/String;

    const-string v12, "orientation"

    const-string v13, "COUNT(*) AS count"

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    const-string v11, "date_added"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lad4;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "mime_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "mime_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lad4;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, -0x1

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    const-string p0, " AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bucket_id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lj18;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lj18;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lj18;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const-string p2, "external"

    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_0
    invoke-static {p2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "media_type=? AND (mime_type!=\'image/gif\')"

    return-object v0
.end method

.method public static f()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(IJ)[Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lnnb;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    const-string v0, "date_modified DESC"

    return-object v0
.end method

.method public static i(Landroid/database/Cursor;Z)Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lad4;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v1, v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v1, v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v1, v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x8

    aget-object v10, v1, v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x9

    aget-object v11, v1, v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xa

    aget-object v12, v1, v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0xb

    aget-object v1, v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v14, v2}, Lad4;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lj18;->h()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Lj18;->e(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v3}, Li18;->b(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    return-object v16

    :cond_1
    invoke-static {v3}, Li18;->a(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    return-object v16

    :cond_2
    invoke-static {v2}, Lj18;->d(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    return-object v16

    :cond_3
    const-string v15, "image/*"

    invoke-virtual {v2, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    return-object v16

    :cond_4
    invoke-static {}, Lj18;->i()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    return-object v16

    :cond_5
    invoke-static {v2}, Lj18;->c(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-object v16

    :cond_6
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v17, v15

    const/16 v15, 0x5a

    if-eq v1, v15, :cond_8

    const/16 v15, 0x10e

    if-ne v1, v15, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v1, v16

    move/from16 v15, v17

    goto :goto_1

    :cond_8
    :goto_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v1, v16

    :goto_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v16, v7

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Lj18;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_9
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->obtain()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->create()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v13, v14}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setId(J)V

    invoke-virtual {v0, v7, v8}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setBucketId(J)V

    invoke-virtual {v0, v4}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setDuration(J)V

    invoke-virtual {v0, v2}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setWidth(I)V

    invoke-virtual {v0, v1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setHeight(I)V

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setSize(J)V

    invoke-virtual {v0, v11, v12}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setDateAddedTime(J)V

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lad4;->b:Landroid/net/Uri;

    sget-object v3, Lad4;->c:[Ljava/lang/String;

    invoke-static {}, Lad4;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lad4;->f()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lad4;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_8

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lad4;->i(Landroid/database/Cursor;Z)Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->recycle()V

    const-string v3, "bucket_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    const-wide/16 v6, 0x1

    if-nez v5, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;

    invoke-direct {v5}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setBucketId(J)V

    const-string v6, "bucket_display_name"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mime_type"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    const-string v9, "_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v5, v6}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    invoke-static {v8}, Lnnb;->a(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    invoke-static {v9, v10, v7}, Lad4;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;

    invoke-virtual {v5}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lnnb;->a(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    add-int/2addr v4, v6

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;

    invoke-direct {v1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lad4;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    invoke-static {p0}, Lad4;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1, v4}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setBucketId(J)V

    const-string v2, "all"

    invoke-virtual {v1, v2}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lad4;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAllMedia Data Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    :goto_6
    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    :goto_7
    return-object v0
.end method

.method public static k(Landroid/content/Context;JZ)Lne6;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android:query-arg-sql-selection"

    invoke-static {p1, p2}, Lad4;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android:query-arg-sql-selection-args"

    invoke-static {v4, p1, p2}, Lad4;->g(IJ)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "android:query-arg-sql-limit"

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lnnb;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lad4;->b:Landroid/net/Uri;

    sget-object p2, Lad4;->c:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    move-object v1, p0

    goto :goto_3

    :cond_1
    const-string v2, "date_modified ASC limit 60"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lad4;->b:Landroid/net/Uri;

    sget-object v7, Lad4;->c:[Ljava/lang/String;

    invoke-static {p1, p2}, Lad4;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, p1, p2}, Lad4;->g(IJ)[Ljava/lang/String;

    move-result-object v9

    if-eqz p3, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object v10, v1

    :goto_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    :goto_3
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    const/4 p1, 0x0

    if-lez p0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    invoke-static {v1, p1}, Lad4;->i(Landroid/database/Cursor;Z)Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_5
    new-instance p0, Lne6;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_6

    goto :goto_5

    :cond_6
    move v4, p1

    :goto_5
    invoke-direct {p0, v4, v0}, Lne6;-><init>(ZLjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object p0

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    new-instance p0, Lne6;

    invoke-direct {p0}, Lne6;-><init>()V

    return-object p0

    :goto_6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lad4;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadMedia Page Data Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lne6;

    invoke-direct {p0}, Lne6;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object p0

    :goto_7
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p0
.end method
