.class public final Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/TabBarBridge;->showTabBarUnreadIcon(Lcom/cloud/tmc/integration/structure/App;ILjava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "errMsg"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "ok"

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string v1, "set tab item failed,please check the config: T10003"

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1
.end method
