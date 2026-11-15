.class public Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;Landroid/media/MediaMetadataRetriever;Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->g(Landroid/media/MediaMetadataRetriever;Ljava/io/File;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lkq3;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "save private file failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "PrivateRoom_PrivateFileDataProvider"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzu3;->y(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "get private files failed"

    const-string v3, "PrivateRoom_PrivateFileDataProvider"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lkq3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    new-instance v4, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider$1;

    invoke-direct {v4, p0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider$1;-><init>(Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;)V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v0, v4}, Lek4;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get private files size "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/privateroom/api/beans/PrivateFile;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Llg8;

    invoke-direct {v4, p0, v0}, Llg8;-><init>(Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;Landroid/media/MediaMetadataRetriever;)V

    invoke-static {v1, v4}, Lzu3;->C(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_3
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->b()V

    :cond_4
    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    return-object p0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    throw p0
.end method

.method public d(Ljava/util/List;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/privateroom/api/beans/PrivateFile;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getSize()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getSize()J

    move-result-wide v4

    :goto_1
    add-long/2addr v2, v4

    goto :goto_2

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzu3;->y(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzu3;->p(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setSize(J)V

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getSize()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTotalSize: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PrivateRoom_PrivateFileDataProvider"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->c()Ljava/util/List;

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/privateroom/api/beans/PrivateFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final synthetic g(Landroid/media/MediaMetadataRetriever;Ljava/io/File;)Z
    .locals 6

    invoke-static {p2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->isPrivateFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateFile,find new file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PrivateRoom_PrivateFileDataProvider"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-direct {v0}, Lcom/transsion/privateroom/api/beans/PrivateFile;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHidePath(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHideFileName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setDate(J)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setSize(J)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".visha"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setOriginalFilename(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lyx2;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setOriginalPath(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 3

    const-string v0, "PrivateRoom_PrivateFileDataProvider"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save private file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a:Ljava/util/List;

    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lkq3;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const-string p0, "save private file failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p0, "save private file failed,private files list is empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
