.class public final Lcom/transsion/vishatransfer/connection/ConnectServerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0004*\u00014\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\r\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\r\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\r\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u0015\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\u0012\"\u0004\u0008\"\u0010#R\"\u0010$\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010 \u001a\u0004\u0008%\u0010\u0012\"\u0004\u0008&\u0010#R\u0016\u0010\'\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010 R\u0018\u0010(\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\"\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010\u000f\"\u0004\u0008-\u0010\u0008R\"\u0010.\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010+\u001a\u0004\u0008/\u0010\u000f\"\u0004\u00080\u0010\u0008R\u0016\u00102\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106\u00a8\u00067"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/connection/ConnectServerManager;",
        "",
        "<init>",
        "()V",
        "",
        "retryTime",
        "Lzfb;",
        "releaseSocketServer",
        "(I)V",
        "checkServerSocket",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;",
        "socketClientListener",
        "setListener",
        "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V",
        "getTransferTotalNum",
        "()I",
        "",
        "getTransferTotalSize",
        "()J",
        "getRecentSpeedPerSecond",
        "getAverageSpeedPerSecond",
        "resetPercent",
        "release",
        "sendSocketEndData",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "sendConversationToClient",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "Lcom/transsion/vishatransfer/socket/TransferSocketServer;",
        "mSocketServer",
        "Lcom/transsion/vishatransfer/socket/TransferSocketServer;",
        "totalFileSize",
        "J",
        "getTotalFileSize",
        "setTotalFileSize",
        "(J)V",
        "receiveFileSize",
        "getReceiveFileSize",
        "setReceiveFileSize",
        "currentFileSize",
        "socketServerListenerCallback",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;",
        "fileNum",
        "I",
        "getFileNum",
        "setFileNum",
        "totalNum",
        "getTotalNum",
        "setTotalNum",
        "",
        "isReceiveFinished",
        "Z",
        "com/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1",
        "socketServerListener",
        "Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;",
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


# static fields
.field public static final INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

.field private static currentFileSize:J

.field private static fileNum:I

.field private static isReceiveFinished:Z

.field private static mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

.field private static receiveFileSize:J

.field private static final socketServerListener:Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;

.field private static socketServerListenerCallback:Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

.field private static totalFileSize:J

.field private static totalNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-direct {v0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;-><init>()V

    sput-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    new-instance v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;

    invoke-direct {v0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;-><init>()V

    sput-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->socketServerListener:Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentFileSize$p()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->currentFileSize:J

    return-wide v0
.end method

.method public static final synthetic access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;
    .locals 1

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->socketServerListenerCallback:Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    return-object v0
.end method

.method public static final synthetic access$isReceiveFinished$p()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->isReceiveFinished:Z

    return v0
.end method

.method public static final synthetic access$setCurrentFileSize$p(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->currentFileSize:J

    return-void
.end method

.method public static final synthetic access$setReceiveFinished$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->isReceiveFinished:Z

    return-void
.end method

.method private final releaseSocketServer(I)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->release()V

    int-to-long p0, p1

    const-wide/16 v0, 0x1f4

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final checkServerSocket()V
    .locals 5

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/socket/SocketServer;->isQuit()Z

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_4

    const/16 v0, 0x3072

    invoke-static {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->getInstance(I)Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->resetCurrentTransferType()V

    :cond_1
    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->socketServerListener:Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;

    invoke-virtual {v0, v4}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->setSocketServerListener(Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;)V

    :cond_2
    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/socket/SocketServer;->openSocket()Z

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->releaseSocketServer(I)V

    move v0, v3

    goto :goto_0

    :cond_4
    :goto_1
    sput-boolean v1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->isReceiveFinished:Z

    return-void
.end method

.method public final getAverageSpeedPerSecond()J
    .locals 2

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->getAverageSpeedPerSecond()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getFileNum()I
    .locals 0

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->fileNum:I

    return p0
.end method

.method public final getReceiveFileSize()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->receiveFileSize:J

    return-wide v0
.end method

.method public final getRecentSpeedPerSecond()J
    .locals 2

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->getRecentSpeedPerSecond()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getTotalFileSize()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalFileSize:J

    return-wide v0
.end method

.method public final getTotalNum()I
    .locals 0

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalNum:I

    return p0
.end method

.method public final getTransferTotalNum()I
    .locals 0

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalNum:I

    return p0
.end method

.method public final getTransferTotalSize()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalFileSize:J

    return-wide v0
.end method

.method public final release()V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final resetPercent()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalFileSize:J

    sput-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->receiveFileSize:J

    sput-wide v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->currentFileSize:J

    const/4 p0, 0x0

    sput p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->fileNum:I

    sput p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalNum:I

    return-void
.end method

.method public final sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 2

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager$sendConversationToClient$message$1;

    invoke-direct {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager$sendConversationToClient$message$1;-><init>()V

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketStringData;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/socket/pkgdata/SocketStringData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setData(Lcom/transsion/socket/pkgdata/SocketData;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setType(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setPhase(I)V

    :try_start_0
    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final sendSocketEndData()V
    .locals 1

    new-instance p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager$sendSocketEndData$message$1;

    invoke-direct {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager$sendSocketEndData$message$1;-><init>()V

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketEndData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketEndData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setData(Lcom/transsion/socket/pkgdata/SocketData;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setType(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setPhase(I)V

    :try_start_0
    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->mSocketServer:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setFileNum(I)V
    .locals 0

    sput p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->fileNum:I

    return-void
.end method

.method public final setListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V
    .locals 0

    sput-object p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->socketServerListenerCallback:Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    return-void
.end method

.method public final setReceiveFileSize(J)V
    .locals 0

    sput-wide p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->receiveFileSize:J

    return-void
.end method

.method public final setTotalFileSize(J)V
    .locals 0

    sput-wide p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalFileSize:J

    return-void
.end method

.method public final setTotalNum(I)V
    .locals 0

    sput p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->totalNum:I

    return-void
.end method
