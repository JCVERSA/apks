.class public Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;
    }
.end annotation


# static fields
.field private static final MAX_RECORD_TRACE:I = 0x1e

.field private static final MAX_TRACE:I = 0x64

.field private static volatile instance:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;


# instance fields
.field private cachedRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/apiinvoke/monitor/RecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private monitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/monitor/InvokeMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    new-instance v0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$1;-><init>(Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->cachedRecords:Ljava/util/Map;

    new-instance v0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->addMonitor(Lcom/transsion/apiinvoke/monitor/InvokeMonitor;)V

    return-void
.end method

.method private dispatchEnd(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/monitor/InvokeMonitor;

    invoke-interface {v2, p1, p2}, Lcom/transsion/apiinvoke/monitor/InvokeMonitor;->onInvokeEnd(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dispatchStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/monitor/InvokeMonitor;

    invoke-interface {v2, p1}, Lcom/transsion/apiinvoke/monitor/InvokeMonitor;->onInvokeStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;
    .locals 2

    sget-object v0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->instance:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->instance:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    invoke-direct {v1}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;-><init>()V

    sput-object v1, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->instance:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->instance:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/transsion/apiinvoke/monitor/InvokeMonitor;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMonitor(Lcom/transsion/apiinvoke/monitor/InvokeMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->monitors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public traceEnd(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->cachedRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/monitor/RecordItem;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/apiinvoke/monitor/RecordItem;->setResult(Lcom/transsion/apiinvoke/invoke/ApiResponse;J)V

    iget-object p2, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->cachedRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p3}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->dispatchEnd(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    :cond_0
    return-void
.end method

.method public tracePublish(Lcom/transsion/apiinvoke/invoke/ApiRequest;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->createPublish(Lcom/transsion/apiinvoke/invoke/ApiRequest;Ljava/lang/String;Ljava/io/Serializable;J)Lcom/transsion/apiinvoke/monitor/RecordItem;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->cachedRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->dispatchStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V

    return-void
.end method

.method public traceRequest(Lcom/transsion/apiinvoke/invoke/ApiRequest;Z)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/transsion/apiinvoke/monitor/RecordItem;->createRequest(Lcom/transsion/apiinvoke/invoke/ApiRequest;JZ)Lcom/transsion/apiinvoke/monitor/RecordItem;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->cachedRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->dispatchStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V

    return-void
.end method
