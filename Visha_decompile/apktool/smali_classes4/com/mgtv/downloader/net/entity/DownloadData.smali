.class public Lcom/mgtv/downloader/net/entity/DownloadData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# instance fields
.field public code:I

.field public ext:Ljava/lang/String;

.field public idc:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public isothercdn:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->code:I

    return p0
.end method

.method public getExt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->ext:Ljava/lang/String;

    return-object p0
.end method

.method public getIdc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->idc:Ljava/lang/String;

    return-object p0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->info:Ljava/lang/String;

    return-object p0
.end method

.method public getIsothercdn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->isothercdn:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getT()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->t:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->code:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->ext:Ljava/lang/String;

    return-void
.end method

.method public setIdc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->idc:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->info:Ljava/lang/String;

    return-void
.end method

.method public setIsothercdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->isothercdn:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->status:Ljava/lang/String;

    return-void
.end method

.method public setT(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->t:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadData{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isothercdn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->isothercdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->idc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ext=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/net/entity/DownloadData;->ext:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
