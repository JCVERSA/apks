.class Lcom/transsion/socket/SocketTransferChannel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/SocketTransferChannel;->runOnceReceiveHeartData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/socket/SocketTransferChannel;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTimeOut()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v2}, Lcom/transsion/socket/SocketTransferChannel;->e(Lcom/transsion/socket/SocketTransferChannel;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p0}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketDataTransfer;->socketTimeOut()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCallHeartBeat()V
    .locals 0

    return-void
.end method

.method public onTimeOut()V
    .locals 2

    const-string v0, "SocketTransferChannel"

    const-string v1, "heart beat onTimeOut "

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->i(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->i(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-interface {v0, v1}, Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;->onSocketTimeout(Lcom/transsion/socket/SocketTransferChannel;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->f(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->f(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-interface {v0, v1}, Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;->onChannelTimeout(Lcom/transsion/socket/SocketTransferChannel;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->j(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketThreadHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->j(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketThreadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/socket/internal/SocketThreadHandler;->safelyQuit()V

    :cond_2
    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$3;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    return-void
.end method
