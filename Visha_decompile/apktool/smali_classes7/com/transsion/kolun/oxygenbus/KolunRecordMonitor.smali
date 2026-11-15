.class public Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;
.super Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;
    }
.end annotation


# static fields
.field private static final MONITOR_FILE_NAME:Ljava/lang/String; = "monitor_file.log"

.field private static final TAG:Ljava/lang/String; = "ApiInvokeMonitor"

.field private static volatile instance:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;


# instance fields
.field private mThread:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$DefaultTraceMonitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->mThread:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;

    new-instance v0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;

    invoke-direct {v0, p0}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;-><init>(Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->mThread:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;

    return-void
.end method

.method public static getInstance()Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;
    .locals 2

    sget-object v0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->instance:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

    if-eqz v0, :cond_1

    const-class v0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->instance:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

    invoke-direct {v1}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;-><init>()V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->instance:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

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
    sget-object v0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->instance:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

    return-object v0
.end method


# virtual methods
.method public onInvokeEnd(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    return-void
.end method

.method public onInvokeStart(Lcom/transsion/apiinvoke/monitor/RecordItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;->mThread:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/monitor/RecordItem;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->enqueue(Ljava/lang/String;)V

    return-void
.end method
