.class public Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# instance fields
.field private isShow:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->isShow:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsShow()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->isShow:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setIsShow(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->isShow:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->text:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"isShow\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->isShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\"text\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"url\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/ExtensionPositionRep;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
