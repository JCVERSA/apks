.class public final Lcom/cloud/tmc/integration/model/PermissionDialogModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001c\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001e\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/PermissionDialogModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "page",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "appId",
        "",
        "action",
        "bridgeContext",
        "Lcom/cloud/tmc/kernel/bridge/NativeCallContext;",
        "responseHelper",
        "Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;",
        "model",
        "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "startToken",
        "",
        "(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;J)V",
        "getAction",
        "()Ljava/lang/String;",
        "setAction",
        "(Ljava/lang/String;)V",
        "getAppId",
        "setAppId",
        "getBridgeContext",
        "()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;",
        "setBridgeContext",
        "(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;)V",
        "getModel",
        "()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "setModel",
        "(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V",
        "getPage",
        "()Lcom/cloud/tmc/integration/structure/Page;",
        "setPage",
        "(Lcom/cloud/tmc/integration/structure/Page;)V",
        "getResponseHelper",
        "()Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;",
        "setResponseHelper",
        "(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V",
        "getStartToken",
        "()J",
        "setStartToken",
        "(J)V",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/bridge/NativeCallContext<",
            "*>;"
        }
    .end annotation
.end field

.field private model:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

.field private page:Lcom/cloud/tmc/integration/structure/Page;

.field private responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

.field private startToken:J


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/NativeCallContext<",
            "*>;",
            "Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;",
            "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
            "J)V"
        }
    .end annotation

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "action"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "bridgeContext"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "responseHelper"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "model"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->appId:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->action:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 43
    .line 44
    iput-object p6, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->model:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 45
    .line 46
    iput-wide p7, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->startToken:J

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBridgeContext()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/kernel/bridge/NativeCallContext<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModel()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->model:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseHelper()Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartToken()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->startToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->action:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->appId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setBridgeContext(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/bridge/NativeCallContext<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 7
    .line 8
    return-void
.end method

.method public final setModel(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->model:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 7
    .line 8
    return-void
.end method

.method public final setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    return-void
.end method

.method public final setResponseHelper(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 7
    .line 8
    return-void
.end method

.method public final setStartToken(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/PermissionDialogModel;->startToken:J

    .line 2
    .line 3
    return-void
.end method
