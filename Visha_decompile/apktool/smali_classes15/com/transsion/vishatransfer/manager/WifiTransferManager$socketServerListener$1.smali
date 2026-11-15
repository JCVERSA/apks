.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;


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
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J)\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004\u00a8\u0006\u001b"
    }
    d2 = {
        "com/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;",
        "Lzfb;",
        "onCreateSuccess",
        "()V",
        "onCreateFail",
        "onAccept",
        "",
        "code",
        "onError",
        "(I)V",
        "onDisconnected",
        "phase",
        "type",
        "Lcom/transsion/socket/pkgdata/SocketData;",
        "data",
        "onReceived",
        "(IILcom/transsion/socket/pkgdata/SocketData;)V",
        "",
        "position",
        "onProgress",
        "(J)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "onConversationMessage",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "onReceiveFinish",
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

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onAccept$lambda$5(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onReceiveFinish$lambda$17(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onError$lambda$7(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onConversationMessage$lambda$15(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onCreateFail$lambda$3(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onDisconnected$lambda$9(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onCreateSuccess$lambda$1(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onReceived$lambda$11(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->onProgress$lambda$13(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private static final onAccept$lambda$5(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "accept"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onConversationMessage$lambda$15(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;
    .locals 1

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onCreateFail$lambda$3(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "createFail"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onCreateSuccess$lambda$1(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "createSuccess"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onDisconnected$lambda$9(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "disConnected"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onError$lambda$7(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "error"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onProgress$lambda$13(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 10

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x7

    const-string v3, "onTransfer"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMIsStartReceive$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setMIsStartReceive$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;->setState(I)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    :cond_2
    if-eqz v3, :cond_1

    sget-object v2, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalFileSize()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getReceiveFileSize()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getFileNum()I

    move-result v8

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalNum()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onProgress(JJII)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onReceiveFinish$lambda$17(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x6

    const-string v3, "receiveFinish"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onReceived$lambda$11(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 9

    :try_start_0
    const-string v0, "null cannot be cast to non-null type com.transsion.socket.pkgdata.SocketFileData"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/socket/pkgdata/SocketFileData;

    new-instance v8, Lcom/transsion/vishatransfer/data/FileData;

    iget-object v1, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    const-string v0, "mSendFile"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    const-string v0, "mReceiveDir"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketFileData;->isReceiveSuccess()Z

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsion/vishatransfer/data/FileData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    invoke-interface {v0, v8, v1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketServerListener_onAccept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lsmc;

    invoke-direct {v0, p0}, Lsmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 2

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketServerListener_onConversationMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lumc;

    invoke-direct {v0, p0, p1}, Lumc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onCreateFail()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketServerListener_onCreateFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lwmc;

    invoke-direct {v0, p0}, Lwmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onCreateSuccess()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketServerListener_onCreateSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lvmc;

    invoke-direct {v0, p0}, Lvmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketServerListener_onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lpmc;

    invoke-direct {v0, p0}, Lpmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onError(I)V
    .locals 1

    const-string p1, "socket_debug"

    const-string v0, "WifiTransferManager_socketServerListener_onError"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance p1, Lrmc;

    invoke-direct {p1, p0}, Lrmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onProgress(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance p1, Ltmc;

    invoke-direct {p1, p0}, Ltmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onReceiveFinish()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketServerListener_onReceiveFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lqmc;

    invoke-direct {v0, p0}, Lqmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    const-string p1, "socket_debug"

    const-string p2, "WifiTransferManager_socketServerListener_onReceived"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance p1, Lomc;

    invoke-direct {p1, p3, p0}, Lomc;-><init>(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method
