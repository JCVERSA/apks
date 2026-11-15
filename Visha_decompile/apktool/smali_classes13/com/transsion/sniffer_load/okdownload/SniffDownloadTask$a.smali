.class public Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "polling server async response successfully"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p0, "but response is empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    const-string v2, "dl_brower_sniff"

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;

    sget-object v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "polling server async response startDownload:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v4, v4, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v4, v4, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getSize()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_1

    const-wide/16 v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getSize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    :goto_1
    iput-wide v5, v4, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v4, v4, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfe7;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v5

    iput-object v5, v4, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v4, v4, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->userAgent:Ljava/lang/String;

    iput-object v5, v4, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v4, v4, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->resourceCover:Ljava/lang/String;

    iput-object v5, v4, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v4, v4, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->cookie:Ljava/lang/String;

    iput-object v0, v4, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getMimeTypeString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lzy/okgo/model/Progress;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyv5;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v1, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0, v1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->start()V

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v1, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr03;->n(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "async task pause, status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-static {v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->k(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V

    :goto_2
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2011:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v3, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v1, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-static {v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->i(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "but not get video url,so failed!"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "poll sniff data is failed!"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2012:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v3, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object v1, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-static {v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->i(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "polling server async task failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object p2, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "poll sniff data is failed!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2012:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v0, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iget-object p2, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p2, p2, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-static {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->i(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_sniff"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    return-void
.end method

.method public bridge synthetic returnDataSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;->a(Ljava/util/List;)V

    return-void
.end method
