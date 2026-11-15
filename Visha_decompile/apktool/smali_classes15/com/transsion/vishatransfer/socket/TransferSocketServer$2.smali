.class Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketServer;->createHeadBeatCallBack()Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocketError(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTrafficStats;->stopTrafficStats()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "TransferSocketServer"

    const-string v0, "onSocketError  disconnect:  "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onDisconnected()V

    :cond_1
    return-void
.end method

.method public onSocketTimeout(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->stopTrafficStats()V

    :cond_0
    return-void
.end method
