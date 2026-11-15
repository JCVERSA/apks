.class public abstract Lcom/transsion/socket/pkgdata/SocketBlockData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STATUS_BLOCK_CONTENT_FINISH:B = 0x3t

.field public static final STATUS_BLOCK_CONTENT_RESPONSE:B = 0x1t

.field public static final STATUS_BLOCK_CONTENT_UPLOAD:B = 0x2t

.field public static final STATUS_BLOCK_INIT_REQUEST:B


# instance fields
.field public mMD5Sign:Ljava/lang/String;

.field public mPosition:J

.field public mStatus:B

.field public mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    return-void
.end method


# virtual methods
.method public copyDataFrom(Lcom/transsion/socket/pkgdata/SocketBlockData;)Lcom/transsion/socket/pkgdata/SocketBlockData;
    .locals 2

    iget-wide v0, p1, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    iget-byte v0, p1, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    iget-wide v0, p1, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    return-object p0
.end method

.method public abstract copyObject()Lcom/transsion/socket/pkgdata/SocketBlockData;
.end method

.method public dump()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TotalSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dump"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getUploadPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    return-wide v0
.end method

.method public isBlockData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract loadTotalSize()J
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mMD5Sign:Ljava/lang/String;

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    iget-byte v2, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/socket/pkgdata/SocketBlockData;->readBlockData(Ljava/io/DataInputStream;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->loadTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    :cond_0
    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mMD5Sign:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/socket/pkgdata/SocketBlockData;->writeBlockData(Ljava/io/DataOutputStream;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract readBlockData(Ljava/io/DataInputStream;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public requestBlockData()Lcom/transsion/socket/pkgdata/SocketBlockData;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->copyObject()Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object v0

    iget-byte p0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x2

    iput-byte p0, v0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    :cond_0
    return-object v0
.end method

.method public responseFinish()Lcom/transsion/socket/pkgdata/SocketBlockData;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->copyObject()Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object p0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    return-object p0
.end method

.method public responseInitRequest()Lcom/transsion/socket/pkgdata/SocketBlockData;
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->copyObject()Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketBlockData;->getUploadPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mPosition:J

    iget-wide v3, v0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mTotalSize:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x3

    iput-byte p0, v0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-byte p0, v0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    :goto_0
    return-object v0
.end method

.method public abstract writeBlockData(Ljava/io/DataOutputStream;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
