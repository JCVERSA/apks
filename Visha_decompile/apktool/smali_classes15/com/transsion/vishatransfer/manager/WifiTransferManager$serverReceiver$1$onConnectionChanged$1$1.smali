.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsion.vishatransfer.manager.WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1"
    f = "WifiTransferManager.kt"
    l = {}
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
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->$networkInfo:Landroid/net/NetworkInfo;

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

    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->$networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/NetworkInfo;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1$1;->$networkInfo:Landroid/net/NetworkInfo;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onConnectionChanged(Landroid/net/NetworkInfo;I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
