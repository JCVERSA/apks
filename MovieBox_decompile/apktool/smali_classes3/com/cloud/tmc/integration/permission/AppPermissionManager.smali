.class public Lcom/cloud/tmc/integration/permission/AppPermissionManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/permission/PermissionManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private mApiBizPermissionManager:Lcom/cloud/tmc/integration/permission/BizPermissionManager;

.field private rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;


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
    const-string v1, "Tmcintegration:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/cloud/tmc/integration/permission/AppPermissionManager;

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
    sput-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->WHITE_LIST:Ljava/util/List;

    .line 32
    .line 33
    const-string v1, "registerWorker"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->WHITE_LIST:Ljava/util/List;

    .line 39
    .line 40
    const-string v1, "getPackageFile"

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/permission/BizPermissionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->mApiBizPermissionManager:Lcom/cloud/tmc/integration/permission/BizPermissionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public asyncCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 8
    .line 9
    invoke-interface {v0, p1, p3, p4, p2}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->checkShowPermissionDialog(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public bizCheckPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->mApiBizPermissionManager:Lcom/cloud/tmc/integration/permission/BizPermissionManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->appId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-interface {p2, v1, v2, p3}, Lcom/cloud/tmc/integration/permission/BizPermissionManager;->checkBizParamPermission(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    sget-object p2, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " is not supported by param!"

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p4, :cond_0

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 p2, 0x2

    .line 70
    invoke-virtual {p4, p2, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return v0
.end method

.method public checkPermission(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->WHITE_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p4, "checkPermission skip white list! "

    .line 22
    .line 23
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    instance-of v0, p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    instance-of v3, p2, Lcom/cloud/tmc/integration/structure/App;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    return v2

    .line 51
    :cond_1
    instance-of v3, p2, Lcom/cloud/tmc/integration/structure/App;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    move-object v3, p2

    .line 56
    check-cast v3, Lcom/cloud/tmc/integration/structure/App;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    :goto_0
    if-eqz v0, :cond_3

    .line 61
    .line 62
    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 63
    .line 64
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_3
    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 69
    .line 70
    invoke-interface {p2, p1, p3, p4, v3}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->checkJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->ALLOW:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 75
    .line 76
    if-ne v0, p2, :cond_4

    .line 77
    .line 78
    sget-object p2, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "checkPermission allowed:\t "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 105
    .line 106
    invoke-interface {p2, p1, p3, p4, v3}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->checkSPJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    return p1

    .line 111
    :cond_4
    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 112
    .line 113
    if-ne p1, p2, :cond_5

    .line 114
    .line 115
    sget-object p1, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string p4, "checkPermission ignored:\t "

    .line 123
    .line 124
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :cond_5
    return v2
.end method

.method public init(Lcom/cloud/tmc/kernel/security/Accessor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getPermissionAppId(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->appId:Ljava/lang/String;

    .line 6
    .line 7
    const-class p1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 16
    .line 17
    return-void
.end method

.method public manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;
    .locals 0

    .line 1
    sget-object p1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    .line 2
    .line 3
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
    iget-object p1, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->rvPermissionServiceProxy:Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/AppPermissionManager;->appId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
