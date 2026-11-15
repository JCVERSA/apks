.class public abstract Lnr3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/privateroom/api/beans/PrivateFile;)Z
    .locals 0

    invoke-static {p0, p1}, Lnr3;->b(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/privateroom/api/beans/PrivateFile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/privateroom/api/beans/PrivateFile;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;
    .locals 3

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    invoke-direct {v0}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->withOriginalFileName(Ljava/lang/String;)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->withOriginalPath(Ljava/lang/String;)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->withDate(J)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->withDuration(J)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->withSize(J)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->build()Lcom/transsion/privateroom/api/beans/PrivateFile;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1}, Lnr3;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static e(Lcom/transsion/privateroom/api/beans/PrivateFile;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getDate()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-static {v3}, Lnr3;->e(Lcom/transsion/privateroom/api/beans/PrivateFile;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    add-int/2addr v2, v1

    iput v2, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static g(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;
    .locals 2

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lmr3;

    invoke-direct {v1, p0}, Lmr3;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-direct {v0}, Lcom/transsion/privateroom/api/beans/PrivateFile;-><init>()V

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/transsion/privateroom/api/beans/PrivateFile;

    :cond_0
    return-object v0
.end method

.method public static h(Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1}, Lnr3;->g(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
