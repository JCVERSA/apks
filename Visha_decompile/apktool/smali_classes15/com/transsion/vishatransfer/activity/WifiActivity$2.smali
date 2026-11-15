.class Lcom/transsion/vishatransfer/activity/WifiActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/activity/WifiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/activity/WifiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$2;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 0
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "socket_debug"

    const-string p1, "server onConnectionChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 1
    .param p1    # Lcom/transsion/vishatransfer/data/Conversation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "conversation_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "socket_debug"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 0
    .param p1    # Lcom/transsion/vishatransfer/data/WifiModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "socket_debug"

    const-string p1, "server error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
    .locals 0
    .param p1    # Lcom/transsion/vishatransfer/data/FileData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onPeersAvailable(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$2;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity;->b(Lcom/transsion/vishatransfer/activity/WifiActivity;Ljava/util/List;)V

    return-void
.end method

.method public onProgress(JJII)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "totalSize = "

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " transferedSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fileNum = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "socket_debug"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 0
    .param p1    # Lcom/transsion/vishatransfer/data/ConnectedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
