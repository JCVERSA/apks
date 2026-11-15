.class public Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.mq.mgmi.client.message.internal.websocket.WebSocketReceiver"


# instance fields
.field private input:Ljava/io/InputStream;

.field private final lifecycle:Ljava/lang/Object;

.field private log:Lg6d;

.field private pipedOutputStream:Ljava/io/PipedOutputStream;

.field private receiverThread:Ljava/lang/Thread;

.field private volatile receiving:Z

.field private running:Z

.field private stopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object v1, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->running:Z

    iput-boolean v0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->stopping:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->lifecycle:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->receiverThread:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->input:Ljava/io/InputStream;

    new-instance p1, Ljava/io/PipedOutputStream;

    invoke-direct {p1}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->pipedOutputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    return-void
.end method

.method private closeOutputStream()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->pipedOutputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {p0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public isReceiving()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->receiving:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->running:Z

    return p0
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->running:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->input:Ljava/io/InputStream;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->stopping:Z

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/websocket/WebSocketReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
