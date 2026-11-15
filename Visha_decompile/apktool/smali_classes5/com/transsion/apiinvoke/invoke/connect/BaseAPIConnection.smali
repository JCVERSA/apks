.class public abstract Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/connect/IServiceConnection;
.implements Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServiceLifyCycleOwner;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractAPIConnection"


# instance fields
.field private mCheckConnectTimeOut:Ljava/lang/Runnable;

.field private mLifeCycleObserver:Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

.field protected mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->waitConnect:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    new-instance v0, Li80;

    invoke-direct {v0, p0}, Li80;-><init>(Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mCheckConnectTimeOut:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mLifeCycleObserver:Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v1, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->getApiServerLifyCycleObserver()Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->onConnectTimeout()V

    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->waitConnect:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized connectServer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v1, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AbstractAPIConnection: bindService state : connecting"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    if-ne v0, v2, :cond_1

    const-string v0, "AbstractAPIConnection"

    const-string v1, ": bindService no need bind again, state : connected"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput-object v1, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized disconnectServer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v1, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    if-ne v0, v1, :cond_0

    const-string v0, "AbstractAPIConnection"

    const-string v1, ": unBindService state : disconnecting"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    if-ne v0, v2, :cond_1

    const-string v0, "AbstractAPIConnection"

    const-string v1, ": unBindService no need unBind again, state : disconnected"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput-object v1, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getApiServerLifyCycleObserver()Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mLifeCycleObserver:Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

    return-object p0
.end method

.method public getConnectState()Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    return-object p0
.end method

.method public onConnected()V
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->getApiServerLifyCycleObserver()Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->onServiceConnected()V

    return-void
.end method

.method public onDisConnected()V
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->getApiServerLifyCycleObserver()Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->onServiceDisconnected()V

    return-void
.end method
