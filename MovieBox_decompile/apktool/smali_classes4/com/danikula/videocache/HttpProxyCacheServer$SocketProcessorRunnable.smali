.class final Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SocketProcessorRunnable"
.end annotation


# instance fields
.field private final request:Lcom/danikula/videocache/d;

.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/danikula/videocache/HttpProxyCacheServer;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;Lcom/danikula/videocache/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->this$0:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->socket:Ljava/net/Socket;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->request:Lcom/danikula/videocache/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->this$0:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->socket:Ljava/net/Socket;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->request:Lcom/danikula/videocache/d;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->a(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;Lcom/danikula/videocache/d;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
