.class Lcom/transsion/socket/SocketTransferChannel$2;
.super Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/SocketTransferChannel;->createSendPackageHandler()V
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

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-direct {p0}, Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    if-eqz v0, :cond_0

    const-string v0, "SocketTransferChannel"

    const-string v1, "openSendSocket start Send data..."

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->d(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->ismReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v1}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v1, v2}, Lcom/transsion/socket/SocketDataTransfer;->getConnectData(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-direct {v1}, Lcom/transsion/socket/pkgdata/SocketConnectData;-><init>()V

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->q(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->g(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->b(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->ismReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->l(Lcom/transsion/socket/SocketTransferChannel;Z)V

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0, v2}, Lcom/transsion/socket/SocketDataTransfer;->onReadySendSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v0, v0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v2, v2, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v2, v2, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/socket/pkgdata/SocketData;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v0, v0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v1, v1, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v1, :cond_5

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v1}, Lcom/transsion/socket/SocketTransferChannel;->g(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v1, v1, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    monitor-exit v0

    goto/16 :goto_1

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$2;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->q(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    goto/16 :goto_1

    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_8
    return-void
.end method
