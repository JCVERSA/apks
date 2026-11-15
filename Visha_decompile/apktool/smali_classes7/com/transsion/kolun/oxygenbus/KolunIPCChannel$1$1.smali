.class Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;
.super Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;


# direct methods
.method public constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    invoke-direct {p0, p2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;-><init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    iget-object v0, v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$000(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->unListen(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;->getCallback()Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeApiAsync, onConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has callback "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KolunIPCChannel"

    invoke-static {v0, p2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->val$request:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    iget-object v4, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->val$chain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    iget-boolean v6, p0, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;->isMainThreadCall:Z

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$100(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Z)V

    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    iget-object v0, v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$000(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->unListen(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;->getCallback()Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected ApiAyncRunnable run in main: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    iget-boolean v2, v2, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;->isMainThreadCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KolunIPCChannel"

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->this$1:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    iget-boolean v1, v1, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;->isMainThreadCall:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;-><init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelConnectFault(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeApiAsync, onDisconnected "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has callback "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
