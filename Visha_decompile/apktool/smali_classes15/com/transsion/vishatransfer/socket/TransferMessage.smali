.class public abstract Lcom/transsion/vishatransfer/socket/TransferMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isListenProgress:Z

.field private mData:Lcom/transsion/socket/pkgdata/SocketData;

.field private mPhase:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract beforeSend()V
.end method

.method public abstract complete()V
.end method

.method public getData()Lcom/transsion/socket/pkgdata/SocketData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mData:Lcom/transsion/socket/pkgdata/SocketData;

    return-object p0
.end method

.method public getPhase()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mPhase:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mType:I

    return p0
.end method

.method public isListenProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->isListenProgress:Z

    return p0
.end method

.method public abstract progress(J)V
.end method

.method public setData(Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mData:Lcom/transsion/socket/pkgdata/SocketData;

    return-void
.end method

.method public setIsListenProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->isListenProgress:Z

    return-void
.end method

.method public setPhase(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mPhase:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferMessage{mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isListenProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->isListenProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferMessage;->mData:Lcom/transsion/socket/pkgdata/SocketData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
