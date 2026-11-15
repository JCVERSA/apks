.class public Lcom/cloud/tmc/integration/defaultImpl/DefaultBridgeFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
