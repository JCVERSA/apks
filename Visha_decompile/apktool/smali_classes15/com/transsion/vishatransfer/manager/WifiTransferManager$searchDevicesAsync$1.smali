.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->searchDevicesAsync(Lu74;)V
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$searchDevicesAsync$1"
    f = "WifiTransferManager.kt"
    l = {
        0x166,
        0x16d,
        0x16e,
        0x171,
        0x172
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
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->$callback:Lu74;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->$callback:Lu74;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;-><init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v4, v1

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lu74;

    iget-object v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;->isHotspotEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->$callback:Lu74;

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

    :cond_6
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1$1;

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->$callback:Lu74;

    invoke-direct {v1, v2, v7}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1$1;-><init>(Lu74;Lwh1;)V

    iput v6, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_8
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->$callback:Lu74;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->label:I

    invoke-static {p1, v6, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$searchWifiGroupAsync(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_9

    return-object v0

    :cond_9
    move-object v9, v5

    move-object v5, p1

    move-object p1, v9

    :goto_1
    check-cast p1, Lcom/transsion/vishatransfer/data/WifiModel;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v6

    new-instance v8, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1$2$1;

    invoke-direct {v8, v1, p1, v7}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1$2$1;-><init>(Lu74;Lcom/transsion/vishatransfer/data/WifiModel;Lwh1;)V

    iput-object v5, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->label:I

    invoke-static {v6, v8, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v4, v5

    :goto_2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->label:I

    invoke-static {v4, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$requestPeers(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    move-object v3, v1

    :goto_3
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1$2$2;

    invoke-direct {v1, v3, v4, v7}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    iput-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    return-object v0

    :cond_c
    :goto_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
