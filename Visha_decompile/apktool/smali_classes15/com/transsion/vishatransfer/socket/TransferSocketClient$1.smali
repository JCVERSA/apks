.class Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;
.super Lcom/transsion/socket/SocketTrafficStats;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;JI)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/socket/SocketTrafficStats;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onSendSpeedUpdate(JJJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->g(Lcom/transsion/vishatransfer/socket/TransferSocketClient;Z)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {v0, p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->k(Lcom/transsion/vishatransfer/socket/TransferSocketClient;J)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1, p3, p4}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->h(Lcom/transsion/vishatransfer/socket/TransferSocketClient;J)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->e(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->b(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferMessage;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->b(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferMessage;

    move-result-object p2

    invoke-virtual {p2, p5, p6}, Lcom/transsion/vishatransfer/socket/TransferMessage;->progress(J)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p2

    invoke-interface {p2, p5, p6}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onProgress(J)V

    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
