.class public Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->retryServerSniffAsyncDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iput-wide p2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfe7;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->userAgent:Ljava/lang/String;

    iput-object v3, v2, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->cookie:Ljava/lang/String;

    iput-object v0, v2, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request_new_download_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean$Video;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "poll sniff data is failed!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2011:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v1, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->a:J

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

.method public returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object p2, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "poll sniff data is failed!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2012:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v0, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->b:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object p2, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p2, p2, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->a:J

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

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;->a(Ljava/util/List;)V

    return-void
.end method
