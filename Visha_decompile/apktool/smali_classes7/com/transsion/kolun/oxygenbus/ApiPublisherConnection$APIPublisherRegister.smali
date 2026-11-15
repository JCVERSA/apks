.class Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APIPublisherRegister"
.end annotation


# instance fields
.field private channelName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

.field private publisherStub:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

.field private remoteRegistered:Z

.field final synthetic this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;


# direct methods
.method private constructor <init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->remoteRegistered:Z

    .line 4
    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->context:Landroid/content/Context;

    .line 5
    invoke-direct {p0, p3, p4}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->updateProcessInfo(Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    invoke-direct {p1}, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->publisherStub:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->lambda$loopRegisterRemoteSubscribeStub$0()V

    return-void
.end method

.method public static synthetic access$300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->updateProcessInfo(Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->loopRegisterRemoteSubscribeStub()V

    return-void
.end method

.method public static synthetic access$500(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->unRegisterRemoteSubscribeStub()V

    return-void
.end method

.method public static synthetic access$700(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->remoteRegistered()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->registerRemoteSubscribe()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->unRegisterRemoteSubscribe()V

    return-void
.end method

.method private synthetic lambda$loopRegisterRemoteSubscribeStub$0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->loopRegisterRemoteSubscribeStub()V

    return-void
.end method

.method private loopRegisterRemoteSubscribeStub()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1100(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)I

    move-result v0

    const/16 v1, 0x1e

    const-string v2, "ApiPublisherConnection"

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {p0, v3}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1102(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;I)I

    const-string p0, "registerRemoteSubscribeStub timeOut "

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1108(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)I

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->registerRemoteSubscribe()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRemoteSubscribeStub currentTimes "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v4}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1100(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " success "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {p0, v3}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1102(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;I)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    new-instance v1, Lcom/transsion/kolun/oxygenbus/a;

    invoke-direct {v1, p0}, Lcom/transsion/kolun/oxygenbus/a;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V

    invoke-static {v0, v1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1202(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_4
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private registerAPIPublisher(Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->publisherStub:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->publisherStub:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    :cond_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->publisherStub:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    invoke-interface {p1, p2, p3, p0}, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;->registerSubscribeManager(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/APIPublisher;)V

    const-wide/16 p0, 0x14

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private registerRemoteSubscribe()Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ApiPublisherConnection"

    if-nez v0, :cond_0

    const-string p0, "registerRemoteSubscribeStub == null"

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v3}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->channelName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->registerAPIPublisher(Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->remoteRegistered:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerRemoteSubscribeStub success "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " >> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->channelName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_2
    :goto_0
    const-string p0, "registerRemoteSubscribeStub processName == NULL"

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private remoteRegistered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->remoteRegistered:Z

    return p0
.end method

.method private unRegisterRemoteSubscribe()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->remoteRegistered:Z

    :try_start_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->this$0:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1400(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    move-result-object p0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->unRegisterRemoteSubscribeStub()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p0, "ApiPublisherConnection"

    const-string v0, "unRegisterRemoteSubscribe finish"

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterRemoteSubscribeStub()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    const-string v1, "ApiPublisherConnection"

    if-nez v0, :cond_0

    const-string p0, "registerRemoteSubscribeStub == NULL"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->channelName:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->channelName:Ljava/lang/String;

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterRemoteSubscribeStub processInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->channelName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;->unRegisterSubscribeManager(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->remoteRegistered:Z

    return-void

    :cond_4
    :goto_0
    const-string p0, "unRegisterRemoteSubscribeStub processName == NULL"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateProcessInfo(Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->processInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->channelName:Ljava/lang/String;

    return-void
.end method
