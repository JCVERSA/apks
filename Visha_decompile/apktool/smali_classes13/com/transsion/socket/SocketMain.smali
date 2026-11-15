.class public Lcom/transsion/socket/SocketMain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/SocketMain$SocketDataCreator;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = true

.field public static DEBUG_DATA_TRANSFER:Z = true

.field public static final DEBUG_HEART:Z = false

.field public static DEBUG_SEND_DATA:Z = true

.field public static DEBUG_SOCKET_CONNECT:Z = true

.field public static DEBUG_SOCKET_HEARTBEAT:Z = true

.field public static DEBUG_SOCKET_PRINT_TRACE:Z = true

.field public static DEBUG_SOCKET_STREAM:Z = true

.field public static DEBUG_TRANSFER_SPEED:Z = false

.field public static final MAIN_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

.field public static PACKAGE_MAX_BLOCK_SIZE:I = 0x32000

.field public static final SOCKET_HELP_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

.field private static final SOCKET_VERSION:I = 0xa

.field static sApplication:Landroid/app/Application;

.field static sMainHandler:Landroid/os/Handler;

.field static sSocketDataCreator:Lcom/transsion/socket/SocketMain$SocketDataCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/socket/SocketMain;->sMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/socket/internal/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/socket/internal/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/socket/SocketMain;->MAIN_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

    new-instance v0, Lcom/transsion/socket/internal/LooperExecutor;

    const-string v1, "socket-help"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/transsion/socket/SocketMain;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/socket/internal/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/socket/SocketMain;->SOCKET_HELP_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/transsion/socket/SocketMain;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static getSocketDataCreator()Lcom/transsion/socket/SocketMain$SocketDataCreator;
    .locals 1

    sget-object v0, Lcom/transsion/socket/SocketMain;->sSocketDataCreator:Lcom/transsion/socket/SocketMain$SocketDataCreator;

    return-object v0
.end method

.method public static getSocketVersion()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public static init(Landroid/app/Application;Lcom/transsion/socket/SocketMain$SocketDataCreator;)V
    .locals 0

    sput-object p0, Lcom/transsion/socket/SocketMain;->sApplication:Landroid/app/Application;

    sput-object p1, Lcom/transsion/socket/SocketMain;->sSocketDataCreator:Lcom/transsion/socket/SocketMain$SocketDataCreator;

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_SEND_DATA:Z

    sput-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    sput-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    sput-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_TRANSFER_SPEED:Z

    return-void
.end method
