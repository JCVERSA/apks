.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1;->onConnectionChanged(Landroid/net/NetworkInfo;I)V
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1"
    f = "WifiTransferManager.kt"
    l = {
        0x3a3,
        0x3a9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $networkInfo:Landroid/net/NetworkInfo;

.field label:I

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/NetworkInfo;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Landroid/net/NetworkInfo;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/NetworkInfo;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "socket_debug"

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    const-string p1, "WifiTransferManager_p2pConnectReceiver_onConnectionChanged"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "WifiTransferManager_p2pConnectReceiver_onConnectionChanged_isConnected"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->label:I

    invoke-static {p1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$requestConnectionInfo(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/transsion/vishatransfer/data/WifiModel;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/WifiModel;->getServiceIP()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "WifiTransferManager_p2pConnectReceiver_onConnectionChanged_startSocketClient"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->startSocketClient(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1$1;

    iget-object v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/NetworkInfo;Lwh1;)V

    iput v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
