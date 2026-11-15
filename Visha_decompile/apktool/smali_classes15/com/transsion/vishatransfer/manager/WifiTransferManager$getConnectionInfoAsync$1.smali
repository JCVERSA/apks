.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getConnectionInfoAsync(Lw74;)V
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$getConnectionInfoAsync$1"
    f = "WifiTransferManager.kt"
    l = {
        0x3f4,
        0x3f9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lw74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw74;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lw74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Lw74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->$callback:Lw74;

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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->$callback:Lw74;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lw74;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

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

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1$1;

    iget-object v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->$callback:Lw74;

    invoke-direct {v1, v3, v2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1$1;-><init>(Lw74;Lwh1;)V

    iput v4, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_4
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->label:I

    invoke-static {v1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getConnectionInfoInner(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    :goto_1
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->$callback:Lw74;

    invoke-static {v4}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v0, v2, v1}, Lw74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;->$callback:Lw74;

    invoke-static {v1}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x3f0

    invoke-static {v0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "get Connected Info Error"

    invoke-interface {p0, v2, p1, v1, v0}, Lw74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
