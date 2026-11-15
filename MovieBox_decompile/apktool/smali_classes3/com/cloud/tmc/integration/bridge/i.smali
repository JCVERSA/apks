.class public final synthetic Lcom/cloud/tmc/integration/bridge/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/i;->a:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/i;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/i;->c:Ljava/lang/Long;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/i;->d:Lcom/cloud/tmc/integration/structure/App;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/i;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/i;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/i;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/i;->h:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/cloud/tmc/integration/bridge/i;->i:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/i;->a:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/i;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/i;->c:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/i;->d:Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/i;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/i;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/integration/bridge/i;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/i;->h:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/cloud/tmc/integration/bridge/i;->i:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
