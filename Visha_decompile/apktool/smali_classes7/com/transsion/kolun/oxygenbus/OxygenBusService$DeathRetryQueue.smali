.class Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/monitor/InvokeMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeathRetryQueue"
.end annotation


# static fields
.field private static final MAX_RETRY_SIZE:I = 0x14


# instance fields
.field private retryRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->lambda$requestAgain$0(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method private static synthetic lambda$requestAgain$0(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAgain response url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->getRouterUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " result "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OxygenBusService"

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized requestAgain(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_0
    iget-boolean v0, p1, Lcom/transsion/apiinvoke/monitor/RecordItem;->success:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->supportRetry()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p1, Lcom/transsion/apiinvoke/monitor/RecordItem;->recordType:I

    sget v1, Lcom/transsion/apiinvoke/monitor/RecordItem;->RECORD_TYPE_REQUEST:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->clearRetryOnReConnect()V

    const-string v0, "OxygenBusService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAgain start request url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->getRouterUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->createRequest()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/transsion/kolun/oxygenbus/c;

    invoke-direct {v1, p1, p2}, Lcom/transsion/kolun/oxygenbus/c;-><init>(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    sget p2, Lcom/transsion/apiinvoke/monitor/RecordItem;->RECORD_TYPE_PUBLISH:I

    if-ne v0, p2, :cond_4

    iget-object p2, p1, Lcom/transsion/apiinvoke/monitor/RecordItem;->publishItem:Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->createRequest()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p2

    iget-object v0, p1, Lcom/transsion/apiinvoke/monitor/RecordItem;->publishItem:Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;

    iget-object v1, v0, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;->matcher:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;->publishData:Ljava/io/Serializable;

    invoke-virtual {p2, v1, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->publishData(Ljava/lang/String;Ljava/io/Serializable;)Z

    const-string p2, "OxygenBusService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAgain publishData matcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/apiinvoke/monitor/RecordItem;->publishItem:Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;

    iget-object p1, p1, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;->matcher:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_6
    :goto_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public checkRetryList()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;->request:Lcom/transsion/apiinvoke/monitor/RecordItem;

    invoke-static {v2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;->access$700(Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;)Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->requestAgain(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onInvokeEnd(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->shouldRetryOnReConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    new-instance v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;-><init>(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->retryRecordList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onInvokeStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V
    .locals 0

    return-void
.end method
