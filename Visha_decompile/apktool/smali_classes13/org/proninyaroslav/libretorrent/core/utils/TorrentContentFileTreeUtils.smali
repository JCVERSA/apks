.class public Lorg/proninyaroslav/libretorrent/core/utils/TorrentContentFileTreeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Landroidx/core/util/Pair;
    .locals 18

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->ROOT:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sget v4, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->DIR:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;-><init>(Ljava/lang/String;JI)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ""

    move-object v10, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v10, v0

    :goto_1
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    :goto_2
    array-length v8, v3

    if-ge v5, v8, :cond_4

    aget-object v8, v3, v5

    invoke-virtual {v10, v8}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getIndex()I

    move-result v12

    aget-object v13, v3, v5

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getSize()J

    move-result-wide v14

    array-length v8, v3

    sub-int/2addr v8, v7

    if-ne v5, v8, :cond_1

    move/from16 v17, v7

    goto :goto_3

    :cond_1
    move/from16 v17, v6

    :goto_3
    move-object/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lorg/proninyaroslav/libretorrent/core/utils/TorrentContentFileTreeUtils;->b(ILjava/lang/String;JLorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Z)Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    move-result-object v8

    invoke-virtual {v11}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getIndex()I

    move-result v9

    aput-object v8, v1, v9

    invoke-virtual {v10, v8}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->addChild(Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;)V

    :cond_2
    aget-object v8, v3, v5

    invoke-virtual {v10, v8}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getChild(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;

    move-result-object v8

    check-cast v8, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {v8}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isFile()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v10, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/lang/String;JLorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Z)Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;
    .locals 14

    if-eqz p5, :cond_0

    new-instance v7, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    sget v5, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->FILE:I

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;-><init>(ILjava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    goto :goto_0

    :cond_0
    new-instance v7, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    const-wide/16 v10, 0x0

    sget v12, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileNode$Type;->DIR:I

    move-object v8, v7

    move-object v9, p1

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;-><init>(Ljava/lang/String;JILorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    :goto_0
    return-object v7
.end method
