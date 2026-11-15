.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->connectAsync(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$connectAsync$1"
    f = "WifiTransferManager.kt"
    l = {
        0x1e3,
        0x1ec,
        0x1ed,
        0x1fb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lu74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu74;"
        }
    .end annotation
.end field

.field final synthetic $device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Lu74;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$callback:Lu74;

    iput-object p3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$callback:Lu74;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->I$0:I

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->I$0:I

    iget-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v8, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1$1;

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$callback:Lu74;

    invoke-direct {v1, v2, v6}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1$1;-><init>(Lu74;Lwh1;)V

    iput v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_6
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    const/4 p1, 0x0

    :cond_7
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMRetryCount$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)I

    move-result v1

    if-ge p1, v1, :cond_b

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v8, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v8}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->L$1:Ljava/lang/Object;

    iput p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->I$0:I

    iput v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->label:I

    invoke-static {v8, v1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$disconnect(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move v1, p1

    :goto_1
    invoke-static {v8}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->L$1:Ljava/lang/Object;

    iput v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->I$0:I

    iput v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->label:I

    invoke-static {v8, p1, v7, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$connectWifi(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_2
    check-cast p1, Lcom/transsion/vishatransfer/data/WifiModel;

    move p1, v1

    :cond_a
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getConnectLock$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    monitor-enter v1

    :try_start_0
    invoke-static {v7}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getConnectLock$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getConnnectTimeOut$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    sget-object v7, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    add-int/2addr p1, v5

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isConnected()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :goto_4
    monitor-exit v1

    throw p0

    :cond_b
    :goto_5
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1$4;

    iget-object v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->$callback:Lu74;

    invoke-direct {v1, v3, v4, v6}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1$4;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Lwh1;)V

    iput v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    return-object v0

    :cond_c
    :goto_6
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
