.class public Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# instance fields
.field private area:Ljava/lang/String;

.field private canceltime:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private cpid:Ljava/lang/String;

.field private definition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private devid:Ljava/lang/String;

.field private endtime:Ljava/lang/String;

.field private last_updated:Ljava/lang/String;

.field private orderstatus:Ljava/lang/String;

.field private ordertime:Ljava/lang/String;

.field private ordertype:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private spid:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private tips:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field private videoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->userid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->cpid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->spid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertime:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->canceltime:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->endtime:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->province:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertype:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->orderstatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->videoid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->last_updated:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->devid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->tips:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->definition:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->subtitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->area:Ljava/lang/String;

    return-object p0
.end method

.method public getCanceltime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->canceltime:Ljava/lang/String;

    return-object p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public getCpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->cpid:Ljava/lang/String;

    return-object p0
.end method

.method public getDefinition()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->definition:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDevid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->devid:Ljava/lang/String;

    return-object p0
.end method

.method public getEndtime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->endtime:Ljava/lang/String;

    return-object p0
.end method

.method public getLast_updated()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->last_updated:Ljava/lang/String;

    return-object p0
.end method

.method public getOrderstatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->orderstatus:Ljava/lang/String;

    return-object p0
.end method

.method public getOrdertime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertime:Ljava/lang/String;

    return-object p0
.end method

.method public getOrdertype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertype:Ljava/lang/String;

    return-object p0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->province:Ljava/lang/String;

    return-object p0
.end method

.method public getSpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->spid:Ljava/lang/String;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTips()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->tips:Ljava/lang/String;

    return-object p0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->userid:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->videoid:Ljava/lang/String;

    return-object p0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->area:Ljava/lang/String;

    return-void
.end method

.method public setCanceltime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->canceltime:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->channel:Ljava/lang/String;

    return-void
.end method

.method public setCpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->cpid:Ljava/lang/String;

    return-void
.end method

.method public setDefinition(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->definition:Ljava/util/ArrayList;

    return-void
.end method

.method public setDevid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->devid:Ljava/lang/String;

    return-void
.end method

.method public setEndtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->endtime:Ljava/lang/String;

    return-void
.end method

.method public setLast_updated(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->last_updated:Ljava/lang/String;

    return-void
.end method

.method public setOrderstatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->orderstatus:Ljava/lang/String;

    return-void
.end method

.method public setOrdertime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertime:Ljava/lang/String;

    return-void
.end method

.method public setOrdertype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertype:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->province:Ljava/lang/String;

    return-void
.end method

.method public setSpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->spid:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->tips:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->userid:Ljava/lang/String;

    return-void
.end method

.method public setVideoid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->videoid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"userid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"cpid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->cpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"spid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->spid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"ordertime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"canceltime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->canceltime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"endtime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->endtime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"channel\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"province\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"area\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"ordertype\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->ordertype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"orderstatus\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->orderstatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"videoid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"last_updated\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->last_updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"devid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->devid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"tips\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"defintion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->definition:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"subtitle\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/response/OrderQueryRep;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
