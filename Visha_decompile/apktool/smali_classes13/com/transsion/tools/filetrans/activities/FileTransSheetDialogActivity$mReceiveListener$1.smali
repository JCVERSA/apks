.class public final Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "socketState",
        "Lzfb;",
        "onTransferState",
        "(Lcom/transsion/vishatransfer/data/ConnectedState;)V",
        "Lcom/transsion/vishatransfer/data/WifiModel;",
        "wifiModel",
        "onError",
        "(Lcom/transsion/vishatransfer/data/WifiModel;)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "onConversationMessage",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "Landroid/net/NetworkInfo;",
        "networkInfo",
        "",
        "userType",
        "onConnectionChanged",
        "(Landroid/net/NetworkInfo;I)V",
        "tools_release"
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
.field final synthetic this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->onConversationMessage$lambda$2(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->onConversationMessage$lambda$1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method private static final onConversationMessage$lambda$1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method private static final onConversationMessage$lambda$2(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getTotalFileSize()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->A0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;D)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Z

    move-result p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[TEST] receive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", onConnectionChanged: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileTransSheetDialogActivity"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 7

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onConversationMessage(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/Conversation;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getFileNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getTotalFileSize()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TEST] receive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onConversationMessage type: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " num: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getDeviceInfo()Lcom/transsion/vishatransfer/data/DeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->F1(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    new-instance p1, Ldu3;

    invoke-direct {p1, p0}, Ldu3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    new-instance v0, Leu3;

    invoke-direct {v0, p0, p1}, Leu3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/vishatransfer/data/Conversation;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 1

    const-string p0, "wifiModel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[TEST] receive, onError: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileTransSheetDialogActivity"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v0, "scan"

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/WifiModel;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/markpoint/a$a;->g(Ljava/lang/String;I)V

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

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onPeersAvailable(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Ljava/util/List;)V

    return-void
.end method

.method public onProgress(JJII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onProgress(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;JJII)V

    return-void
.end method

.method public onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 3

    const-string v0, "socketState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onTransferState(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] receive, onTransferState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->C0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->C0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->K0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/widgetslib/dialog/d;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->H0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->H0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->M0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/widgetslib/dialog/d;)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
