.class public Lcom/mgtv/downloader/free/bean/BaseBean;
.super Lcom/mgtv/downloader/free/bean/response/JsonEntity;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mgtv/downloader/free/bean/response/JsonEntity;",
        "Lcom/mgtv/json/JsonInterface;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private errorcode:Ljava/lang/String;

.field private errorinfo:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/downloader/free/bean/response/JsonEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getErrorcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->errorcode:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorinfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->errorinfo:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->result:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public setErrorcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->errorcode:Ljava/lang/String;

    return-void
.end method

.method public setErrorinfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->errorinfo:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->result:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseBean{result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorcode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->errorcode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->data:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", errorinfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/free/bean/BaseBean;->errorinfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
