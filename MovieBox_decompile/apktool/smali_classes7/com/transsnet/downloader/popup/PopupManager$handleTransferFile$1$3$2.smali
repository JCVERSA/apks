.class final Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;
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
    c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$3$2"
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


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lyw/b;",
            "Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$info:Lyw/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$checkTransferFailed:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$info:Lyw/b;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$checkTransferFailed:Z

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;-><init>(Lkotlin/jvm/functions/Function2;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$info:Lyw/b;

    .line 21
    .line 22
    invoke-virtual {v1}, Lyw/b;->e()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 47
    .line 48
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-boolean v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;->$checkTransferFailed:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    sget v1, Lcom/transsnet/downloader/R$string;->download_move_failed:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget v1, Lcom/transsnet/downloader/R$string;->download_save_failed:I

    .line 60
    .line 61
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method
