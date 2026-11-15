.class public Lcom/transsion/socket/pkgdata/SocketFileData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;,
        Lcom/transsion/socket/pkgdata/SocketFileData$IFileTransferProgress;
    }
.end annotation


# static fields
.field static final FLAG_DIR_END:B = 0x4t

.field static final FLAG_DIR_FILE_INFO:B = 0x5t

.field static final FLAG_DIR_START:B = 0x3t

.field static final FLAG_END:B = 0x1t

.field static final FLAG_FILE_START:B = 0x2t

.field static final TAG:Ljava/lang/String; = "SocketDirData"


# instance fields
.field private mCoverOldFile:Z

.field private mFailFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileInfo:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

.field public mReceiveDir:Ljava/lang/String;

.field private mReceiveFileType:B

.field private mSIS:Lcom/transsion/socket/internal/SocketInputStream;

.field private mSOS:Lcom/transsion/socket/internal/SocketOutputStream;

.field public mSendFile:Ljava/lang/String;

.field mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

.field private mTrafficStats:Z

.field private mTrafficStatsPosition:J

.field private mTransferProgress:Lcom/transsion/socket/pkgdata/SocketFileData$IFileTransferProgress;

.field private mWriteSendFileInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFailFiles:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    return-void
.end method


# virtual methods
.method public calcTotalSendFileInfo()Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;
    .locals 3

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;-><init>()V

    iget-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/transsion/letswitch/service/api/IFileOperation;->getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/FileInformation;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->setFileCount(I)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/FileInformation;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->setLength(J)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/FileInformation;->isDir()Z

    return-object v0
.end method

.method public getFailFilesCopy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFailFiles:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getReceiveDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    return-object p0
.end method

.method public getSendDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    return-object p0
.end method

.method public getTransferFileInfo()Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/socket/pkgdata/SocketFileData;->getTransferFileInfo(Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTransferFileInfo(Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;
    .locals 7

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    invoke-direct {p1}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;-><init>()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    if-nez v0, :cond_1

    return-object p1

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    if-eqz v0, :cond_2

    .line 6
    iget v1, v0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    iput v1, p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    .line 7
    iget-wide v0, v0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    iput-wide v0, p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSOS:Lcom/transsion/socket/internal/SocketOutputStream;

    if-eqz v0, :cond_3

    .line 10
    iget-wide v1, p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    invoke-virtual {v0}, Lcom/transsion/socket/internal/SocketOutputStream;->getOutputSize()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSIS:Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz v0, :cond_4

    .line 12
    iget-wide v1, p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    invoke-virtual {v0}, Lcom/transsion/socket/internal/SocketInputStream;->getInputSize()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    .line 13
    :cond_4
    :goto_1
    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isReceiveSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFailFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyFinishFile(J)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTransferProgress:Lcom/transsion/socket/pkgdata/SocketFileData$IFileTransferProgress;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    invoke-direct {v1}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;-><init>()V

    iput-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    iget v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    iget-wide v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    iget v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    iget-wide v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    :goto_0
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTFIProgress:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    iget p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    iget-wide v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/socket/pkgdata/SocketFileData$IFileTransferProgress;->onFileTransferProgress(IJ)V

    :cond_3
    return-void
.end method

.method public notifyStartFile(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSOS:Lcom/transsion/socket/internal/SocketOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/socket/internal/SocketOutputStream;->getOutputSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSIS:Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/socket/internal/SocketInputStream;->getInputSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStatsPosition:J

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onClazzType()B
    .locals 0

    const/16 p0, -0x72

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/socket/internal/SocketInputStream;

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSIS:Lcom/transsion/socket/internal/SocketInputStream;

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/letswitch/service/api/utils/PathMatcher;->toAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mCoverOldFile:Z

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    const-string v1, "SocketDirData"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReceiveDir:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSendDir:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCoverOldFile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mCoverOldFile:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    sget-boolean v2, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReadData-flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileData;->getReceiveDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileData;->getSendDir()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v3, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/transsion/socket/pkgdata/SocketFileData;->readStreamToFile(Ljava/io/DataInputStream;Ljava/io/File;)V

    return-void

    :cond_5
    iget-byte v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    if-ne v1, v3, :cond_6

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketFileData;->onReadFileInfo(Ljava/io/DataInputStream;B)B

    invoke-virtual {p0, v2, p1}, Lcom/transsion/socket/pkgdata/SocketFileData;->readDir(Ljava/io/File;Ljava/io/DataInputStream;)V

    return-void
.end method

.method public onReadFileInfo(Ljava/io/DataInputStream;B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return p2

    :cond_0
    new-instance p2, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    invoke-direct {p2}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;-><init>()V

    iput-object p2, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFileInfo:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->setFileCount(I)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->setLength(J)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    return p0
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/transsion/socket/internal/SocketOutputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/socket/internal/SocketOutputStream;

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSOS:Lcom/transsion/socket/internal/SocketOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFailFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mCoverOldFile:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileData;->getSendDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/transsion/letswitch/service/api/IFileOperation;->getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/letswitch/service/api/FileInformation;->isDir()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/letswitch/service/api/FileInformation;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketFileData;->writeStreamFromFile(Ljava/io/DataOutputStream;Lcom/transsion/letswitch/service/api/FileInformation;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    return-void
.end method

.method public onWriteFileInfo(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mWriteSendFileInfo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFileInfo:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileData;->calcTotalSendFileInfo()Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFileInfo:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    :cond_1
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, v0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, v0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public readDir(Ljava/io/File;Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/transsion/socket/pkgdata/SocketData;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-static {p1}, Lcom/transsion/socket/internal/SocketStream;->makeDirs(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    sget-boolean v2, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readDir-dirName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flag:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SocketDirData"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/pkgdata/SocketFileData;->readDir(Ljava/io/File;Ljava/io/DataInputStream;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, p2, p1}, Lcom/transsion/socket/pkgdata/SocketFileData;->readStreamToFile(Ljava/io/DataInputStream;Ljava/io/File;)V

    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readStreamToFile(Ljava/io/DataInputStream;Ljava/io/File;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/socket/pkgdata/SocketData;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    iget-byte v1, v0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/socket/internal/SocketStream;->makeDirs(Ljava/io/File;)V

    move-object/from16 v14, p2

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/transsion/socket/internal/SocketStream;->makeDirs(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v1, v2, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileData;->notifyStartFile(Z)V

    sget-boolean v1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    const-string v15, ", size:"

    const-string v9, "SocketDirData"

    if-eqz v1, :cond_1

    move-object v1, v10

    check-cast v1, Lcom/transsion/socket/internal/SocketInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readStreamToFile-fileName0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/socket/internal/SocketInputStream;->getInputSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v7, v10, Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz v7, :cond_2

    move-object v1, v10

    check-cast v1, Lcom/transsion/socket/internal/SocketInputStream;

    invoke-virtual {v1}, Lcom/transsion/socket/internal/SocketInputStream;->resetReceiveTraffic()V

    :cond_2
    new-instance v1, Lcom/transsion/socket/untils/FileWriter;

    invoke-direct {v1}, Lcom/transsion/socket/untils/FileWriter;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    iget-boolean v8, v0, Lcom/transsion/socket/pkgdata/SocketFileData;->mCoverOldFile:Z

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v16, v7

    move/from16 v17, v8

    move-wide v7, v11

    move-wide/from16 v18, v11

    move-object v11, v9

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/transsion/socket/untils/FileWriter;->write(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJZ)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v2, "readStreamToFileSkipError fail"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFailFiles:Ljava/util/List;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v16, :cond_4

    move-object v2, v10

    check-cast v2, Lcom/transsion/socket/internal/SocketInputStream;

    invoke-virtual {v2}, Lcom/transsion/socket/internal/SocketInputStream;->stopReceiveCount()V

    :cond_4
    sget-boolean v2, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v2, :cond_5

    move-object v2, v10

    check-cast v2, Lcom/transsion/socket/internal/SocketInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStreamToFile-fileName1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/socket/internal/SocketInputStream;->getInputSize()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  result = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move-wide/from16 v4, v18

    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/transsion/socket/pkgdata/SocketFileData;->notifyFinishFile(J)V

    return-void
.end method

.method public setCoverOldFile(Z)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mCoverOldFile:Z

    return-object p0
.end method

.method public setFileInfo(Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mFileInfo:Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    return-object p0
.end method

.method public setFileTransferProgress(Lcom/transsion/socket/pkgdata/SocketFileData$IFileTransferProgress;)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTransferProgress:Lcom/transsion/socket/pkgdata/SocketFileData$IFileTransferProgress;

    return-object p0
.end method

.method public setReceiveDir(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    iput-byte p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    :cond_0
    return-object p0
.end method

.method public setReceiveFile(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveFileType:B

    :cond_0
    return-object p0
.end method

.method public setSendFile(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    return-object p0
.end method

.method public setSendFileInfo(Z)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mWriteSendFileInfo:Z

    return-object p0
.end method

.method public setTrafficStats(Z)Lcom/transsion/socket/pkgdata/SocketFileData;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mTrafficStats:Z

    return-object p0
.end method

.method public writeDir(Ljava/lang/String;[Ljava/io/File;Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    const-string v1, "SocketDirData"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDir:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p3, p1}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    aget-object v2, p2, v0

    sget-boolean v3, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDir["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]=isDirectory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "::name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v3, v2, p3}, Lcom/transsion/socket/pkgdata/SocketFileData;->writeDir(Ljava/lang/String;[Ljava/io/File;Ljava/io/DataOutputStream;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public writeStreamFromFile(Ljava/io/DataOutputStream;Lcom/transsion/letswitch/service/api/FileInformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/letswitch/service/api/FileInformation;->getLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/transsion/letswitch/service/api/FileInformation;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p0, p1, v2}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    sget-boolean v3, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    const-string v4, "SocketDirData"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeStreamFromFile-size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", name:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/transsion/socket/pkgdata/SocketFileData;->notifyStartFile(Z)V

    sget-boolean v3, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    const-string v5, ", "

    const-string v6, ", size:"

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/transsion/socket/internal/SocketOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeStreamFromFile-fileName0:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/socket/internal/SocketOutputStream;->getOutputSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v3, p1, Lcom/transsion/socket/internal/SocketOutputStream;

    if-eqz v3, :cond_2

    move-object v7, p1

    check-cast v7, Lcom/transsion/socket/internal/SocketOutputStream;

    invoke-virtual {v7}, Lcom/transsion/socket/internal/SocketOutputStream;->resetSendTraffic()V

    :cond_2
    new-instance v7, Lcom/transsion/socket/untils/FileReader;

    invoke-direct {v7}, Lcom/transsion/socket/untils/FileReader;-><init>()V

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9, p2, p1}, Lcom/transsion/socket/untils/FileReader;->read(JLcom/transsion/letswitch/service/api/FileInformation;Ljava/io/DataOutputStream;)V

    if-eqz v3, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/transsion/socket/internal/SocketOutputStream;

    invoke-virtual {p2}, Lcom/transsion/socket/internal/SocketOutputStream;->stopSendCount()V

    :cond_3
    sget-boolean p2, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz p2, :cond_4

    check-cast p1, Lcom/transsion/socket/internal/SocketOutputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeStreamFromFile-fileName1:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/socket/internal/SocketOutputStream;->getOutputSize()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileData;->notifyFinishFile(J)V

    return-void
.end method
