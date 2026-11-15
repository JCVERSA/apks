.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;


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
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J)\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004\u00a8\u0006\u0019"
    }
    d2 = {
        "com/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;",
        "Lzfb;",
        "onCreateSuccess",
        "()V",
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

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onDisconnected$lambda$5(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onProgress$lambda$9(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onCreateSuccess$lambda$1(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onReceived$lambda$7(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onError$lambda$3(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onConversationMessage$lambda$11(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->onReceiveFinish$lambda$13(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private static final onConversationMessage$lambda$11(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;
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

.method private static final onDisconnected$lambda$5(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
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

.method private static final onError$lambda$3(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
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

.method private static final onProgress$lambda$9(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
    .locals 10

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getMUserType()I

    move-result v1

    const/4 v2, 0x7

    const-string v3, "onTransfer"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMIsStartSend$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setMIsStartSend$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V

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

    sget-object v2, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalFileSize()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getSendFileSize()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getFileNum()I

    move-result v8

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalNum()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onProgress(JJII)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onReceiveFinish$lambda$13(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
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

.method private static final onReceived$lambda$7(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;
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
.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 2

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketClientListener_onConversationMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lnmc;

    invoke-direct {v0, p0, p1}, Lnmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onCreateSuccess()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketClientListener_onCreateSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lkmc;

    invoke-direct {v0, p0}, Lkmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketClientListener_onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Lmmc;

    invoke-direct {v0, p0}, Lmmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiTransferManager_socketClientListener_onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "socket_debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance p1, Limc;

    invoke-direct {p1, p0}, Limc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onProgress(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance p1, Lhmc;

    invoke-direct {p1, p0}, Lhmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onReceiveFinish()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_socketClientListener_onReceiveFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v0, Ljmc;

    invoke-direct {v0, p0}, Ljmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method

.method public onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    const-string p1, "socket_debug"

    const-string p2, "WifiTransferManager_socketClientListener_onReceived"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance p1, Llmc;

    invoke-direct {p1, p3, p0}, Llmc;-><init>(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V

    return-void
.end method
