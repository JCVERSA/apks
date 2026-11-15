.class public abstract Lmw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqu4;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MVBaseHandler"

    iput-object v0, p0, Lmw5;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Landroid/database/Cursor;Z)V
    .locals 0

    const-string p0, "cursor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p2, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p2, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4

    const-string p0, "whereClauseStr"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "selectionArray"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    invoke-virtual {p0}, Ldw6;->c()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    sget-object v1, Ldw6;->c:Ldw6$a;

    invoke-virtual {v1}, Ldw6$a;->a()Ldw6;

    move-result-object v2

    invoke-virtual {v2}, Ldw6;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, "LOWER(_display_name) LIKE LOWER(?))"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "(LOWER(_display_name) LIKE LOWER(?) OR "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "LOWER(_display_name) LIKE LOWER(?) OR "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ldw6$a;->a()Ldw6;

    move-result-object v1

    invoke-virtual {v1}, Ldw6;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string p0, "mediaItems"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final g(Landroid/content/ContentResolver;Ljava/util/List;ZZ)V
    .locals 17

    move-object/from16 v0, p2

    const-string v1, ")"

    const-string v2, "resolver"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mediaItemList"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpp3;->w()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
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

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    if-ge v6, v5, :cond_1

    const-string v7, " OR _data LIKE?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_7

    :cond_1
    sget-object v5, Lhk3;->h:[Ljava/lang/String;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v5}, Lhi;->m1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ldw6;->c:Ldw6$a;

    invoke-virtual {v6}, Ldw6$a;->a()Ldw6;

    move-result-object v6

    invoke-virtual {v6}, Ldw6;->c()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v10

    :goto_2
    if-ge v7, v6, :cond_3

    if-nez v7, :cond_2

    const-string v8, " LOWER(_display_name) LIKE LOWER(?)"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v8, " OR LOWER(_display_name) LIKE LOWER(?)"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    sget-object v8, Ldw6;->c:Ldw6$a;

    invoke-virtual {v8}, Ldw6$a;->a()Ldw6;

    move-result-object v8

    invoke-virtual {v8}, Ldw6;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "_%"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, Ljava/util/Collection;

    new-array v1, v10, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "toString(...)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    return-void

    :cond_4
    :goto_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lt55;->h(Landroid/database/Cursor;)Z

    move-result v4

    move/from16 v5, p4

    if-eq v5, v4, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    invoke-static {v3}, Lt55;->l(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    const-string v4, "."

    const/4 v6, 0x2

    invoke-static {v3, v4, v10, v6, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v12, "."

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v3

    invoke-static/range {v11 .. v16}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v3, p3

    invoke-static {v1, v3}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :cond_9
    :goto_6
    move/from16 v3, p3

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :goto_7
    :try_start_2
    iget-object v1, v1, Lmw5;->a:Ljava/lang/String;

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

    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_8
    return-void

    :goto_9
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public final h(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p1, "INTERNAL_CONTENT_URI"

    :goto_0
    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p1, "EXTERNAL_CONTENT_URI"

    goto :goto_0

    :goto_1
    return-object p0
.end method
