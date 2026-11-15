.class public final Lorg/libtorrent4j/PiecesTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final complete:[Z

.field private final files:[[I

.field private final numFiles:I

.field private final numPieces:I

.field private final sizes:[[J


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/TorrentInfo;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/PiecesTracker;->numFiles:I

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->numPieces()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/PiecesTracker;->numPieces:I

    new-array v2, v0, [[I

    iput-object v2, p0, Lorg/libtorrent4j/PiecesTracker;->files:[[I

    new-array v0, v0, [[J

    iput-object v0, p0, Lorg/libtorrent4j/PiecesTracker;->sizes:[[J

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/libtorrent4j/PiecesTracker;->complete:[Z

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/libtorrent4j/PiecesTracker;->numFiles:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/FileStorage;->fileSize(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v1, v4, v5, v6}, Lorg/libtorrent4j/TorrentInfo;->mapFile(IJI)Lorg/libtorrent4j/PeerRequest;

    move-result-object v7

    invoke-virtual {v7}, Lorg/libtorrent4j/PeerRequest;->piece()I

    move-result v7

    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    invoke-virtual {p1, v1, v2, v3, v6}, Lorg/libtorrent4j/TorrentInfo;->mapFile(IJI)Lorg/libtorrent4j/PeerRequest;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/PeerRequest;->piece()I

    move-result v2

    sub-int v3, v2, v7

    add-int/2addr v3, v6

    iget-object v6, p0, Lorg/libtorrent4j/PiecesTracker;->files:[[I

    new-array v8, v3, [I

    aput-object v8, v6, v1

    iget-object v6, p0, Lorg/libtorrent4j/PiecesTracker;->sizes:[[J

    new-array v3, v3, [J

    aput-object v3, v6, v1

    move v3, v7

    :goto_1
    if-gt v3, v2, :cond_2

    sub-int v6, v3, v7

    iget-object v8, p0, Lorg/libtorrent4j/PiecesTracker;->files:[[I

    aget-object v8, v8, v1

    aput v3, v8, v6

    invoke-virtual {p1, v3}, Lorg/libtorrent4j/TorrentInfo;->pieceSize(I)I

    move-result v8

    invoke-virtual {p1, v3, v4, v5, v8}, Lorg/libtorrent4j/TorrentInfo;->mapBlock(IJI)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/libtorrent4j/FileSlice;

    invoke-virtual {v9}, Lorg/libtorrent4j/FileSlice;->fileIndex()I

    move-result v10

    if-ne v10, v1, :cond_0

    iget-object v10, p0, Lorg/libtorrent4j/PiecesTracker;->sizes:[[J

    aget-object v10, v10, v1

    invoke-virtual {v9}, Lorg/libtorrent4j/FileSlice;->size()J

    move-result-wide v11

    aput-wide v11, v10, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getSequentialDownloadedBytes(I)J
    .locals 6

    iget-object v0, p0, Lorg/libtorrent4j/PiecesTracker;->files:[[I

    aget-object v0, v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget v4, v0, v3

    iget-object v5, p0, Lorg/libtorrent4j/PiecesTracker;->complete:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/libtorrent4j/PiecesTracker;->sizes:[[J

    aget-object v4, v4, p1

    aget-wide v4, v4, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getSequentialDownloadedPieces(I)I
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/PiecesTracker;->files:[[I

    aget-object p1, v0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    iget-object v3, p0, Lorg/libtorrent4j/PiecesTracker;->complete:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isComplete(I)Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PiecesTracker;->complete:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public numFiles()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PiecesTracker;->numFiles:I

    return p0
.end method

.method public numPieces()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PiecesTracker;->numPieces:I

    return p0
.end method

.method public setComplete(IZ)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PiecesTracker;->complete:[Z

    aput-boolean p2, p0, p1

    return-void
.end method
