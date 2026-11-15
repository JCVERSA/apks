.class public final Lcom/cloud/tmc/miniapp/bridge/OooO0o;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0o;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0o;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    const-string v1, "miniAppHasUpdateRequesting"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 10
    .line 11
    const-string v1, "errMsg"

    .line 12
    .line 13
    const-string v2, "AppInfo request failed, please try again later: MAU10004"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object v0
.end method
