.class public final Lcom/transsion/vishatransfer/connection/ConnectClientManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J7\u0010\u0015\u001a\u00020\u00082(\u0010\u0014\u001a$\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00080\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u0015\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001b\u0010\u001f\u001a\u00020\u00082\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u0008\u00a2\u0006\u0004\u0008!\u0010\u0003J\r\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\"\u0010#J\r\u0010$\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020\u0004\u00a2\u0006\u0004\u0008&\u0010%J\r\u0010\'\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\'\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\"\u0010+\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010%\"\u0004\u0008.\u0010/R\"\u00100\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010,\u001a\u0004\u00081\u0010%\"\u0004\u00082\u0010/R\u0016\u00103\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010,R\u0018\u00104\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u00106\u001a\u0004\u00087\u0010#\"\u0004\u00088\u00109R\"\u0010:\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00106\u001a\u0004\u0008;\u0010#\"\u0004\u0008<\u00109R\u0014\u0010=\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008=\u00106R\u0014\u0010>\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010D\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010G\u001a\u00020F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010H\u00a8\u0006I"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/connection/ConnectClientManager;",
        "",
        "<init>",
        "()V",
        "",
        "fileSize",
        "",
        "fileNum",
        "Lzfb;",
        "setTotalSize",
        "(JI)V",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;",
        "socketClientListener",
        "setListener",
        "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V",
        "",
        "ipAddress",
        "startSocketClient",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function4;",
        "callback",
        "getTransferInfo",
        "(Lw74;)V",
        "resetPercent",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "sendConversationToServer",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "",
        "Lcom/transsion/vishatransfer/data/FileData;",
        "fileDataList",
        "sendFileDataToServer",
        "(Ljava/util/List;)V",
        "release",
        "getTransferTotalNum",
        "()I",
        "getTransferTotalSize",
        "()J",
        "getRecentSpeedPerSecond",
        "getAverageSpeedPerSecond",
        "Lcom/transsion/vishatransfer/socket/TransferSocketClient;",
        "socketClient",
        "Lcom/transsion/vishatransfer/socket/TransferSocketClient;",
        "totalFileSize",
        "J",
        "getTotalFileSize",
        "setTotalFileSize",
        "(J)V",
        "sendFileSize",
        "getSendFileSize",
        "setSendFileSize",
        "currentFileSize",
        "socketClientListenerCallback",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;",
        "I",
        "getFileNum",
        "setFileNum",
        "(I)V",
        "totalNum",
        "getTotalNum",
        "setTotalNum",
        "CONVERSATION_FOR_TRANSFER_FILE_INFO",
        "TAG",
        "Ljava/lang/String;",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lhk1;",
        "Lnk1;",
        "coroutineScope",
        "Lnk1;",
        "",
        "isReceiveFinished",
        "Z",
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
.field public static final CONVERSATION_FOR_TRANSFER_FILE_INFO:I = 0x186ac

.field public static final INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

.field private static final TAG:Ljava/lang/String;

.field private static final coroutineExceptionHandler:Lhk1;

.field private static final coroutineScope:Lnk1;

.field private static currentFileSize:J

.field private static fileNum:I

.field private static isReceiveFinished:Z

.field private static sendFileSize:J

.field private static socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

.field private static socketClientListenerCallback:Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

.field private static totalFileSize:J

.field private static totalNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-direct {v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;-><init>()V

    sput-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    const-string v0, "ConnectClientManager"

    sput-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->TAG:Ljava/lang/String;

    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/vishatransfer/connection/ConnectClientManager$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lhk1$b;)V

    sput-object v1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->coroutineExceptionHandler:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->coroutineScope:Lnk1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentFileSize$p()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->currentFileSize:J

    return-wide v0
.end method

.method public static final synthetic access$getSocketClient$p()Lcom/transsion/vishatransfer/socket/TransferSocketClient;
    .locals 1

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    return-object v0
.end method

.method public static final synthetic access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;
    .locals 1

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClientListenerCallback:Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isReceiveFinished$p()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->isReceiveFinished:Z

    return v0
.end method

.method public static final synthetic access$setCurrentFileSize$p(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->currentFileSize:J

    return-void
.end method

.method public static final synthetic access$setReceiveFinished$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->isReceiveFinished:Z

    return-void
.end method

.method public static final synthetic access$setTotalSize(Lcom/transsion/vishatransfer/connection/ConnectClientManager;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setTotalSize(JI)V

    return-void
.end method

.method private final setTotalSize(JI)V
    .locals 11

    new-instance p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$setTotalSize$message$1;

    invoke-direct {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$setTotalSize$message$1;-><init>()V

    new-instance v10, Lcom/transsion/vishatransfer/data/Conversation;

    sget v6, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalNum:I

    const/16 v8, 0x24

    const/4 v9, 0x0

    const v1, 0x186ac

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/transsion/socket/pkgdata/SocketStringData;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/socket/pkgdata/SocketStringData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setData(Lcom/transsion/socket/pkgdata/SocketData;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setType(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->setPhase(I)V

    :try_start_0
    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
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


# virtual methods
.method public final getAverageSpeedPerSecond()J
    .locals 2

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->getAverageSpeedPerSecond()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getFileNum()I
    .locals 0

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->fileNum:I

    return p0
.end method

.method public final getRecentSpeedPerSecond()J
    .locals 2

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->getRecentSpeedPerSecond()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getSendFileSize()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendFileSize:J

    return-wide v0
.end method

.method public final getTotalFileSize()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalFileSize:J

    return-wide v0
.end method

.method public final getTotalNum()I
    .locals 0

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalNum:I

    return p0
.end method

.method public final getTransferInfo(Lw74;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw74;",
            ")V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->getRecentSpeedPerSecond()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->getAverageSpeedPerSecond()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_1
    invoke-interface {p1, p0, v0, v1, v2}, Lw74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final getTransferTotalNum()I
    .locals 0

    sget p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalNum:I

    return p0
.end method

.method public final getTransferTotalSize()J
    .locals 2

    sget-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalFileSize:J

    return-wide v0
.end method

.method public final release()V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final resetPercent()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalFileSize:J

    sput-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendFileSize:J

    sput-wide v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->currentFileSize:J

    const/4 p0, 0x0

    sput p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->fileNum:I

    sput p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalNum:I

    return-void
.end method

.method public final sendConversationToServer(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 2

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendConversationToServer$message$1;

    invoke-direct {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendConversationToServer$message$1;-><init>()V

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
    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
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

.method public final sendFileDataToServer(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/data/FileData;",
            ">;)V"
        }
    .end annotation

    const-string p0, "fileDataList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->coroutineScope:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1;-><init>(Ljava/util/List;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final setFileNum(I)V
    .locals 0

    sput p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->fileNum:I

    return-void
.end method

.method public final setListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V
    .locals 0

    sput-object p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClientListenerCallback:Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    return-void
.end method

.method public final setSendFileSize(J)V
    .locals 0

    sput-wide p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendFileSize:J

    return-void
.end method

.method public final setTotalFileSize(J)V
    .locals 0

    sput-wide p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalFileSize:J

    return-void
.end method

.method public final setTotalNum(I)V
    .locals 0

    sput p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->totalNum:I

    return-void
.end method

.method public final startSocketClient(Ljava/lang/String;)V
    .locals 1

    const-string p0, "ipAddress"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->getInstance()Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    move-result-object p0

    sput-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->resetCurrentTransferType()V

    :cond_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_1

    new-instance v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$startSocketClient$1;

    invoke-direct {v0, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager$startSocketClient$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->setSocketClientListener(Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;)V

    :cond_1
    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->isReceiveFinished:Z

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->socketClient:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->openSocket(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
