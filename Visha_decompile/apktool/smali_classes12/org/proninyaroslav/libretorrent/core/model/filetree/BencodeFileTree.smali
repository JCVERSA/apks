.class public Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;
.super Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree<",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private numChangedChildren:J

.field private selected:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->numChangedChildren:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(Ljava/lang/String;JI)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->numChangedChildren:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(Ljava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->numChangedChildren:J

    return-void
.end method

.method private doSelect(ZZZ)V
    .locals 1

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    if-eqz p2, :cond_0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    invoke-direct {p2, p3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->onChildSelectChange(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getChildrenCount()I

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

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    iget-boolean v0, p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->doSelect(ZZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized onChildSelectChange(Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->numChangedChildren:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->numChangedChildren:J

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v5, 0x0

    if-eqz v0, :cond_1

    iput-wide v5, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->numChangedChildren:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_6

    if-nez p1, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v7, v5

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    iget-boolean v9, v9, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    if-eqz v9, :cond_3

    add-long/2addr v7, v2

    goto :goto_2

    :cond_4
    cmp-long v0, v7, v5

    if-lez v0, :cond_5

    move v1, v4

    :cond_5
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    if-eqz v0, :cond_6

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    invoke-direct {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->onChildSelectChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    return p0
.end method

.method public select(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->doSelect(ZZZ)V

    return-void
.end method

.method public selectedFileSize()J
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

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    iget-boolean v3, v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selectedFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v1

    :cond_2
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BencodeFileTree{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->selected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
