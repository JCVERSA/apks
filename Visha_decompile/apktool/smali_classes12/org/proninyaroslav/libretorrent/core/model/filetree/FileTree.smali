.class public Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode<",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final PARENT_DIR:Ljava/lang/String; = ".."

.field public static final ROOT:Ljava/lang/String;


# instance fields
.field protected children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TF;>;"
        }
    .end annotation
.end field

.field protected index:I

.field protected isLeaf:Z

.field protected name:Ljava/lang/String;

.field protected parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field protected size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JITF;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    .line 6
    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->index:I

    .line 7
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    .line 9
    sget p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->FILE:I

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    .line 10
    iput-object p6, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 7

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JITF;)V"
        }
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;-><init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->compareTo(Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)I
    .locals 0
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->index:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->index:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    iget-boolean p1, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    if-ne p0, p1, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public getChild(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    return-object p0
.end method

.method public getChildren()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TF;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenCount()I
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getChildrenIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildrenName()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->index:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    const-string v1, ".xdl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRealPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    if-eqz p0, :cond_0

    sget p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->FILE:I

    goto :goto_0

    :cond_0
    sget p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->DIR:I

    :goto_0
    return p0
.end method

.method public isFile()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    return p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    return-void
.end method

.method public setType(I)V
    .locals 1

    sget v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->FILE:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    return-void
.end method

.method public size()J
    .locals 6

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

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

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileTree{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isLeaf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isLeaf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->parent:Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->children:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
