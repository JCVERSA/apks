.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lhk1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/transsion/vishatransfer/manager/WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/a;",
        "Lhk1;",
        "Lkotlin/coroutines/d;",
        "context",
        "",
        "exception",
        "Lzfb;",
        "handleException",
        "(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lhk1$b;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/d$c;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getTAG$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Coroutine Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
