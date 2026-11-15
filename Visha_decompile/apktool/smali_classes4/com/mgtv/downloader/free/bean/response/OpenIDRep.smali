.class public Lcom/mgtv/downloader/free/bean/response/OpenIDRep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# instance fields
.field private data:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private resCode:I

.field private resMsg:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resMsg:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resCode:I

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getResCode()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resCode:I

    return p0
.end method

.method public getResMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->result:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->state:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->data:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resCode:I

    return-void
.end method

.method public setResMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resMsg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->result:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->state:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"resMsg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\"resCode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->resCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\", \"data\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\"state\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\"result\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"msg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OpenIDRep;->msg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
