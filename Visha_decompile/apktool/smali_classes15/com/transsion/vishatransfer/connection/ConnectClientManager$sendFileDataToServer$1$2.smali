.class final Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.vishatransfer.connection.ConnectClientManager$sendFileDataToServer$1$2"
    f = "ConnectClientManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/data/FileData;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/data/FileData;",
            ">;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->$fileDataList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;

    iget-object p0, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->$fileDataList:Ljava/util/List;

    invoke-direct {p1, p0, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;-><init>(Ljava/util/List;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->$fileDataList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishatransfer/data/FileData;

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketFileData;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/FileData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileData;->setSendFile(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/FileData;->isCover()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/socket/pkgdata/SocketFileData;->setCoverOldFile(Z)Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/FileData;->getReceivePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/socket/pkgdata/SocketFileData;->setReceiveFile(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketFileData;

    new-instance p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2$1$fileMessage$1;

    invoke-direct {p1, v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2$1$fileMessage$1;-><init>(Lcom/transsion/socket/pkgdata/SocketFileData;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setData(Lcom/transsion/socket/pkgdata/SocketData;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setType(I)V

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setPhase(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setIsListenProgress(Z)V

    :try_start_0
    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClient$p()Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
