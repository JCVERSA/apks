.class public Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;


# static fields
.field public static OooO0o:Ljava/lang/String;


# instance fields
.field public OooO00o:Landroid/content/Context;

.field public OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:Ljava/lang/String;

.field public OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;


# direct methods
.method public static constructor <clinit>()V
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
    const-string v1, "DefaultAuthenticationProxyImpl"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "tel"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string v1, "mailto"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const-string v1, "sms"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const-string v1, "geo"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0Oo:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "Valid_SubResMimeList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "JSAPI_SP_Config"

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "EVENT_List"

    .line 18
    .line 19
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "HttpLink_SubResMimeList"

    .line 26
    .line 27
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "Webview_Config"

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "validDomain"

    .line 42
    .line 43
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-nez p3, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_3

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Ljava/lang/String;

    .line 86
    .line 87
    :try_start_0
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    .line 96
    .line 97
    .line 98
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-eqz p3, :cond_2

    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    return p1

    .line 103
    :catch_0
    move-exception p3

    .line 104
    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, "hasPermission Regex Exception"

    .line 107
    .line 108
    invoke-static {v0, v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    return p1
.end method

.method public checkEventPermission(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const-string v0, "EVENT_List"

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public checkJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
    .locals 2

    .line 1
    sget-object p3, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "checkJSApi,page i\u65b0\u65e5\u5fd7##########"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getSource()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p4, :cond_0

    .line 24
    .line 25
    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "checkJSApi,page is null"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->DENY:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    const-class p2, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2, p4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;->ignoreAppPermission(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 64
    .line 65
    const-string p2, "checkJSApi,IgnorePermissionPoint ignoreAppPermission"

    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_1
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-static {p3}, Lcom/cloud/tmc/integration/model/AppInfoScene;->isDevSource(Landroid/os/Bundle;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getExtendInfos()Lcom/google/gson/JsonObject;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const-string v0, "checkPermission"

    .line 92
    .line 93
    const-string v1, "YES"

    .line 94
    .line 95
    invoke-static {p2, v0, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-eqz p3, :cond_2

    .line 100
    .line 101
    const-string p3, "NO"

    .line 102
    .line 103
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 110
    .line 111
    const-string p2, "checkJSApi, KEY_CHECK_PERMISSION ignoreAppPermission"

    .line 112
    .line 113
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_2
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 124
    .line 125
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    check-cast p3, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    sget-object p4, Lcom/cloud/tmc/kernel/security/DefaultPermission;->ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 134
    .line 135
    if-eq p1, p4, :cond_4

    .line 136
    .line 137
    if-nez p3, :cond_3

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getJsapiList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Lcom/cloud/tmc/kernel/security/Permission;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :cond_4
    :goto_0
    sget-object p1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 151
    .line 152
    const/4 p3, 0x1

    .line 153
    new-array p3, p3, [Ljava/lang/Object;

    .line 154
    .line 155
    const/4 p4, 0x0

    .line 156
    aput-object p2, p3, p4

    .line 157
    .line 158
    const-string p2, "%s not have permission file"

    .line 159
    .line 160
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object p1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    .line 168
    .line 169
    return-object p1
.end method

.method public checkSPJSApi(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/App;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public checkShowPermissionDialog(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 24
    .line 25
    if-eqz v1, :cond_b

    .line 26
    .line 27
    sget-object v4, Lcom/cloud/tmc/kernel/security/DefaultPermission;->ALL:Lcom/cloud/tmc/kernel/security/DefaultPermission;

    .line 28
    .line 29
    if-eq v1, v4, :cond_b

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_1
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 79
    .line 80
    const-string v9, "ta_permissionDialogSwitch"

    .line 81
    .line 82
    const-string v10, "1"

    .line 83
    .line 84
    invoke-interface {v1, v9, v10}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v9, "0"

    .line 89
    .line 90
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const-string v14, "Tmcintegration:LocalAuthPermissionManager"

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    const-string v1, "checkShowPermissionDialog...dialogSwitch closed"

    .line 99
    .line 100
    invoke-static {v14, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    const/4 v3, 0x0

    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_2
    invoke-virtual {v2, v15}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sget-object v9, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Lcom/cloud/tmc/integration/model/ScopeModel;

    .line 117
    .line 118
    if-nez v9, :cond_3

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    sget-object v12, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 122
    .line 123
    move-object/from16 v13, p4

    .line 124
    .line 125
    invoke-virtual {v12, v13}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/ScopeModel;->getValidityTime()J

    .line 130
    .line 131
    .line 132
    move-result-wide v16

    .line 133
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/ScopeModel;->getUserAuthorization()Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    const/16 v18, 0x1

    .line 138
    .line 139
    if-eqz v10, :cond_5

    .line 140
    .line 141
    invoke-virtual {v12, v1, v10}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    if-nez v10, :cond_4

    .line 146
    .line 147
    invoke-virtual {v2, v5, v6, v15, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v3, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 151
    .line 152
    new-instance v5, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;

    .line 153
    .line 154
    invoke-direct {v5, v2, v1, v8, v4}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    move/from16 v3, v18

    .line 161
    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :cond_4
    invoke-virtual {v10}, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->getUserAuthorization()Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v10}, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->getValidityTime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v3

    .line 172
    invoke-virtual {v9, v11}, Lcom/cloud/tmc/integration/model/ScopeModel;->setUserAuthorization(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v3, v4}, Lcom/cloud/tmc/integration/model/ScopeModel;->setValidityTime(J)V

    .line 176
    .line 177
    .line 178
    move-wide/from16 v16, v3

    .line 179
    .line 180
    :cond_5
    if-nez v11, :cond_6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    iget-object v10, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 184
    .line 185
    move-object v9, v12

    .line 186
    move-object v11, v1

    .line 187
    move-object v3, v12

    .line 188
    move-wide/from16 v12, v16

    .line 189
    .line 190
    move-object v4, v14

    .line 191
    move-object v14, v8

    .line 192
    invoke-virtual/range {v9 .. v14}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_7

    .line 197
    .line 198
    :goto_2
    goto :goto_0

    .line 199
    :cond_7
    iget-object v9, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 200
    .line 201
    const-string v10, "context"

    .line 202
    .line 203
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v10, "scopeName"

    .line 207
    .line 208
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v10, "appId"

    .line 212
    .line 213
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v10, "userLogin"

    .line 217
    .line 218
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-eqz v10, :cond_8

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    invoke-virtual {v3, v9, v1, v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    const/4 v11, 0x3

    .line 230
    if-lt v10, v11, :cond_9

    .line 231
    .line 232
    invoke-virtual {v3, v9, v1, v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v9

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v11

    .line 240
    sub-long/2addr v11, v9

    .line 241
    const-wide/32 v9, 0x5265c00

    .line 242
    .line 243
    .line 244
    cmp-long v9, v11, v9

    .line 245
    .line 246
    if-gtz v9, :cond_9

    .line 247
    .line 248
    invoke-virtual {v2, v5, v6, v15, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    :goto_3
    const-string v9, "notifyMessage"

    .line 253
    .line 254
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_a

    .line 259
    .line 260
    iget-object v9, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {v3, v9, v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 267
    .line 268
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_a

    .line 277
    .line 278
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Ljava/lang/Long;

    .line 283
    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 285
    .line 286
    .line 287
    move-result-wide v9

    .line 288
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 289
    .line 290
    .line 291
    move-result-wide v11

    .line 292
    sub-long/2addr v9, v11

    .line 293
    const-wide/32 v11, 0x240c8400

    .line 294
    .line 295
    .line 296
    cmp-long v9, v9, v11

    .line 297
    .line 298
    if-gez v9, :cond_a

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 301
    .line 302
    .line 303
    move-result-wide v9

    .line 304
    const-wide/16 v11, 0x0

    .line 305
    .line 306
    cmp-long v9, v9, v11

    .line 307
    .line 308
    if-eqz v9, :cond_a

    .line 309
    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v8, "notifyMsg scope not show again"

    .line 316
    .line 317
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v5, v6, v15, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_a
    const/4 v9, 0x0

    .line 336
    move-object v1, v2

    .line 337
    move-object/from16 v2, p4

    .line 338
    .line 339
    move-object v3, v8

    .line 340
    move-object v4, v15

    .line 341
    move-object/from16 v5, p2

    .line 342
    .line 343
    move-object/from16 v6, p3

    .line 344
    .line 345
    move v8, v9

    .line 346
    invoke-virtual/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;Z)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    :goto_4
    return v3

    .line 351
    :cond_b
    :goto_5
    sget-object v1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 352
    .line 353
    const-string v2, "checkShowPermissionDialog permsionModel is null"

    .line 354
    .line 355
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/4 v1, 0x0

    .line 359
    return v1
.end method

.method public clearPermissionModel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public getAllPermissions(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/Map;
    .locals 10
    .param p3    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    iget-object p3, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, p3, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    if-eqz p3, :cond_7

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_7

    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getNativeApiScopeConfig()Lcom/google/gson/JsonObject;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getNativeApiScopeConfig()Lcom/google/gson/JsonObject;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {p3}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getAggregationMainAppId(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, p2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-class v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 101
    .line 102
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 107
    .line 108
    iget-object v6, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 109
    .line 110
    invoke-interface {v5, v6, p2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v7, "isThePermissionApplied,key: "

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, ",value: "

    .line 128
    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const-string v7, "Tmcintegration:LocalAuthPermissionManager"

    .line 140
    .line 141
    invoke-static {v7, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_4

    .line 149
    .line 150
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-nez v6, :cond_4

    .line 155
    .line 156
    invoke-virtual {p1, p3, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 165
    .line 166
    iget-object v8, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 167
    .line 168
    invoke-interface {v6, v8, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_3

    .line 177
    .line 178
    invoke-virtual {p1, p2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 187
    .line 188
    iget-object v8, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 189
    .line 190
    invoke-interface {v6, v8, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v9, "getPermissionByKey,key: "

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {v7, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v3, "1"

    .line 221
    .line 222
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_5

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-nez v5, :cond_6

    .line 234
    .line 235
    invoke-virtual {p1, p3, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 244
    .line 245
    iget-object v6, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 246
    .line 247
    invoke-interface {v4, v6, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_6

    .line 256
    .line 257
    :goto_1
    const/4 v3, 0x1

    .line 258
    goto :goto_2

    .line 259
    :cond_6
    const/4 v3, 0x0

    .line 260
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_7
    :goto_3
    return-object v0
.end method

.method public getPermissionModel(Ljava/lang/String;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getJsapiList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    .line 49
    .line 50
    invoke-direct {v2, v1, v1}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object v0

    .line 58
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "hasPermission "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-class v0, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {v0, p4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-virtual {p4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    check-cast p4, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    if-eqz p4, :cond_0

    .line 59
    .line 60
    invoke-interface {p4, p1}, Lcom/cloud/tmc/integration/extension/IgnorePermissionPoint;->ignoreAppPermission(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    if-eqz p4, :cond_0

    .line 65
    .line 66
    sget-object p2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 67
    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string p4, "ignore hasPermission appid\t "

    .line 74
    .line 75
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v0

    .line 89
    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0Oo:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    const/4 v1, 0x0

    .line 96
    if-nez p4, :cond_2

    .line 97
    .line 98
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0Oo:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {p4}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-static {p4, p1, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 105
    .line 106
    .line 107
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const-string v3, "yes"

    .line 109
    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    :try_start_1
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_1

    .line 117
    .line 118
    invoke-static {v2, p3}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    if-eqz p4, :cond_2

    .line 127
    .line 128
    return v0

    .line 129
    :catch_0
    move-exception p1

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-static {p4, p3}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    if-eqz p4, :cond_2

    .line 140
    .line 141
    return v0

    .line 142
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result p4

    .line 146
    if-nez p4, :cond_4

    .line 147
    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    if-nez p4, :cond_4

    .line 153
    .line 154
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result p4

    .line 158
    if-nez p4, :cond_4

    .line 159
    .line 160
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 161
    .line 162
    if-eqz p4, :cond_4

    .line 163
    .line 164
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    if-eqz p4, :cond_4

    .line 169
    .line 170
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 171
    .line 172
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p4

    .line 176
    check-cast p4, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    .line 177
    .line 178
    invoke-virtual {p4, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    if-eqz p4, :cond_4

    .line 183
    .line 184
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 185
    .line 186
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    check-cast p4, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    .line 191
    .line 192
    invoke-virtual {p4, p3}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object p4

    .line 196
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result p4

    .line 200
    if-eqz p4, :cond_3

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_3
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 204
    .line 205
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    move-object v1, p1

    .line 210
    check-cast v1, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    .line 211
    .line 212
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 213
    .line 214
    const-string p1, "JSAPI_SP_Config"

    .line 215
    .line 216
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    return p1

    .line 221
    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o(Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    return p1

    .line 226
    :goto_1
    sget-object p2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o:Ljava/lang/String;

    .line 227
    .line 228
    const-string p3, "hasPermission Exception!"

    .line 229
    .line 230
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    return v0
.end method

.method public hasPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public setPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0OO:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0O0:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->convert2ApiPermissionInfo(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPermissionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 13
    .line 14
    :cond_0
    const-class p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO00o:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;->OooO0o0:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getAggregationMainAppId(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string v1, "userLogin"

    .line 42
    .line 43
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, p2, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    if-eqz p4, :cond_3

    .line 66
    .line 67
    const-string p3, "1"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const-string p3, "0"

    .line 71
    .line 72
    :goto_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 81
    .line 82
    invoke-interface {v1, v0, p2, p1, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string p3, "changePermissionState,key: "

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, ",opened: "

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "Tmcintegration:LocalAuthPermissionManager"

    .line 111
    .line 112
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method
