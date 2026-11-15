.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final VERSION:I


# instance fields
.field private final actionFile:Ljava/io/File;

.field private final atomicFile:Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->actionFile:Ljava/io/File;

    .line 5
    .line 6
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->atomicFile:Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public varargs load([Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)[Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->actionFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array p1, v1, [Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->atomicFile:Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;->openRead()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Ljava/io/DataInputStream;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gtz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    new-array v4, v3, [Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 36
    .line 37
    :goto_0
    if-ge v1, v3, :cond_1

    .line 38
    .line 39
    invoke-static {p1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->deserializeFromStream([Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    aput-object v5, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    .line 52
    .line 53
    return-object v4

    .line 54
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "Unsupported action file version: "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_1
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public varargs store([Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->atomicFile:Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;->startWrite()Ljava/io/OutputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    array-length v3, p1

    .line 18
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    array-length v3, p1

    .line 22
    :goto_0
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    aget-object v4, p1, v2

    .line 25
    .line 26
    invoke-static {v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->serializeToStream(Lcom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->atomicFile:Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/AtomicFile;->endWrite(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    move-object v0, v1

    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    :goto_2
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
