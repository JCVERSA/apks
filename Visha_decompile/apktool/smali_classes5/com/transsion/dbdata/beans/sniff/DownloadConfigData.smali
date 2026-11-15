.class public Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataVersion"
    .end annotation
.end field

.field private downloadMain:Lcom/transsion/dbdata/beans/sniff/DownloadMain;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website"
    .end annotation
.end field

.field private searchKey:Lcom/transsion/dbdata/beans/sniff/SearchKey;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyWords"
    .end annotation
.end field

.field private sniffBlackWhiteBean:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blackWhiteRt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->dataVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadMain()Lcom/transsion/dbdata/beans/sniff/DownloadMain;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->downloadMain:Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    return-object p0
.end method

.method public getSearchKey()Lcom/transsion/dbdata/beans/sniff/SearchKey;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->searchKey:Lcom/transsion/dbdata/beans/sniff/SearchKey;

    return-object p0
.end method

.method public getSniffBlackWhiteBean()Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->sniffBlackWhiteBean:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadConfigData{downloadMain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->downloadMain:Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sniffBlackWhiteBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->sniffBlackWhiteBean:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->searchKey:Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->dataVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
