.class public Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/security/AccessControlManagement;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

.field private bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

.field private helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TmcKernel:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 7
    .line 8
    const-class p2, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public asyncPermissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->asyncCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public bizPermissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->bizCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public needPermissionCheck(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Guard;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->needPermissionCheck(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public permissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeAccessPoint:Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->bridgeContext:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;->helper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/point/BridgeAccessPoint;->checkPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
