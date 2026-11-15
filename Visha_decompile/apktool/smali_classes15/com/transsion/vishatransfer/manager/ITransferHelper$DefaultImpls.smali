.class public final Lcom/transsion/vishatransfer/manager/ITransferHelper$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/manager/ITransferHelper;
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
.method public static cancelTransfer(Lcom/transsion/vishatransfer/manager/ITransferHelper;I)V
    .locals 0

    return-void
.end method

.method public static connectAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string p0, "device"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static createGroupAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lu74;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static createGroupAsyncWithRetry(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lu74;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static disconnectAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lu74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getAverageSpeedPerSecond(Lcom/transsion/vishatransfer/manager/ITransferHelper;Z)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getConnectState(Lcom/transsion/vishatransfer/manager/ITransferHelper;)Lcom/transsion/vishatransfer/data/ConnectedState;
    .locals 2

    new-instance p0, Lcom/transsion/vishatransfer/data/ConnectedState;

    const/4 v0, -0x1

    const-string v1, "default"

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method public static getConnectionInfoAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lw74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Lw74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getRecentSpeedPerSecond(Lcom/transsion/vishatransfer/manager/ITransferHelper;Z)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getTotalNum(Lcom/transsion/vishatransfer/manager/ITransferHelper;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getTotalSize(Lcom/transsion/vishatransfer/manager/ITransferHelper;Z)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static registerListener(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static release(Lcom/transsion/vishatransfer/manager/ITransferHelper;I)V
    .locals 0

    return-void
.end method

.method public static removeGroupAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lu74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static searchDevicesAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lu74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendConversationToClient(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendConversationToService(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendFileDataToServerAsync(Lcom/transsion/vishatransfer/manager/ITransferHelper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/data/FileData;",
            ">;)V"
        }
    .end annotation

    const-string p0, "fileDataList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static unRegisterServerReceiver(Lcom/transsion/vishatransfer/manager/ITransferHelper;)V
    .locals 0

    return-void
.end method

.method public static unregisterCallback(Lcom/transsion/vishatransfer/manager/ITransferHelper;Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V
    .locals 0

    const-string p0, "accessReceiverActionListener"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterP2pConnectReceiver(Lcom/transsion/vishatransfer/manager/ITransferHelper;)V
    .locals 0

    return-void
.end method
