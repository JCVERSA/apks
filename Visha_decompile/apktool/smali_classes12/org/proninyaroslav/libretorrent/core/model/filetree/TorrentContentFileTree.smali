.class public Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;
.super Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree<",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private availability:D

.field private isChecked:Z

.field private numChangedChildren:J

.field private priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

.field private receivedBytes:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    .line 8
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-direct {p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    .line 10
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    .line 11
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->numChangedChildren:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(Ljava/lang/String;JI)V

    .line 2
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-direct {p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    .line 4
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    .line 5
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->numChangedChildren:J

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p5}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(Ljava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    .line 14
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-direct {p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    .line 16
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    .line 17
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->numChangedChildren:J

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked:Z

    return-void
.end method

.method private changePriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;ZZ)V
    .locals 2

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    if-eqz p2, :cond_0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-direct {p2, p1, p3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->onChangePriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V

    :cond_0
    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-object v0, p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v0

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->changePriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized onChangePriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->numChangedChildren:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->numChangedChildren:J

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->numChangedChildren:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_8

    if-nez p2, :cond_2

    if-eqz v0, :cond_8

    :cond_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    if-nez p1, :cond_4

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getFilePriority()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    move-result-object p1

    :cond_4
    iget-object v3, v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v3

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    :cond_5
    if-eqz p1, :cond_7

    if-eqz v1, :cond_6

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->MIXED:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-direct {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)V

    :cond_6
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    :cond_7
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    if-eqz p1, :cond_8

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-direct {p1, v0, p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->onChangePriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getAvailability()D
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v2

    move-wide v8, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {v10}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getFilePriority()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    move-result-object v11

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v11

    sget-object v12, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    if-ne v11, v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getAvailability()D

    move-result-wide v11

    invoke-virtual {v10}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v13

    cmpl-double v10, v11, v4

    if-ltz v10, :cond_1

    long-to-double v4, v13

    mul-double/2addr v11, v4

    add-double/2addr v8, v11

    :cond_1
    add-long/2addr v6, v13

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    cmp-long v1, v6, v2

    if-lez v1, :cond_3

    long-to-double v1, v6

    div-double/2addr v8, v1

    iput-wide v8, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    goto :goto_1

    :cond_3
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    :cond_4
    :goto_1
    iget-wide v0, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    return-wide v0
.end method

.method public getFilePriority()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    return-object p0
.end method

.method public getReceivedBytes()J
    .locals 6

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked:Z

    return p0
.end method

.method public nonIgnoreFileSize()J
    .locals 5

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-object v3, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v3

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->nonIgnoreFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v0

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v1

    :cond_2
    return-wide v1
.end method

.method public declared-synchronized setAvailability(D)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked:Z

    return-void
.end method

.method public setPriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V
    .locals 1
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->changePriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;ZZ)V

    return-void
.end method

.method public declared-synchronized setReceivedBytes(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorrentContentFileTree{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->priority:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receivedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->receivedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->availability:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
