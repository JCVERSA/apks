.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;->onConnectionChanged(Landroid/net/NetworkInfo;I)V
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$serverReceiver$1$onConnectionChanged$1"
    f = "WifiTransferManager.kt"
    l = {
        0x384
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $networkInfo:Landroid/net/NetworkInfo;

.field label:I

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;-><init>(Landroid/net/NetworkInfo;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_2

    const-string p1, "socket_debug"

    const-string v1, "WifiTransferManager_serverReceiver_onConnectionChanged_isConnected"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;

    iget-object v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/NetworkInfo;Lwh1;)V

    iput v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->$networkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    const/4 v0, -0x1

    const-string v1, ""

    if-eqz p1, :cond_3

    new-instance p1, Lcom/transsion/vishatransfer/data/ConnectedState;

    const/4 v2, 0x4

    invoke-direct {p1, v2, v1, v0}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/transsion/vishatransfer/data/ConnectedState;

    const/4 v2, 0x5

    invoke-direct {p1, v2, v1, v0}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    :goto_1
    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    :cond_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
