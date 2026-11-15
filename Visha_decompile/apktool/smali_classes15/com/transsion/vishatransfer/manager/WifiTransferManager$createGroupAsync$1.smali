.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createGroupAsync(Lu74;)V
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$createGroupAsync$1"
    f = "WifiTransferManager.kt"
    l = {
        0xc6,
        0xde,
        0xdf,
        0xe4
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

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->$callback:Lu74;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->$callback:Lu74;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;-><init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lu74;

    iget-object v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lu74;

    iget-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object p1, v4

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;->isHotspotEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->$callback:Lu74;

    const/4 p1, 0x0

    invoke-static {p1}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x3f1

    invoke-static {v0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hotspot is opened"

    invoke-interface {p0, p1, v1, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-eqz v8, :cond_6

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v7

    invoke-static {v7}, Lmk0;->a(Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1$2;

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->$callback:Lu74;

    invoke-direct {v1, v2, v5}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1$2;-><init>(Lu74;Lwh1;)V

    iput v6, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_9
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p1

    if-ne p1, v6, :cond_a

    move p1, v4

    goto :goto_2

    :cond_a
    move p1, v6

    :goto_2
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setGroupOperatingBand(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMSsid$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setNetworkName(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMPwd$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setPassphrase(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->build()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    const-string p1, "build(...)"

    invoke-static {v7, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->$callback:Lu74;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v8

    invoke-static {v8}, Lmk0;->a(Z)Ljava/lang/Boolean;

    :cond_b
    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    invoke-static {v8}, Ly45;->g(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->label:I

    invoke-static {p1, v8, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$removeWifiGroupAsync(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_c

    return-object v0

    :cond_c
    :goto_3
    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->label:I

    invoke-static {p1, v4, v7, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$createWifiGroup(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Lwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_d

    return-object v0

    :cond_d
    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    :goto_4
    check-cast p1, Lcom/transsion/vishatransfer/data/WifiModel;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/WifiModel;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v3, v6}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setCreateGroup$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V

    sget-object v3, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {v3}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->checkServerSocket()V

    :cond_e
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v3

    new-instance v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1$3$1;

    invoke-direct {v4, v1, p1, v5}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1$3$1;-><init>(Lu74;Lcom/transsion/vishatransfer/data/WifiModel;Lwh1;)V

    iput-object v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;->label:I

    invoke-static {v3, v4, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_f

    return-object v0

    :cond_f
    :goto_5
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
