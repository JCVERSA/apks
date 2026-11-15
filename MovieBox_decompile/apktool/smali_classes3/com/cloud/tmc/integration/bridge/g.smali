.class public final synthetic Lcom/cloud/tmc/integration/bridge/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

.field public final synthetic b:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic c:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/g;->a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/g;->b:Lcom/cloud/tmc/integration/structure/App;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/g;->c:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/g;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/g;->a:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/g;->b:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/g;->c:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/g;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->a(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
