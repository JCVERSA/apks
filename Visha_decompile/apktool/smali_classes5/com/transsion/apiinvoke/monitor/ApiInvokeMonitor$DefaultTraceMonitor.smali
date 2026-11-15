.class public Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/monitor/InvokeMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTraceMonitor"
.end annotation


# instance fields
.field protected recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/monitor/RecordItem;",
            ">;"
        }
    .end annotation
.end field

.field protected recordProcessing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/monitor/RecordItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onInvokeEnd(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordList:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onInvokeStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;->recordProcessing:Ljava/util/List;

    const/16 p1, 0x63

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

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
