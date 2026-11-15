.class public Lcom/mgtv/downloader/free/bean/response/PcIDRep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# instance fields
.field private desc:Ljava/lang/String;

.field private expandParams:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private pcId:Ljava/lang/String;

.field private resultcode:Ljava/lang/String;

.field private systemTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getExpandParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->expandParams:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->orderStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getPcId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->pcId:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->resultcode:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->systemTime:Ljava/lang/String;

    return-object p0
.end method

.method public setDec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->desc:Ljava/lang/String;

    return-void
.end method

.method public setExpandParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->expandParams:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->message:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setOrderStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->orderStatus:Ljava/lang/String;

    return-void
.end method

.method public setPcId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->pcId:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->resultcode:Ljava/lang/String;

    return-void
.end method

.method public setSystemTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->systemTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"msgId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"systemTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->systemTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"message\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", \"expandParams\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->expandParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"resultcode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->resultcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"desc\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"orderStatus\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->orderStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"pcId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/PcIDRep;->pcId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
