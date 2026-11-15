.class public Lcom/transsion/socket/pkgdata/SocketConnectData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ACK:I = 0x3e8

.field private static final DEFAULT_ADD:I = 0x1

.field private static final DEFAULT_REQ:I = 0x0

.field private static final HEART_VERSION:I = 0x2

.field public static final STATUS_CONNECT_ACK:B = 0x3t

.field public static final STATUS_CONNECT_DEFAULT:B = 0x0t

.field public static final STATUS_CONNECT_REQ:B = 0x1t

.field public static final STATUS_CONNECT_SYN:B = 0x2t


# instance fields
.field private ack:I

.field public isHeartReq:Z

.field public mStatus:B

.field private req:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    iput-boolean v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->isHeartReq:Z

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    return-void
.end method

.method private copyFrom(Lcom/transsion/socket/pkgdata/SocketConnectData;)Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 1

    new-instance p0, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;-><init>()V

    iget-byte v0, p1, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    iget v0, p1, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    iget v0, p1, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    iget p1, p1, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    iput p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    return-object p0
.end method


# virtual methods
.method public isNeedHeat()Z
    .locals 1

    iget p0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSignalRight()Z
    .locals 4

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget p0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    add-int/lit16 p0, p0, -0x3e8

    if-ne p0, v3, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    iget p0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    if-ne p0, v3, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public onClazzType()B
    .locals 0

    const/16 p0, -0x7d

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;->isNeedHeat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->isHeartReq:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;->isNeedHeat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->isHeartReq:Z

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :cond_0
    return-void

    :cond_1
    iget p0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public refuse(Z)Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-byte p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    :goto_0
    return-object p0
.end method

.method public responseReqData()Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 1

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketConnectData;-><init>()V

    invoke-direct {v0, p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;->copyFrom(Lcom/transsion/socket/pkgdata/SocketConnectData;)Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object p0

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    iget v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    return-object p0
.end method

.method public responseSYNData()Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 1

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketConnectData;-><init>()V

    invoke-direct {v0, p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;->copyFrom(Lcom/transsion/socket/pkgdata/SocketConnectData;)Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object p0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    iget v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    return-object p0
.end method

.method public setHeartReq(Z)Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->isHeartReq:Z

    return-object p0
.end method

.method public setVersion(I)Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 0

    iput p1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocketConnectData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " mStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " req "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->req:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->ack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/socket/pkgdata/SocketConnectData;->version:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
