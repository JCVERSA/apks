.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;


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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000c\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "devices",
        "Lzfb;",
        "onPeersAvailable",
        "(Ljava/util/List;)V",
        "Landroid/net/NetworkInfo;",
        "networkInfo",
        "",
        "userType",
        "onConnectionChanged",
        "(Landroid/net/NetworkInfo;I)V",
        "vishatransferlib_release"
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
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 6

    const-string p2, "socket_debug"

    const-string v0, "WifiTransferManager_serverReceiver_onConnectionChanged"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getCoroutineScope$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lnk1;

    move-result-object v0

    new-instance v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1$onConnectionChanged$1;-><init>(Landroid/net/NetworkInfo;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onConversationMessage(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method

.method public onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onError(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/WifiModel;)V

    return-void
.end method

.method public onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onFileTranslated(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/FileData;I)V

    return-void
.end method

.method public onPeersAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    const-string p0, "devices"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JJII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onProgress(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;JJII)V

    return-void
.end method

.method public onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onTransferState(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    return-void
.end method
