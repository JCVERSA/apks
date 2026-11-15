.class public final Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfers/manager/TransferNotificationManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Q\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001d\u0010\u001b\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "com/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "Lcom/transsion/vishatransfer/data/FileData;",
        "fileData",
        "",
        "userType",
        "Lzfb;",
        "onFileTranslated",
        "(Lcom/transsion/vishatransfer/data/FileData;I)V",
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "socketState",
        "onTransferState",
        "(Lcom/transsion/vishatransfer/data/ConnectedState;)V",
        "Lcom/transsion/vishatransfer/data/WifiModel;",
        "wifiModel",
        "onError",
        "(Lcom/transsion/vishatransfer/data/WifiModel;)V",
        "",
        "totalSize",
        "transferedSize",
        "fileNum",
        "totalNum",
        "onProgress",
        "(JJII)V",
        "",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "devices",
        "onPeersAvailable",
        "(Ljava/util/List;)V",
        "Landroid/net/NetworkInfo;",
        "networkInfo",
        "onConnectionChanged",
        "(Landroid/net/NetworkInfo;I)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "onConversationMessage",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "vishatransfer_release"
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
.field final synthetic this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnectionChanged: networkInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 3

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {v0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConversationMessage: conversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    sget p1, Lcom/transsion/vishatransfers/R$string;->visha_trans_has_cancel:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->w()V

    :cond_1
    return-void
.end method

.method public onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 2

    const-string v0, "wifiModel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: wifiModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v0, "transfer"

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/WifiModel;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/markpoint/a$a;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
    .locals 3

    const-string v0, "fileData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {v0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileTranslated: fileData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", userType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->i(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->p(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;I)V

    return-void
.end method

.method public onPeersAvailable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeersAvailable: devices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(JJII)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {v0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress: totalSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transferedSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", fileNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->J(JJII)V

    return-void
.end method

.method public onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 11

    const-string v0, "socketState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {v0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferState: socketState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transfer start"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->n(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;J)V

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->k(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getTotalSize(Z)J

    move-result-wide v0

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->k(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getTotalNum(Z)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->q(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;I)V

    const/4 p1, 0x1

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->j(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Lcom/transsion/vishatransfers/service/TransferService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/transsion/vishatransfers/service/TransferService;->b(Ljava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const/16 p1, 0x400

    int-to-long v4, p1

    div-long v4, v0, v4

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->j(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)I

    move-result v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/transsion/dbdata/markpoint/a$a;->t(Lcom/transsion/dbdata/markpoint/a$a;JIJILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;->this$0:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->r(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    :cond_4
    :goto_0
    return-void
.end method
