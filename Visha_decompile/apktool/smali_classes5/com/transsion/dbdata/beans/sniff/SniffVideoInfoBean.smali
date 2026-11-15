.class public Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bAsyncServerTask:Z

.field cookie:Ljava/lang/String;

.field encryptionType:Ljava/lang/String;

.field hasResources:Z

.field private img:Ljava/lang/String;

.field invalid:Z

.field private minHeight:I

.field private minWidth:I

.field private name:Ljava/lang/String;

.field public requestBody:Ljava/lang/String;

.field public sniffUrl:Ljava/lang/String;

.field source:I

.field private title:Ljava/lang/String;

.field uaAgent:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;

.field videoCover:Ljava/lang/String;

.field private videoFileName:Ljava/lang/String;

.field videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkName()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    invoke-static {v0}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    return-void
.end method

.method public static fromSniffResultBean(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;
    .locals 6

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoList(Ljava/util/List;)V

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceCover()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getSniffRequestBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->requestBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->uaAgent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getCookie()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->cookie:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getSniffUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->sniffUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->isAsyncServerTask()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->bAsyncServerTask:Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mp4"

    const-string v3, "."

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->source:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->uaAgent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;

    new-instance v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->size:J

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getMimeTypeString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getAudioList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getAudioList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Audio;

    new-instance v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Audio;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Audio;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Audio;->getSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->size:J

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Audio;->getMimeTypeString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getPictureList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getPictureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Picture;

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Picture;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Picture;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Picture;->getSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->size:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Picture;->getMimeTypeString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public static isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isNotEmpty()Z

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
.method public getCookie()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->cookie:Ljava/lang/String;

    return-object p0
.end method

.method public getEncryptionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstVideoMineType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MP4"

    return-object p0
.end method

.method public getFirstVideoResolution()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HD"

    return-object p0
.end method

.method public getFirstVideoSize()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstVideoUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->minHeight:I

    return p0
.end method

.method public getMinResolutionUrl()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getVideoHeight()I

    move-result v4

    if-le v1, v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getVideoHeight()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->minHeight:I

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getVideoWidth()I

    move-result v2

    iput v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->minWidth:I

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->minWidth:I

    return p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->source:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUaAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->uaAgent:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->img:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->name:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->title:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->name:Ljava/lang/String;

    invoke-static {v0}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    return-object p0
.end method

.method public isCanDownload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->hasResources:Z

    return p0
.end method

.method public isInvalid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->invalid:Z

    return p0
.end method

.method public isNotEmpty()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    if-eqz p0, :cond_0

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

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->cookie:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setHasResources(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->hasResources:Z

    return-void
.end method

.method public setInvalid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->invalid:Z

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->source:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUaAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->uaAgent:Ljava/lang/String;

    return-void
.end method

.method public setVideoCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->checkName()V

    :cond_0
    return-void
.end method

.method public setVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SniffVideoInfoBean{videoFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", img=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->img:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", encryptionType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->encryptionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasResources="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->hasResources:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", videoList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->videoList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->minWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->minHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->source:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uaAgent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->uaAgent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
