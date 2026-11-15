.class final Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendFileDataToServer(Ljava/util/List;)V
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
    c = "com.transsion.vishatransfer.connection.ConnectClientManager$sendFileDataToServer$1"
    f = "ConnectClientManager.kt"
    l = {
        0x86
    }
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
            "Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->$fileDataList:Ljava/util/List;

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

    new-instance p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;

    iget-object p0, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->$fileDataList:Ljava/util/List;

    invoke-direct {p1, p0, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;-><init>(Ljava/util/List;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v1, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->$fileDataList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/vishatransfer/data/FileData;

    iget v4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v2

    iput v4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/vishatransfer/data/FileData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/transsion/letswitch/service/api/IFileOperation;->getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {v4}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalFileSize()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/transsion/letswitch/service/api/FileInformation;->getLength()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setTotalFileSize(J)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalNum()I

    move-result v3

    iget v4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setTotalNum(I)V

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalFileSize()J

    move-result-wide v3

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1, v3, v4, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$setTotalSize(Lcom/transsion/vishatransfer/connection/ConnectClientManager;JI)V

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;

    iget-object v3, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->$fileDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;-><init>(Ljava/util/List;Lwh1;)V

    iput v2, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
