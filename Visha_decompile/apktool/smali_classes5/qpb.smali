.class public abstract Lqpb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static f:Ljava/util/ArrayList;

.field public static final g:Ljava/lang/Object;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/lang/Object;

.field public static final k:Ljava/lang/Object;

.field public static final l:Ljava/lang/Object;

.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/lang/Object;

.field public static final o:Ljava/lang/Object;

.field public static p:I

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static final s:Ljava/util/ArrayList;

.field public static final t:Ljava/util/ArrayList;

.field public static final u:Ljava/util/ArrayList;

.field public static final v:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, ".scc"

    const-string v1, ".stl"

    const-string v2, ".srt"

    const-string v3, ".ass"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->a:[Ljava/lang/String;

    const-string v15, "width"

    const-string v16, "height"

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    const-string v5, "datetaken"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "_data"

    const-string v9, "duration"

    const-string v10, "bucket_id"

    const-string v11, "bucket_display_name"

    const-string v12, "_size"

    const-string v13, "resolution"

    const-string v14, "orientation"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->b:[Ljava/lang/String;

    const-string v14, "width"

    const-string v15, "height"

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    const-string v5, "datetaken"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "_data"

    const-string v9, "duration"

    const-string v10, "bucket_id"

    const-string v11, "bucket_display_name"

    const-string v12, "_size"

    const-string v13, "orientation"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->c:[Ljava/lang/String;

    const-string v10, "bucket_display_name"

    const-string v11, "_size"

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    const-string v5, "datetaken"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "_data"

    const-string v9, "bucket_id"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->d:[Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqpb;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqpb;->o:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqpb;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqpb;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqpb;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqpb;->v:Ljava/util/ArrayList;

    return-void
.end method

.method public static A(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAllLongVideoMediaItem count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoDBHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v7, "(duration IS NULL OR duration > 300000)"

    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllLongVideoMediaItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-wide v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-static {v1}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, p3, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p3, :cond_5

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lqpb;->H(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/Set;Z)V

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_7

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-ne p2, v2, :cond_6

    :cond_8
    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->l(Ljava/util/Set;Z)V

    invoke-static {p1, p3}, Lqpb;->m0(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p0
.end method

.method public static B(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 10

    const-string v0, "loadAllMediaItemWithList:"

    const-string v1, "VideoDBHelper"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isInternal:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Loa1;->e()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_4
    invoke-static {}, Loa1;->e()I

    move-result v0

    invoke-static {p0, v2, p2, v0}, Lqpb;->J(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-static {p1}, Lqpb;->l0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void

    :goto_6
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public static C(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAllShortVideoMediaItem count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoDBHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    const-string v6, "(duration IS NULL OR duration <= 300000)"

    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAllShortVideoMediaItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-wide v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    invoke-static {v1}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, p3, :cond_0

    :cond_3
    if-eqz v0, :cond_4

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p3, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lqpb;->H(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/Set;Z)V

    :cond_5
    return-object p1

    :goto_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public static D(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)V
    .locals 16

    move/from16 v0, p2

    const-string v7, "VideoDBHelper"

    invoke-static {}, Lqpb;->P()Landroid/util/SparseArray;

    move-result-object v8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lqpb;->l()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoMediaBucketFilterLabelItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lqpb;->Q(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;ZZ)V

    move-object/from16 v1, p0

    invoke-static {v1, v8, v2, v9, v0}, Lqpb;->M(Landroid/content/ContentResolver;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v10

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v10

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-static {v8}, Lqpb;->g0(Landroid/util/SparseArray;)V

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

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {v8}, Lqpb;->g0(Landroid/util/SparseArray;)V

    :cond_2
    throw v0
.end method

.method public static E(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAllVideoMediaItem count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoDBHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllVideoMediaItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {v1}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, p3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p3, :cond_4

    invoke-static {p0, p1, p2, p3, v0}, Lqpb;->K(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/Set;)V

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_6

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-ne p2, v2, :cond_5

    :cond_7
    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->l(Ljava/util/Set;Z)V

    invoke-static {p1, p3}, Lqpb;->m0(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :goto_5
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0
.end method

.method public static F()V
    .locals 1

    new-instance v0, Lppb;

    invoke-direct {v0}, Lppb;-><init>()V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static G(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    sget-object v0, Lqpb;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lqpb;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSubtitleIndex(I)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static H(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/Set;Z)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "."

    invoke-static {}, Lpp3;->w()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLongOrShortVideoFromFilesDbBySuffix :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoDBHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data LIKE?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lhk3;->h:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    add-int/lit8 v10, v7, -0x1

    if-ge v8, v10, :cond_1

    const-string v9, " OR _data LIKE?"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    if-eqz p5, :cond_2

    const-string v7, " AND (duration IS NULL OR duration <= 300000)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v7, " AND (duration IS NULL OR duration > 300000)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadLongOrShortVideoFromFilesDbBySuffix selection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lhk3;->h:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadVideoFromFilesDbBySuffix:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isInternal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x7

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4, v1}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v6

    iget-wide v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/32 v10, 0x493e0

    cmp-long v12, v7, v10

    if-gtz v12, :cond_8

    if-nez p5, :cond_9

    :cond_8
    cmp-long v7, v7, v10

    if-lez v7, :cond_b

    if-nez p5, :cond_b

    :cond_9
    invoke-static {v6}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    if-eqz v2, :cond_a

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_a

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v7, p3

    if-lt v6, v7, :cond_5

    :cond_c
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLongOrShortVideoFromFilesDbBySuffix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_d

    goto :goto_3

    :cond_d
    :goto_5
    return-void

    :goto_6
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method

.method public static I(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZLjava/util/ArrayList;Z)V
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "loadMediaItemByMediaIds:"

    const-string v4, "VideoDBHelper"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "["

    const-string v8, "("

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "]"

    const-string v8, ")"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-static {v0, v2, v6}, Lt6c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isInternal:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Loa1;->e()I

    move-result v3

    :cond_2
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadMediaItemByMediaIds not exist data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-static {v5, v1}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v6

    invoke-static {v6}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v3, :cond_2

    :cond_6
    :goto_1
    const v3, 0x7fffffff

    move-object v6, p0

    invoke-static {p0, v0, v1, v3, v2}, Lqpb;->L(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/ArrayList;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lqpb;->m0(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    :goto_4
    return-void

    :goto_5
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public static J(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lqpb;->K(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/Set;)V

    return-void
.end method

.method public static K(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/Set;)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "."

    invoke-static {}, Lpp3;->w()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadVideoFromFilesDbBySuffix :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoDBHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data LIKE?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lhk3;->h:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    add-int/lit8 v10, v7, -0x1

    if-ge v8, v10, :cond_1

    const-string v9, " OR _data LIKE?"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadVideoFromFilesDbBySuffix selection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lhk3;->h:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadVideoFromFilesDbBySuffix:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isInternal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x7

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v4, v1}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v6

    invoke-static {v6}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    if-eqz v2, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_7

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v7, p3

    if-lt v6, v7, :cond_4

    :cond_9
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoFromFilesDbBySuffix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    :goto_4
    return-void

    :goto_5
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public static L(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZILjava/util/ArrayList;)V
    .locals 10

    const-string v0, "."

    invoke-static {}, Lpp3;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoFromFilesDbBySuffix :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDBHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_data LIKE?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lhk3;->h:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v5, v6, :cond_1

    const-string v6, " OR _data LIKE?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "["

    const-string v5, "("

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    const-string v4, "]"

    const-string v5, ")"

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ") AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoFromFilesDbBySuffix selection:"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lhk3;->h:[Ljava/lang/String;

    invoke-static {p2}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loadVideoFromFilesDbBySuffix:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", isInternal:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x7

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p0, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p4, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {p4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1, p2}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-static {p0}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt p0, p3, :cond_4

    :cond_8
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadVideoFromFilesDbBySuffix "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p0
.end method

.method public static M(Landroid/content/ContentResolver;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 17

    const-string v1, "VideoDBHelper"

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lhk3;->h:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_1

    const-string v5, " OR _data LIKE?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoFromFilesDbBySuffix selection:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lhk3;->h:[Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoFromFilesDbBySuffix:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isInternal:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    move-object v11, v2

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    invoke-static/range {v11 .. v16}, Lqpb;->Q(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVideoFromFilesDbBySuffix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static N(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lqpb;->O(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/util/Set;)V

    return-void
.end method

.method public static O(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/util/Set;)V
    .locals 9

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadVideoMediaItemFromFilesDb :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v6

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x1

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, ",?"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadVideoMediaItemFromFilesDb:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isInternal:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x7

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0, p3}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-static {p0}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    if-eqz p5, :cond_6

    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p2

    const/16 v2, 0x1e

    if-ge p2, v2, :cond_6

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p2

    invoke-virtual {p2, p0, v8}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt p0, p4, :cond_4

    :cond_8
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p0
.end method

.method public static P()Landroid/util/SparseArray;
    .locals 3

    sget-object v0, Lqpb;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lqpb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v2, Lqpb;->f:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static Q(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {}, Loa1;->f()I

    move-result v4

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "visha_hls_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".ts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static {v8, v6, v11}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/FolderLabelItem;

    move-result-object v12

    const-string v13, ""

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/transsion/dbdata/beans/FolderLabelItem;->getMatchName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v12}, Lcom/transsion/dbdata/beans/FolderLabelItem;->getMatchName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    move v15, v11

    :goto_1
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-eqz v15, :cond_7

    iget v11, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderIndex:I

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez v11, :cond_6

    new-instance v11, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v11}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    int-to-long v13, v5

    iput-wide v13, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-boolean v3, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {v7, v6}, Lqpb;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v8}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    move-object/from16 v19, v6

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v3, v6}, Lqpb;->n(ZI)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadVideoMediaBucketFilterLabelItem virtualBucket bucketId:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",parentPath:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",uri:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, "VideoDBHelper"

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderIndex:I

    invoke-virtual {v11, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setLabelFolder(Z)V

    invoke-virtual {v11, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolder(Z)V

    iget-object v6, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->matchName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolderMatchName(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    invoke-virtual {v11, v13}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setRelativePath(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderIndex:I

    invoke-virtual {v2, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v4, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v19, v6

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    iget-object v6, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    const/4 v13, 0x1

    add-int/2addr v6, v13

    iput v6, v11, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    goto :goto_3

    :cond_7
    move-object/from16 v19, v6

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    goto :goto_2

    :goto_3
    move-object/from16 v6, v19

    if-eqz v15, :cond_8

    invoke-static {v8, v6, v13}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/FolderLabelItem;

    move-result-object v12

    :cond_8
    if-eqz v12, :cond_9

    const/4 v11, 0x1

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    :goto_4
    if-nez v18, :cond_10

    new-instance v13, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v13}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    int-to-long v14, v5

    iput-wide v14, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-boolean v3, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {v7, v6}, Lqpb;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v8}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setRelativePath(Ljava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    if-eqz v11, :cond_a

    iget-object v6, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    :goto_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    const/16 v9, 0xa

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v9

    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v8}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_c
    sget-object v9, Lqpb;->e:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v17, "Root"

    :cond_d
    move-object/from16 v8, v17

    if-eqz v6, :cond_e

    const-string v9, "DCIM/Camera/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (SD)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_e
    invoke-virtual {v13, v8}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v3, v6}, Lqpb;->n(ZI)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    if-eqz v11, :cond_f

    iget v6, v12, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderIndex:I

    invoke-virtual {v13, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setLabelFolder(Z)V

    goto :goto_7

    :cond_f
    const/4 v6, 0x1

    sget v8, Lqpb;->p:I

    invoke-virtual {v13, v8}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    sget v8, Lqpb;->p:I

    add-int/2addr v8, v6

    sput v8, Lqpb;->p:I

    :goto_7
    iget-object v6, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    goto :goto_8

    :cond_10
    move-object/from16 v5, v18

    iget-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v5, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    goto/16 :goto_0

    :cond_11
    :goto_8
    return-void
.end method

.method public static R(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lqpb;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lqpb;->c(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, p2}, Lqpb;->A(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static S(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lqpb;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v0, v2, p1}, Lqpb;->B(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static T(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lqpb;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, p2}, Lqpb;->C(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    const-string p1, "VideoDBHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryAllShortVideos count = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static U(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lqpb;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lqpb;->p:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lqpb;->D(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)V

    new-instance p0, Lopb;

    invoke-direct {p0}, Lopb;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static V(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lqpb;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lqpb;->c(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, p2}, Lqpb;->E(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static W(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lqpb;->g:Ljava/lang/Object;

    monitor-enter v6

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "relative_path LIKE?"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lqpb;->b:[Ljava/lang/String;

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string p1, "VideoDBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryDownloadedVideos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_1

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :cond_1
    :try_start_2
    const-string p1, "VideoDBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryDownloadedVideos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Loa1;->e()I

    move-result p1

    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v7, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lqpb;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    iget-object v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lt v0, p1, :cond_2

    :cond_6
    :goto_4
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_4
    const-string p2, "VideoDBHelper"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    :goto_6
    :try_start_5
    monitor-exit v6

    return-object p0

    :goto_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0

    :goto_8
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lqpb;->I(Landroid/content/ContentResolver;Ljava/util/ArrayList;ZLjava/util/ArrayList;Z)V

    return-object v0
.end method

.method public static Y(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 11

    const-string v0, "mime_type"

    const-string v1, "_size"

    const-string v2, "_display_name"

    new-instance v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    sget-object v7, Lqpb;->b:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    iput-object p1, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    return-object v3

    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v5, -0x1

    if-eq p0, v5, :cond_3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v5, :cond_4

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    :cond_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v5, :cond_5

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz p1, :cond_7

    :goto_1
    iput-object p1, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    goto :goto_3

    :goto_2
    :try_start_2
    const-string v0, "VideoDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOtherAppVideoItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    return-object v3

    :goto_4
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz p1, :cond_9

    iput-object p1, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_9
    throw p0
.end method

.method public static Z(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 6

    sget-object v0, Lqpb;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Loa1;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lqpb;->V(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lns9;->o()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {}, Lns9;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->g(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v5, :cond_1

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lns9;->y(Ljava/util/List;)Ljava/util/List;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    invoke-static {v1}, Lqpb;->k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_5
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lqpb;->z()V

    return-void
.end method

.method public static a0(Landroid/content/ContentResolver;I)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lqpb;->b0(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lqpb;->b0(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/ArrayList;ZLjava/io/File;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lqpb;->y(Ljava/util/ArrayList;ZLjava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static b0(Landroid/content/ContentResolver;IZ)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 10

    const-string v0, "VideoDBHelper"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v6, "_id = ?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p2}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lqpb;->c:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<queryVideoItem>: [ERROR] query() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v9

    :goto_0
    if-nez p0, :cond_0

    const-string p0, "<queryVideoItem> [ERROR] fail to query()"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p2}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<queryVideoItem>: [ERROR] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v9, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "<queryVideoItem> itemId=%d, path=%s, costTime=%dms"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v9

    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lqpb;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Loa1;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lt6c;->n(Landroid/content/Context;ZIZ)Ljava/util/ArrayList;

    move-result-object p0

    sget-object v1, Lqpb;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c0(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 7

    const-string v3, "_data LIKE?"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lqpb;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p0, p1

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public static d(Landroid/content/Context;Z)Lcom/transsion/dbdata/beans/media/TotalVideosBean;
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Lcom/transsion/dbdata/beans/media/TotalVideosBean;

    invoke-direct {v6}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;-><init>()V

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-static {p1}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lqpb;->b:[Ljava/lang/String;

    const-string v5, "date_modified DESC "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalCount(I)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {v6, v8, v9}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalSize(J)V

    invoke-static {p0, p1, v6}, Lqpb;->e(Landroid/content/Context;ZLcom/transsion/dbdata/beans/media/TotalVideosBean;)V

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->getTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalCountStr(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->getTotalSize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalSizeStr(Ljava/lang/String;)V

    return-object v6

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xb

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int/2addr v0, v10

    goto :goto_0

    :goto_3
    :try_start_2
    const-string v1, "VideoDBHelper"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_2

    :catchall_0
    if-eqz v7, :cond_0

    goto :goto_2
.end method

.method public static d0(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 7

    const-string v3, "_data = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p2}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lqpb;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p2}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p0, p1

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public static e(Landroid/content/Context;ZLcom/transsion/dbdata/beans/media/TotalVideosBean;)V
    .locals 10

    const-string v0, "VideoDBHelper"

    invoke-static {}, Lpp3;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->getTotalSize()J

    move-result-wide v8

    const/4 p0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lhk3;->h:[Ljava/lang/String;

    array-length v4, v4

    move v5, p0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v5, v6, :cond_1

    const-string v6, " OR _data LIKE?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVideoFromFilesDbBySuffix selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lhk3;->h:[Ljava/lang/String;

    invoke-static {p1}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lqpb;->c:[Ljava/lang/String;

    const-string v7, "date_modified DESC "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    iget p0, p2, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalCount(I)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p2, v8, v9}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalSize(J)V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x7

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const/16 p1, 0xb

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v8, v2

    goto :goto_1

    :cond_5
    :goto_2
    iget p1, p2, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int/2addr v0, p0

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalCount(I)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p2, v8, v9}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalSize(J)V

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_7

    iget v0, p2, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int/2addr v2, p0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalCount(I)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {p2, v8, v9}, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->setTotalSize(J)V

    throw p1
.end method

.method public static e0(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lqpb;->c(Landroid/content/Context;)V

    invoke-static {p0, p1, v0}, Lqpb;->f0(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "VideoDBHelper"

    const-string p1, "queryVideosFromBucket video null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {p0, p1, v1}, Lqpb;->f0(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Z)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lqpb;->b:[Ljava/lang/String;

    const-string v5, "date_modified DESC "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaInfo;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaInfo;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaInfo;-><init>()V

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaInfo;->vd_format:Ljava/lang/String;

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaInfo;->cnt:I

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/transsion/dbdata/beans/media/MediaInfo;->cnt:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/transsion/dbdata/beans/media/MediaInfo;->cnt:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_0

    :goto_2
    :try_start_2
    const-string v1, "VideoDBHelper"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_0

    :catchall_0
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_0
.end method

.method public static f0(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Z)Ljava/util/ArrayList;
    .locals 10

    const-string v0, "VideoDBHelper"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lqpb;->u(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-string v7, "bucket_id = ?"

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryAlbumFromVideo mediaBucket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {}, Loa1;->e()I

    move-result v4

    if-eqz v3, :cond_4

    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v5

    iget-boolean v6, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    iput-boolean v6, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    iget-object v6, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    iput-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    invoke-static {v5}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v4, :cond_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<queryAlbumFromVideo>: [ERROR] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    invoke-static {}, Loa1;->e()I

    move-result p1

    invoke-static {p0, v2, v1, p2, p1}, Lqpb;->N(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    const/4 p0, 0x1

    invoke-static {v2, p0}, Lqpb;->m0(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :goto_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public static g(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 25

    move-object/from16 v0, p0

    new-instance v14, Lcom/transsion/dbdata/beans/media/MediaItem;

    move-object v1, v14

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v10, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v12, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    move-object/from16 v16, v14

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move-object/from16 v22, v16

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    move-object/from16 v16, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    move-wide/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    move-object/from16 v21, v1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct/range {v1 .. v21}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JJLandroid/net/Uri;)V

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setRelativePath(Ljava/lang/String;)V

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    return-object v2
.end method

.method public static g0(Landroid/util/SparseArray;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    sget-object v0, Lqpb;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lqpb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    invoke-static {p1}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lqpb;->i(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lqpb;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lqpb;->c(Landroid/content/Context;)V

    invoke-static {v0, v1, p1}, Lqpb;->j0(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v22, v2

    :goto_0
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xb

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    if-eqz p3, :cond_0

    :goto_1
    move-object/from16 v17, v2

    goto :goto_2

    :cond_0
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_2
    new-instance v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    move-object v2, v5

    move-object/from16 p1, v5

    int-to-long v4, v4

    move-object/from16 v1, p1

    move-object/from16 p3, v1

    move-object/from16 p1, v2

    int-to-long v1, v7

    move-wide/from16 v18, v1

    move-object v7, v9

    move-object v1, v9

    move-object v9, v0

    move-object v2, v10

    move-object/from16 v23, v2

    move-object/from16 v2, p1

    invoke-direct/range {v2 .. v22}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JJLandroid/net/Uri;)V

    move/from16 v2, p2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-static {v3, v1}, Lqpb;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setRelativePath(Ljava/lang/String;)V

    :try_start_1
    const-string v0, "orientation"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setDegree(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_3
    const-string v0, "width"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    const-string v0, "height"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    invoke-static {v3}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltr4;->b(Ljava/io/File;)Lqv5;

    :cond_3
    return-object v2
.end method

.method public static i0(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 13

    const-string v0, "."

    const-string v1, "%"

    invoke-static {}, Lpp3;->w()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchVideoFromFilesDbBySuffix :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoDBHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_data LIKE?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lhk3;->h:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_2

    const-string v8, " OR _data LIKE?"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND _display_name LIKE ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v4, Lhk3;->h:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v5, v4, 0x1

    new-array v11, v5, [Ljava/lang/String;

    move v5, v6

    :goto_1
    sget-object v7, Lhk3;->h:[Ljava/lang/String;

    array-length v8, v7

    if-ge v5, v8, :cond_3

    aget-object v7, v7, v5

    aput-object v7, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v6}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v12

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-static {}, Loa1;->e()I

    move-result p0

    :cond_6
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v2, v6}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {v1}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance v4, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/SearchBean;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/beans/SearchBean;->setItemType(I)V

    invoke-virtual {v4, v1}, Lcom/transsion/dbdata/beans/SearchBean;->setMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, p0, :cond_6

    :cond_a
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p0
.end method

.method public static j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lqpb;->i(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8

    const-string v0, "%"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v5, "_display_name LIKE ?"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v0}, Lqpb;->n0(Z)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lqpb;->b:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object p0, Lqpb;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Loa1;->e()I

    move-result v2

    :cond_3
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1, v0}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    invoke-static {v3}, Lqpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance v4, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/SearchBean;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/beans/SearchBean;->setItemType(I)V

    invoke-virtual {v4, v3}, Lcom/transsion/dbdata/beans/SearchBean;->setMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v3, v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    sget-object v0, Lqpb;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :goto_2
    :try_start_2
    const-string v2, "VideoDBHelper"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_1

    :goto_3
    invoke-static {p0, p1, p2}, Lqpb;->i0(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    sget-object p1, Lqpb;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw p0
.end method

.method public static k(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "internal"

    :goto_0
    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "external"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v3, v4}, Lqpb;->o(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lqpb;->g(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-object v0
.end method

.method public static l()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lqpb;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static l0(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lns9;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lqpb;->k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-object p0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeclaredMethod "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoDBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static m0(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lns9;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lqpb;->x(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    :cond_0
    invoke-static {p0}, Lqpb;->l0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static n(ZI)Landroid/net/Uri;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static n0(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object p0
.end method

.method public static o(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lns9;->k(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lqpb;->q:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lqpb;->r:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string v0, "DCIM/Camera/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRelativePath "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoDBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "external"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/Android/data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DCIM/Camera/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static t(Ljava/util/ArrayList;Ljava/io/File;Z)V
    .locals 1

    new-instance v0, Lnpb;

    invoke-direct {v0, p0, p2}, Lnpb;-><init>(Ljava/util/ArrayList;Z)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    return-void
.end method

.method public static u(Ljava/io/File;Z)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p0, p1}, Lqpb;->t(Ljava/util/ArrayList;Ljava/io/File;Z)V

    return-object v0
.end method

.method public static v()V
    .locals 7

    sget-object v0, Lqpb;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_1

    const-string v3, "getPath"

    invoke-static {v4, v3}, Lqpb;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lmpb;->a(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lmpb;->a(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lqpb;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "VideoDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMountPointPaths "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final w(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static x(Ljava/util/List;)Z
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lns9;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget-wide v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    :cond_2
    invoke-static {}, Lns9;->p()Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget-wide v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic y(Ljava/util/ArrayList;ZLjava/io/File;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ltr4;->b(Ljava/io/File;)Lqv5;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lqpb;->t(Ljava/util/ArrayList;Ljava/io/File;Z)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic z()V
    .locals 2

    const-string v0, "VideoDBHelper"

    const-string v1, "loadCameraPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lqpb;->v()V

    invoke-static {}, Lqpb;->q()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->q:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lqpb;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqpb;->r:Ljava/lang/String;

    return-void
.end method
