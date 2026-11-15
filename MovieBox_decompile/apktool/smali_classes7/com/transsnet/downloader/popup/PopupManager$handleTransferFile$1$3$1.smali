.class final Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$3$1"
    f = "PopupManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $checkTransferFailed:Z

.field final synthetic $info:Lyw/b;

.field final synthetic $loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/popup/PopupManager;",
            "Lyw/b;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lyw/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$checkTransferFailed:Z

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lyw/b;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$checkTransferFailed:Z

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lyw/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lyw/b;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lyw/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lyw/b;->e()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lyw/b;

    .line 51
    .line 52
    invoke-virtual {v1}, Lyw/b;->e()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 74
    .line 75
    .line 76
    :cond_1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$checkTransferFailed:Z

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/transsnet/downloader/popup/PopupManager;->m(Lcom/transsnet/downloader/popup/PopupManager;Z)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method
