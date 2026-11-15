.class public Lcom/transsion/apiinvoke/invoke/connect/APIConnection;
.super Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;
.source "SourceFile"


# instance fields
.field private mApiService:Lcom/transsion/apiinvoke/IApiService;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/IApiService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->mApiService:Lcom/transsion/apiinvoke/IApiService;

    return-void
.end method


# virtual methods
.method public declared-synchronized connectServer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->connectServer()V

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->mApiService:Lcom/transsion/apiinvoke/IApiService;

    instance-of v1, v0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->onConnected()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized disconnectServer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->disconnectServer()V

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->mApiService:Lcom/transsion/apiinvoke/IApiService;

    instance-of v1, v0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->onDisConnected()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConnectState()Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->mState:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    return-object p0
.end method
