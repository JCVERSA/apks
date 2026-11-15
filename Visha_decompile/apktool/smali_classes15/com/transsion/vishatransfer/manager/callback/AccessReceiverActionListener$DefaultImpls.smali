.class public final Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onConnectionChanged(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Landroid/net/NetworkInfo;I)V
    .locals 0

    return-void
.end method

.method public static onConversationMessage(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onError(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 0

    const-string p0, "wifiModel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onFileTranslated(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/FileData;I)V
    .locals 0

    const-string p0, "fileData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onPeersAvailable(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
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

.method public static onProgress(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;JJII)V
    .locals 0

    return-void
.end method

.method public static onTransferState(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 0

    const-string p0, "socketState"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
