.class public Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSniffResultShowType:I

.field volatile multiVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->mSniffResultShowType:I

    return-void
.end method

.method public static isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getMultiVideoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    return-object p0
.end method

.method public getSniffResultShowType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->mSniffResultShowType:I

    return p0
.end method

.method public getSniffVideoInfo(I)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSingleVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMultiVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    return-void
.end method

.method public setSniffResultShowType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->mSniffResultShowType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParsedVideoInfoArrayBean{mutilVideoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->multiVideoList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
