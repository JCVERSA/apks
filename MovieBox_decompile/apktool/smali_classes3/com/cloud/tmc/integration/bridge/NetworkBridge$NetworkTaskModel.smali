.class public Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/NetworkBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkTaskModel"
.end annotation


# instance fields
.field public appNodeId:J

.field public callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public pageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    iput-wide v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->appNodeId:J

    .line 22
    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 31
    .line 32
    return-void
.end method
