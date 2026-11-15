.class public Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->runServerAsyncSniffTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->endTime:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->isSniffSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->isSniffMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "server async sniff task success,start save file:"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->b(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataSuccess(Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2009:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v1, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    sget-wide v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->endTime:J

    sget-wide v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->startTime:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_sniff"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    goto/16 :goto_3

    :cond_0
    sget-object p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server async sniff task,but not get sniff video url,start polling server :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v1, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;-><init>()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;->setSniffUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->d(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;J)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/vishaapis/APIService;->getSniffResultFromServer(Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;)Ljq0;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->b(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    move-result-object p0

    const-string p1, "-1"

    invoke-interface {p0, p1, v0}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljq0;->clone()Ljq0;

    move-result-object v2

    invoke-interface {v2}, Ljq0;->execute()Lgu8;

    move-result-object v2

    invoke-virtual {v2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v3}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "polling server success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v5}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {v3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->b(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    move-result-object v3

    invoke-virtual {v2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v3, v2}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataSuccess(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "polling server failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server async sniff task, polling server over try time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->b(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    move-result-object p0

    const-string p1, "-2"

    invoke-interface {p0, p1, v0}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "get_sniff_result_failed_use_client_sniff:"

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->endTime:J

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2008:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v0, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    sget-wide p1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->endTime:J

    sget-wide v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->startTime:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

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

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;->a(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    return-void
.end method
