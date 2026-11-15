.class public final Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->showScopePermissionDialog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic OooO0O0:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;->OooO0O0:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onClick postion = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PermissionScopeBridge::"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 24
    .line 25
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v2, "click"

    .line 34
    .line 35
    invoke-virtual {v1, v2, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;->OooO0O0:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 40
    .line 41
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "isClickNotShowAgain"

    .line 48
    .line 49
    invoke-virtual {p1, v2, v1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public clickNotShowAgagin(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "clickNotShowAgagin status = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PermissionScopeBridge::"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;->OooO0O0:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 24
    .line 25
    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 26
    .line 27
    return-void
.end method
