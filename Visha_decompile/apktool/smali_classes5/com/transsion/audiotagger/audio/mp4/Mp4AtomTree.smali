.class public Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dataTree:Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;

.field private freeNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private hdlrWithinMdiaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private hdlrWithinMetaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private ilstNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private metaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private moovBuffer:Ljava/nio/ByteBuffer;

.field private moovHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

.field private moovNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private rootNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private stcoNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private stcos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;"
        }
    .end annotation
.end field

.field private tagsNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

.field private trakNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private udtaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method


# virtual methods
.method public buildChildrenOfNode(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    :try_start_0
    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v2, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/NullBoxIdException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p0

    :cond_0
    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x8

    if-ge v3, v4, :cond_c

    new-instance v3, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v3, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    sget-object v4, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Atom "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " of size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,ends @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v4, v3}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->add(Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->HDLR:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->TAGS:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    new-instance v7, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v7, v3, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    invoke-virtual {p0, p1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)V

    :cond_b
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    :cond_c
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public buildTree(Ljava/io/RandomAccessFile;Z)Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    new-instance v1, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;-><init>(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_a

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Lcom/transsion/audiotagger/audio/exceptions/NullBoxIdException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    new-instance v6, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v6, v1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    iget-object v8, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v8, :cond_1

    move v4, v5

    :cond_1
    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ADDITIONAL_MOOV_ATOM_AT_END_OF_MP4:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    iput-object v6, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4, v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)V

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ATOM_LENGTH_LARGER_THAN_DATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDAT:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v6, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v2, v6}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->add(Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;)V

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_3

    :cond_7
    move v1, v4

    :goto_3
    iget-object v6, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v6, :cond_8

    move v4, v5

    :cond_8
    and-int/2addr v1, v4

    if-eqz v1, :cond_9

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/NullPadding;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/NullPadding;-><init>(JJ)V

    new-instance v1, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->add(Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->NULL_PADDING_FOUND_AT_END_OF_MP4:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    throw v0

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz p0, :cond_c

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_b
    return-object v0

    :cond_c
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_5
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz p0, :cond_e

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_d
    throw v0

    :cond_e
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object p0
.end method

.method public getDataTree()Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;

    return-object p0
.end method

.method public getFreeNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    return-object p0
.end method

.method public getHdlrWithinMdiaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getHdlrWithinMetaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getIlstNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getMdatNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getMetaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getMoovBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getMoovHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object p0
.end method

.method public getMoovNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getStcoNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    return-object p0
.end method

.method public getStcos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    return-object p0
.end method

.method public getTagsNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public getTrakNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    return-object p0
.end method

.method public getUdtaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    return-object p0
.end method

.method public printAtomTree()V
    .locals 8

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->preorderEnumeration()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const-string v3, ""

    :goto_1
    invoke-virtual {v0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v4

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lcom/transsion/audiotagger/audio/mp4/atom/NullPadding;

    const-string v2, " ,ends @ "

    const-string v4, " of size:"

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Null pad  @ "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Atom "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
