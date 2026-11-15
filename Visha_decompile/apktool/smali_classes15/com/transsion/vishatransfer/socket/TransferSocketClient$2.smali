.class Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketClient;->openHeartBeat(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocketError(Lcom/transsion/socket/SocketClient;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onSocketTimeout(Lcom/transsion/socket/SocketClient;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    :cond_0
    return-void
.end method
