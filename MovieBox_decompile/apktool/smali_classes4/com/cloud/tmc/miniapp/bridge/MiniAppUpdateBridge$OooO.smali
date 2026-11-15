.class public final Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->forceUpdateAppInfo(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/tmc/integration/net/BaseResponse<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:J

.field public final synthetic OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0Oo:J

    .line 8
    .line 9
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 3
    .line 4
    const-string p1, "it"

    .line 5
    .line 6
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0OO:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0Oo:J

    .line 16
    .line 17
    new-instance v6, Lcom/cloud/tmc/miniapp/bridge/OooO0o;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 20
    .line 21
    invoke-direct {v6, v2, p1}, Lcom/cloud/tmc/miniapp/bridge/OooO0o;-><init>(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 22
    .line 23
    .line 24
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->access$requestAppInfoFailed(Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1
.end method
