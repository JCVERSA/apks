.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->disconnectAsync(Lu74;)V
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$disconnectAsync$1"
    f = "WifiTransferManager.kt"
    l = {
        0x1bb,
        0x1bc
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

.field label:I

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Lu74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->$callback:Lu74;

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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->$callback:Lu74;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

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
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lu74;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setCreateGroup$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->$callback:Lu74;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->label:I

    invoke-static {p1, v5, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$disconnect(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/transsion/vishatransfer/data/WifiModel;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v3

    new-instance v5, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1$1$1;

    invoke-direct {v5, v1, p1, v4}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1$1$1;-><init>(Lu74;Lcom/transsion/vishatransfer/data/WifiModel;Lwh1;)V

    iput-object v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;->label:I

    invoke-static {v3, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
