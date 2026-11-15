.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->removeWifiGroupAsync(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "Lzfb;",
        "onSuccess",
        "()V",
        "",
        "reason",
        "onFailure",
        "(I)V",
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
.field final synthetic $continuation:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field

.field final synthetic $wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/data/WifiModel;Lcr0;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            "Lcr0;",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$continuation:Lcr0;

    iput-object p3, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishatransfer/data/WifiModel;->setSuccess(Z)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v1, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getSystemErrorCode(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove group, error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$continuation:Lcr0;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/vishatransfer/data/WifiModel;->setSuccess(Z)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$continuation:Lcr0;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;->$wifiModel:Lcom/transsion/vishatransfer/data/WifiModel;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
