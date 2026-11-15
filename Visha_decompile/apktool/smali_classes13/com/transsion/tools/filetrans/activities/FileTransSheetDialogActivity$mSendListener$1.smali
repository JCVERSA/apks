.class public final Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001c\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1",
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
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "devices",
        "onPeersAvailable",
        "(Ljava/util/List;)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "onConversationMessage",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "Landroid/net/NetworkInfo;",
        "networkInfo",
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

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->onConversationMessage$lambda$2(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method private static final onConversationMessage$lambda$2(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 14

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->J0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->D0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v6, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    invoke-virtual {v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->getSize()J

    move-result-wide v2

    add-long/2addr v6, v2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->D0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-instance p0, Lcom/transsion/vishatransfer/data/Conversation;

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x28

    const/4 v13, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 6

    iget-object p2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] send: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", onConnectionChanged: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_1
    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object v2, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->B0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)J

    move-result-wide v3

    const/16 v5, 0x3ef

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :cond_4
    sget-object p1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, p1, :cond_5

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    invoke-static {p0, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->L0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Z)V

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 7

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onConversationMessage(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/Conversation;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

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

    const-string v6, "[TEST] send: "

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

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    new-instance p1, Lfu3;

    invoke-direct {p1, p0}, Lfu3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->z1()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    sget p1, Lcom/transsion/tools/R$string;->visha_share_be_refuse:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->B0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)J

    move-result-wide v0

    const/16 p0, 0x3ee

    invoke-virtual {p1, v3, v0, v1, p0}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 9

    const-string v0, "wifiModel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST] send, onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v6, 0x1

    invoke-static {v0, v6, v4, v3, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v6, 0x5

    invoke-static {v0, v6, v4, v3, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object v6, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v6}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->B0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/WifiModel;->getErrorCode()I

    move-result v8

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    if-eq p0, v3, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "connect"

    goto :goto_2

    :cond_4
    const-string v2, "scan"

    :goto_2
    if-eqz v2, :cond_5

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/WifiModel;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/transsion/dbdata/markpoint/a$a;->g(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
    .locals 1

    const-string v0, "fileData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onFileTranslated(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/FileData;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[TEST] send, onFileTranslated: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileTransSheetDialogActivity"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

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

    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p0, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onProgress(JJII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onProgress(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;JJII)V

    return-void
.end method

.method public onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "socketState"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onTransferState(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TEST] send, onTransferState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " socketState.message: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FileTransSheetDialogActivity"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v1

    if-ne v1, v5, :cond_5

    :cond_1
    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v3, 0x5

    invoke-static {v1, v3, v7, v6, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object v0, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->B0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)J

    move-result-wide v2

    const/16 v0, 0x3ea

    invoke-virtual {v1, v7, v2, v3, v0}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0, v7, v7, v6, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v1

    if-eq v1, v5, :cond_4

    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I

    move-result v1

    if-ne v1, v4, :cond_5

    :cond_4
    const-string v1, "[TEST] send CLIENT_ASK, onTransferState: SOCKET_STATE_READY"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->J0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object v1

    new-instance v3, Lcom/transsion/vishatransfer/data/Conversation;

    new-instance v15, Lcom/transsion/vishatransfer/data/DeviceInfo;

    iget-object v5, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v5}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->I0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/transsion/vishatransfer/data/DeviceInfo;-><init>(Ljava/lang/String;)V

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v17}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V

    iget-object v0, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->this$0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0, v4, v7, v6, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method
