.class public abstract Lb00;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lb00;->k(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lb00;->m(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lb00;->l(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lb00;->i(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/util/ArrayList;ILcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lb00;->j(Ljava/util/ArrayList;ILcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

.method public static f(ILjava/lang/String;Ljava/util/ArrayList;)[J
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lrv8;->b(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/database/PlayListMedia;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-interface {p0, v0}, Ld68;->insertPlayListMedia(Ljava/util/List;)[J

    move-result-object p0

    return-object p0
.end method

.method public static g()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b()Lgi1;

    move-result-object v0

    invoke-interface {v0}, Lgi1;->deleteAllConvertAudio()I

    move-result v0

    return v0
.end method

.method public static h(Lcom/transsion/dbdata/database/PlayList;Ljava/util/List;)Landroid/net/Uri;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/PlayListMedia;

    iget-object v1, p1, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/transsion/dbdata/database/PlayList;->uriType:I

    iput-boolean v3, p0, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    iget p1, p1, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    invoke-virtual {v3, p1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    iput v2, p0, Lcom/transsion/dbdata/database/PlayList;->uriType:I

    iput-boolean v2, p0, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Ljava/util/ArrayList;ILcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lzz;

    invoke-direct {v0, p2}, Lzz;-><init>(Lcom/transsion/dbdata/database/PlayListMedia;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-interface {p0, p2}, Ld68;->deletePlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, La00;

    invoke-direct {v0, p3}, La00;-><init>(Lcom/transsion/dbdata/database/PlayListMedia;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-interface {p0, p3}, Ld68;->deletePlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v1

    invoke-interface {v1, p0}, Ld68;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcr$a;

    invoke-direct {v0}, Lcr$a;-><init>()V

    invoke-virtual {v0, p1}, Lcr$a;->t(Ljava/lang/String;)Lcr$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v1, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->D(Ljava/util/List;Z)V

    return-object p1
.end method

.method public static o(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    invoke-static {}, Loa1;->e()I

    move-result v1

    invoke-interface {v0, v1}, Ld68;->getFavoriteItemMediaIds(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v1, Lcr$a;

    invoke-direct {v1}, Lcr$a;-><init>()V

    invoke-virtual {v1, p0}, Lcr$a;->t(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-class v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, v0, v2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v3, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v2, v3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result v2

    invoke-interface {p0, v2}, Ld68;->getAllFavoriteItem(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {}, Loa1;->e()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lwz;

    invoke-direct {v3, v0, v2}, Lwz;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->D(Ljava/util/List;Z)V

    return-object v0
.end method

.method public static p(Ljava/util/List;)Ljava/util/List;
    .locals 8

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/PlayList;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v3

    iget v4, v2, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-interface {v3, v4}, Ld68;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Lcr$a;

    invoke-direct {v4}, Lcr$a;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcr$a;->f(Z)Lcr$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object v4

    invoke-virtual {v4}, Lcr$a;->e()Lcr;

    move-result-object v4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    const-class v6, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v4, v5, v6}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v7, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v6, v7, v4}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->D(Ljava/util/List;Z)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v2, Lcom/transsion/dbdata/database/PlayList;->count:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lxz;

    invoke-direct {v5}, Lxz;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v5}, Ld68;->deletePlayListMediaByMediaId(Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v3

    iget v4, v2, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-static {}, Loa1;->e()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ld68;->getPlayListMediaById(II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lb00;->h(Lcom/transsion/dbdata/database/PlayList;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_1
    return-object p0
.end method

.method public static q(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v1

    invoke-static {}, Loa1;->e()I

    move-result v2

    invoke-interface {v1, v2}, Ld68;->getAudioPlayRecordMediaIds(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcr$a;

    invoke-direct {v2}, Lcr$a;-><init>()V

    invoke-virtual {v2, p0}, Lcr$a;->t(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, v1, v2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v3, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v2, v3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result v2

    invoke-interface {p0, v2}, Ld68;->getAllAudioViewRecord(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {}, Loa1;->e()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lyz;

    invoke-direct {v3, v0, v2, v1}, Lyz;-><init>(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->D(Ljava/util/List;Z)V

    return-object v0
.end method

.method public static r(Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 7

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v0, v1}, Ld68;->getAudioPlayRecordById(I)Lcom/transsion/dbdata/database/PlayListMedia;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    const/4 p0, 0x1

    iput p0, v1, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    iget v2, v1, Lcom/transsion/dbdata/database/PlayListMedia;->play_count:I

    add-int/2addr v2, p0

    iput v2, v1, Lcom/transsion/dbdata/database/PlayListMedia;->play_count:I

    invoke-interface {v0, v1}, Ld68;->updateAudioPlayRecord(Lcom/transsion/dbdata/database/PlayListMedia;)I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lrv8;->c(Ljava/lang/String;IIIJ)Lcom/transsion/dbdata/database/PlayListMedia;

    move-result-object p0

    invoke-interface {v0, p0}, Ld68;->insertPlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static s(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V
    .locals 9

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p0}, Ldp3;->a(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x2

    invoke-static/range {v3 .. v8}, Lrv8;->c(Ljava/lang/String;IIIJ)Lcom/transsion/dbdata/database/PlayListMedia;

    move-result-object p0

    invoke-interface {v0, p0}, Ld68;->insertPlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)J

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v0, p1}, Ld68;->deleteFavoriteItemById(I)I

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Ldp3;->a(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x41f

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
