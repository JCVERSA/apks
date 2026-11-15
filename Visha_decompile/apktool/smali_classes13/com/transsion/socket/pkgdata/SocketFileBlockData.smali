.class Lcom/transsion/socket/pkgdata/SocketFileBlockData;
.super Lcom/transsion/socket/pkgdata/SocketBlockData;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SocketFileData"


# instance fields
.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;-><init>()V

    return-void
.end method


# virtual methods
.method public copyObject()Lcom/transsion/socket/pkgdata/SocketBlockData;
    .locals 2

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;-><init>()V

    iget-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->setPath(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileBlockData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->copyDataFrom(Lcom/transsion/socket/pkgdata/SocketBlockData;)Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->dump()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getTempWritePath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->getWritePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUploadPosition()J
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->getWritePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->getTempWritePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->getWritePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/transsion/socket/internal/SocketUtils;->renameFile(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWritePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public loadTotalSize()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public onClazzType()B
    .locals 0

    const/16 p0, -0x76

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/transsion/socket/pkgdata/SocketBlockData;->onReadData(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/socket/pkgdata/SocketBlockData;->onWriteData(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public readBlockData(Ljava/io/DataInputStream;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->getWritePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->getTempWritePath()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lcom/transsion/socket/internal/SocketStream;->readStreamToFile(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileBlockData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public writeBlockData(Ljava/io/DataOutputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget p0, Lcom/transsion/socket/SocketMain;->PACKAGE_MAX_BLOCK_SIZE:I

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p2, :cond_1

    invoke-static {v1}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_1
    const/4 p3, 0x0

    :try_start_2
    invoke-virtual {p1, p0, p3, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_1
    invoke-static {v1}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method
