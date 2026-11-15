.class public Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;,
        Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;
    }
.end annotation


# static fields
.field public static l:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

.field public c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

.field public d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

.field public e:J

.field public f:J

.field public g:J

.field public h:[B

.field public i:I

.field public j:Z

.field public k:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;)V
    .locals 8

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->i:I

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;-><init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->k:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v0, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    iget v2, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    if-ne v1, v2, :cond_0

    iget v2, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    goto :goto_0

    :cond_0
    iget v2, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    :goto_0
    int-to-long v3, v1

    iget v1, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    int-to-long v5, v1

    mul-long/2addr v3, v5

    int-to-long v1, v2

    add-long/2addr v3, v1

    iget-wide v5, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileOffset:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->f:J

    iget-wide v3, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->g:J

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->k:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-interface {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    iget p0, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    const/4 p1, 0x1

    invoke-interface {v0, p2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setInterestedPieces(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->g()V

    return-void
.end method

.method public static bridge synthetic d(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->k(Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->j:Z

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->k:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e(IJ)I
    .locals 4

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    if-ne p1, v1, :cond_0

    iget p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    :goto_0
    int-to-long v0, v0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    long-to-int p0, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method public finalize()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->j:Z

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->k:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;[B)V
    .locals 2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h:[B

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->c:I

    iget v1, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->d:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    invoke-static {p0, v0, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final declared-synchronized k(Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->c(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget v4, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->a:I

    iget v5, p1, Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;->a:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)I

    move-result v0

    if-lez v0, :cond_6

    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_2
    :try_start_3
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->e(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    new-instance v0, Lcom/sun/jna/Pointer;

    iget-wide v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;->c:J

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    iget-boolean v1, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->e:Z

    if-eqz v1, :cond_5

    iget v9, p1, Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;->b:I

    new-array v7, v9, [B

    iput-object v7, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h:[B

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lcom/sun/jna/Pointer;->b(J[BII)V

    iget p1, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->a:I

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->i:I

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;[B)V

    goto :goto_3

    :cond_5
    iget p1, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->c:I

    int-to-long v1, p1

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B

    move-result-object p1

    iget v4, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->d:I

    iget v5, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->b(J[BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->e(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    :goto_4
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->e(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n(B)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method

.method public final declared-synchronized o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;I)Z
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->havePiece(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public read()I
    .locals 10

    .line 1
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    if-eqz v1, :cond_5

    .line 3
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v2, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    iget-wide v4, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->g:J

    cmp-long v4, v2, v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    .line 5
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 7
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 8
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->bytesToPieceIndex(J)I

    move-result v2

    .line 9
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setInterestedPieces(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;II)V

    .line 10
    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-direct {v3, p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;-><init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;Llsa;)V

    iput-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 11
    new-array v8, v4, [Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    invoke-static {v3, v8}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->f(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;)V

    .line 12
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    new-array v8, v4, [B

    invoke-static {v3, v8}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->d(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;[B)V

    .line 13
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->e(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;I)V

    .line 14
    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    invoke-direct {v3, v2}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;-><init>(I)V

    .line 15
    iget-wide v8, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    invoke-virtual {p0, v2, v8, v9}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e(IJ)I

    move-result v8

    iput v8, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->c:I

    .line 16
    iput v4, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    const/4 v8, 0x0

    .line 17
    iput v8, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->d:I

    .line 18
    iget v9, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->i:I

    if-ne v2, v9, :cond_1

    .line 19
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;[B)V

    .line 20
    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    .line 21
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B

    move-result-object v1

    aget-byte v1, v1, v8

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->n(B)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_1
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 23
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 24
    :cond_1
    :try_start_2
    iput-boolean v4, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->e:Z

    .line 25
    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v4}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->c(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    move-result-object v4

    aput-object v3, v4, v8

    .line 26
    invoke-virtual {p0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->readPiece(I)V

    .line 28
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->D()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 29
    :cond_3
    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    .line 30
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B

    move-result-object v1

    aget-byte v1, v1, v8

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->n(B)I

    move-result v1

    goto :goto_1

    .line 31
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v3, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Torrent session is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :goto_2
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 34
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    throw v1
.end method

.method public read([B)I
    .locals 2

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    .line 36
    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v3, 0x0

    if-ltz p2, :cond_f

    if-ltz v2, :cond_f

    .line 37
    :try_start_0
    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int v4, v4, p2

    if-gt v2, v4, :cond_f

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 38
    iput-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 39
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    .line 40
    :cond_0
    :try_start_1
    iget-object v5, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    if-eqz v5, :cond_e

    .line 41
    iget-object v6, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v6, v6, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 42
    iget-wide v6, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    iget-wide v8, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v10, v6, v8

    const/4 v11, -0x1

    if-nez v10, :cond_1

    .line 43
    :try_start_2
    iput-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    iput-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 45
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v11

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7

    :cond_1
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v10, v12, v8

    if-lez v10, :cond_2

    sub-long/2addr v8, v6

    long-to-int v2, v8

    .line 46
    :cond_2
    :try_start_3
    iget-object v8, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    invoke-virtual {v8, v6, v7}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->bytesToPieceIndex(J)I

    move-result v6

    .line 47
    iget-object v7, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-wide v8, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    int-to-long v12, v2

    add-long/2addr v8, v12

    invoke-virtual {v7, v8, v9}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->bytesToPieceIndex(J)I

    move-result v7

    sub-int v8, v7, v6

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 48
    iget-object v10, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    invoke-interface {v5, v10, v6, v8}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setInterestedPieces(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;II)V

    .line 49
    new-instance v10, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-direct {v10, v1, v3}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;-><init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;Llsa;)V

    iput-object v10, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 50
    new-array v14, v8, [Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    invoke-static {v10, v14}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->f(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;)V

    .line 51
    iget-object v10, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v10, v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->d(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;[B)V

    .line 52
    iget-object v10, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v10, v8}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->e(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;I)V

    move/from16 v10, p2

    move v15, v4

    move v14, v6

    :goto_0
    if-gt v14, v7, :cond_b

    .line 53
    iget-object v11, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget v3, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    if-ne v14, v3, :cond_3

    .line 54
    iget v3, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_7

    .line 55
    :cond_3
    iget v3, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    .line 56
    :goto_1
    new-instance v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    invoke-direct {v11, v14}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;-><init>(I)V

    .line 57
    iput v10, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->d:I

    if-ne v14, v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v4

    .line 58
    :goto_2
    iput-boolean v9, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->e:Z

    if-ne v14, v6, :cond_5

    move-object/from16 v16, v5

    .line 59
    iget-wide v4, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    invoke-virtual {v1, v6, v4, v5}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e(IJ)I

    move-result v4

    iput v4, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->c:I

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v16, v5

    .line 60
    iput v4, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->c:I

    :goto_3
    if-ne v14, v7, :cond_6

    if-eq v6, v7, :cond_6

    .line 61
    iget-wide v4, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    add-long/2addr v4, v12

    invoke-virtual {v1, v7, v4, v5}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e(IJ)I

    move-result v3

    iput v3, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    goto :goto_4

    .line 62
    :cond_6
    iget v4, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->c:I

    add-int v5, v4, v2

    if-le v5, v3, :cond_7

    sub-int/2addr v3, v4

    .line 63
    iput v3, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    goto :goto_4

    .line 64
    :cond_7
    iput v2, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    .line 65
    :goto_4
    iget v3, v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->b:I

    add-int/2addr v10, v3

    .line 66
    iget v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->i:I

    if-ne v14, v3, :cond_8

    .line 67
    invoke-virtual {v1, v11, v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->h(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;[B)V

    const/4 v3, 0x1

    if-ne v8, v3, :cond_9

    .line 68
    iget-wide v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    add-long/2addr v3, v12

    iput-wide v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x0

    .line 69
    :goto_5
    iput-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 70
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_8
    const/4 v3, 0x1

    .line 71
    :cond_9
    :try_start_4
    iget-object v4, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    invoke-static {v4}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->c(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    move-result-object v4

    aput-object v11, v4, v15

    move-object/from16 v4, v16

    .line 72
    invoke-virtual {v1, v4, v14}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;I)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_a

    const/4 v5, 0x0

    .line 73
    iput-object v5, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 74
    :goto_6
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    return v0

    .line 75
    :cond_a
    :try_start_5
    invoke-interface {v4, v14}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->readPiece(I)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move v9, v3

    move-object v5, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, -0x1

    goto/16 :goto_0

    .line 76
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->D()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_c

    const/4 v3, 0x0

    .line 77
    iput-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    .line 78
    :try_start_6
    iget-wide v4, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    add-long/2addr v4, v12

    iput-wide v4, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    goto :goto_5

    .line 79
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v3, v3, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Torrent session is null"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 82
    :goto_7
    iput-object v2, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;

    .line 83
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    throw v0
.end method

.method public skip(J)J
    .locals 7

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :cond_0
    :try_start_0
    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    iget-wide v4, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    add-long v0, v2, p1

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    sub-long/2addr v4, v2

    long-to-int p1, v4

    int-to-long p1, p1

    :cond_2
    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v1, v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->bytesToPieceIndex(J)I

    move-result p0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setInterestedPieces(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :goto_2
    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
