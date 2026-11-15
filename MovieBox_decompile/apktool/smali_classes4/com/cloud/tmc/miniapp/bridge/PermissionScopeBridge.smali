.class public final Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

.field public static final ERROR_CODE_HAPPENED_EXCEPTION:I = 0x1f4

.field public static final ERROR_CODE_SCOPE_NAME_IS_EMPTY:I = 0x259

.field public static final ERROR_CODE_SCOPE_NAME_NOT_FOUND:I = 0x25a

.field public static final ERROR_MSG_SCOPE_NAME_IS_EMPTY:Ljava/lang/String; = "scopeName is empty"

.field public static final ERROR_MSG_SCOPE_NAME_NOT_FOUND:Ljava/lang/String; = "No specified scopeName found"

.field public static final OooO00o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/dialog/o00oO0o;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PermissionScopeBridge::"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getDauDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final checkScopePermissionAuthStatus(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "scopeName"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "scopeName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "errMsg"

    .line 12
    .line 13
    const-string v1, "code"

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 p2, 0x259

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "scopeName is empty"

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const-string v5, "No specified scopeName found"

    .line 68
    .line 69
    const/16 v6, 0x25a

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 74
    .line 75
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/cloud/tmc/integration/model/ScopeModel;

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/ScopeModel;->getValidityTime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    const-string p1, "app.appId"

    .line 111
    .line 112
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v5, p2

    .line 116
    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 121
    .line 122
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "authStatus"

    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p3, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 139
    .line 140
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :goto_0
    const-string p2, "PermissionScopeBridge::"

    .line 162
    .line 163
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 167
    .line 168
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 169
    .line 170
    .line 171
    const/16 v2, 0x1f4

    .line 172
    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {p2, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p2, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {p3, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 188
    .line 189
    .line 190
    :goto_1
    return-void
.end method

.method public final getTempUniqueId(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    const-string v1, "tempUniqueId"

    .line 4
    .line 5
    const-string v2, "callback"

    .line 6
    .line 7
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v3, v2, v4, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "_"

    .line 66
    .line 67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 86
    .line 87
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v0, v2, p1, v1, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v1, v3}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method public final listScope(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 6
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "data"

    .line 12
    .line 13
    new-instance v2, Lcom/google/gson/JsonArray;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v3, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "SHOW_SCOPE_MAP.entries"

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "it.value"

    .line 56
    .line 57
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    const-string v1, "PermissionScopeBridge::"

    .line 84
    .line 85
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 91
    .line 92
    .line 93
    const/16 v2, 0x1f4

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "code"

    .line 100
    .line 101
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v2, "errMsg"

    .line 109
    .line 110
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "PermissionScopeBridge::"

    .line 2
    .line 3
    const-string v1, "onFinalized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    const-string v0, "PermissionScopeBridge::"

    .line 2
    .line 3
    const-string v1, "onInitialized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final queryAddScreenNotShowAgainStatus(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "miniappId"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "miniappId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "timestamp"

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 42
    .line 43
    const-string v2, "miniAddHomeNotShowAgainTime"

    .line 44
    .line 45
    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, v0, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    const-string p2, "PermissionScopeBridge::"

    .line 70
    .line 71
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-wide/16 v1, 0x0

    .line 79
    .line 80
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void
.end method

.method public final queryDynamicScopeConfig(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string p1, "callback"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v0, "muscl"

    .line 9
    .line 10
    const-string v1, "{}"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "scopeConfig"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final queryEnableDevUserAgreement(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string p1, "callback"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v0, "enableDevUserAgreement"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "enable"

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final queryEnableduaWhitlist(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string p1, "callback"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v0, "enableduaWhitlist"

    .line 9
    .line 10
    const-string v1, "[]"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "duaWhitlist"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final queryMsgNotShowAgainStatus(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 5
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "miniappId"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "miniappId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "timestamp"

    .line 12
    .line 13
    const-string v1, "PermissionScopeBridge::"

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 38
    .line 39
    invoke-virtual {v2, p1, p2}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "msgStatusPair,-> "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, ","

    .line 65
    .line 66
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string v2, "notShowAgain"

    .line 84
    .line 85
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {p2, v2, v3}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Number;

    .line 100
    .line 101
    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-wide/16 v1, 0x0

    .line 121
    .line 122
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void
.end method

.method public final queryScopeContentConfig(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string p1, "callback"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0O0:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-virtual {v2, v1, v3}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "scope"

    .line 48
    .line 49
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    const-string p2, "PermissionScopeBridge::"

    .line 66
    .line 67
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    return-void
.end method

.method public final showScopePermissionDialog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 24
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "logo"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "title"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleTips"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "scopeName"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "customContent"
            }
        .end annotation
    .end param
    .param p7    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "button1"
            }
        .end annotation
    .end param
    .param p8    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "button2"
            }
        .end annotation
    .end param
    .param p9    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "button3"
            }
        .end annotation
    .end param
    .param p10    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "notShowAgain"
            }
        .end annotation
    .end param
    .param p11    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    move-object/from16 v8, p10

    .line 18
    .line 19
    move-object/from16 v9, p11

    .line 20
    .line 21
    const-string v12, "logo"

    .line 22
    .line 23
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v12, "title"

    .line 27
    .line 28
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v12, "titleTips"

    .line 32
    .line 33
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v12, "scopeName"

    .line 37
    .line 38
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v12, "customContent"

    .line 42
    .line 43
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v12, "button1"

    .line 47
    .line 48
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v12, "button2"

    .line 52
    .line 53
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v12, "button3"

    .line 57
    .line 58
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v12, "notShowAgain"

    .line 62
    .line 63
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v12, "callback"

    .line 67
    .line 68
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    if-eqz v14, :cond_0

    .line 78
    .line 79
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 v14, 0x0

    .line 85
    :goto_0
    if-nez v14, :cond_1

    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    if-nez v15, :cond_2

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    invoke-virtual {v15}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    const-string v13, ""

    .line 100
    .line 101
    if-nez v16, :cond_3

    .line 102
    .line 103
    move-object v10, v13

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    move-object/from16 v10, v16

    .line 106
    .line 107
    :goto_1
    invoke-static {v0, v10}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefaultAndCheckEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v15}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    if-nez v10, :cond_4

    .line 116
    .line 117
    move-object v10, v13

    .line 118
    :cond_4
    invoke-static {v1, v10}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefaultAndCheckEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 123
    .line 124
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;

    .line 128
    .line 129
    invoke-direct {v15, v14}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    const-string v14, "iconUrl"

    .line 133
    .line 134
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :try_start_0
    iget-object v14, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0OO:Lkotlin/Lazy;

    .line 138
    .line 139
    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    move-object/from16 v20, v14

    .line 144
    .line 145
    check-cast v20, Landroidx/appcompat/widget/AppCompatImageView;

    .line 146
    .line 147
    if-eqz v20, :cond_5

    .line 148
    .line 149
    const-class v14, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 150
    .line 151
    invoke-static {v14}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    move-object/from16 v17, v14

    .line 156
    .line 157
    check-cast v17, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 158
    .line 159
    invoke-virtual {v15}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v18

    .line 163
    const/high16 v14, 0x40800000    # 4.0f

    .line 164
    .line 165
    invoke-static {v14}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 166
    .line 167
    .line 168
    move-result v21

    .line 169
    sget v23, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    .line 170
    .line 171
    move-object/from16 v19, v0

    .line 172
    .line 173
    move/from16 v22, v23

    .line 174
    .line 175
    invoke-interface/range {v17 .. v23}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    iget-object v14, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 181
    .line 182
    const-string v11, "setAppLogo"

    .line 183
    .line 184
    invoke-static {v14, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_2
    const-string v0, "scopeType"

    .line 188
    .line 189
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v11, "setAppName"

    .line 193
    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    :try_start_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-lez v0, :cond_7

    .line 201
    .line 202
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o:Lkotlin/Lazy;

    .line 203
    .line 204
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/widget/TextView;

    .line 209
    .line 210
    if-nez v0, :cond_6

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o:Lkotlin/Lazy;

    .line 220
    .line 221
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Landroid/widget/TextView;

    .line 226
    .line 227
    if-nez v0, :cond_8

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_8
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 231
    .line 232
    invoke-virtual {v4, v3, v13}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_3
    iget-object v3, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v3, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    const-string v3, "config"

    .line 246
    .line 247
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :try_start_2
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oO:Lkotlin/Lazy;

    .line 251
    .line 252
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/widget/TextView;

    .line 257
    .line 258
    invoke-virtual {v15, v0, v5}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o(Landroid/widget/TextView;Lcom/google/gson/JsonObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :catchall_2
    move-exception v0

    .line 263
    iget-object v4, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 264
    .line 265
    const-string v5, "setBtnOne:-> "

    .line 266
    .line 267
    invoke-static {v4, v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    :goto_5
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :try_start_3
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oo:Lkotlin/Lazy;

    .line 274
    .line 275
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {v15, v0, v6}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o(Landroid/widget/TextView;Lcom/google/gson/JsonObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :catchall_3
    move-exception v0

    .line 286
    iget-object v4, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 287
    .line 288
    const-string v5, "setBtnTwo:-> "

    .line 289
    .line 290
    invoke-static {v4, v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_6
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :try_start_4
    invoke-virtual {v15}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0()Landroid/widget/TextView;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v15, v0, v7}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o(Landroid/widget/TextView;Lcom/google/gson/JsonObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :catchall_4
    move-exception v0

    .line 305
    iget-object v4, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 306
    .line 307
    const-string v5, "setBtnThree:-> "

    .line 308
    .line 309
    invoke-static {v4, v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    :goto_7
    if-eqz v2, :cond_b

    .line 313
    .line 314
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_b

    .line 319
    .line 320
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o0:Lkotlin/Lazy;

    .line 321
    .line 322
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    move-object v4, v0

    .line 327
    check-cast v4, Landroid/widget/TextView;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 328
    .line 329
    if-nez v4, :cond_9

    .line 330
    .line 331
    const/4 v14, 0x0

    .line 332
    goto :goto_c

    .line 333
    :cond_9
    :try_start_6
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 334
    .line 335
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_dialog_title:I

    .line 336
    .line 337
    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-nez v0, :cond_a

    .line 342
    .line 343
    move-object v0, v13

    .line 344
    :cond_a
    const/4 v5, 0x1

    .line 345
    new-array v6, v5, [Ljava/lang/Object;

    .line 346
    .line 347
    const-string v7, " "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 348
    .line 349
    const/4 v14, 0x0

    .line 350
    :try_start_7
    aput-object v7, v6, v14

    .line 351
    .line 352
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const-string v5, "format(format, *args)"

    .line 361
    .line 362
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 363
    .line 364
    .line 365
    goto :goto_9

    .line 366
    :catchall_5
    move-exception v0

    .line 367
    goto :goto_8

    .line 368
    :catchall_6
    move-exception v0

    .line 369
    const/4 v14, 0x0

    .line 370
    :goto_8
    :try_start_8
    iget-object v5, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .line 374
    .line 375
    move-object v0, v13

    .line 376
    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 377
    .line 378
    .line 379
    goto :goto_c

    .line 380
    :catchall_7
    move-exception v0

    .line 381
    goto :goto_a

    .line 382
    :catchall_8
    move-exception v0

    .line 383
    const/4 v14, 0x0

    .line 384
    goto :goto_a

    .line 385
    :cond_b
    const/4 v14, 0x0

    .line 386
    goto :goto_b

    .line 387
    :goto_a
    iget-object v4, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 388
    .line 389
    const-string v5, "setAppTitleTips"

    .line 390
    .line 391
    invoke-static {v4, v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    .line 393
    .line 394
    :goto_b
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o0:Lkotlin/Lazy;

    .line 395
    .line 396
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Landroid/widget/TextView;

    .line 401
    .line 402
    if-nez v0, :cond_c

    .line 403
    .line 404
    goto :goto_c

    .line 405
    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    :goto_c
    const-string v0, "appName"

    .line 409
    .line 410
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :try_start_9
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0Oo:Lkotlin/Lazy;

    .line 414
    .line 415
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Landroid/widget/TextView;

    .line 420
    .line 421
    if-nez v0, :cond_d

    .line 422
    .line 423
    goto :goto_d

    .line 424
    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 425
    .line 426
    .line 427
    goto :goto_d

    .line 428
    :catchall_9
    move-exception v0

    .line 429
    iget-object v1, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v1, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    :goto_d
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    :try_start_a
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-eqz v0, :cond_e

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    goto :goto_e

    .line 450
    :cond_e
    move v0, v14

    .line 451
    :goto_e
    iget-object v1, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0:Lkotlin/Lazy;

    .line 452
    .line 453
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Landroidx/constraintlayout/widget/Group;

    .line 458
    .line 459
    if-nez v1, :cond_f

    .line 460
    .line 461
    goto :goto_10

    .line 462
    :cond_f
    if-eqz v0, :cond_10

    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_10
    const/16 v0, 0x8

    .line 466
    .line 467
    move v14, v0

    .line 468
    :goto_f
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    :goto_10
    iget-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOo:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    if-eqz v0, :cond_11

    .line 478
    .line 479
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    goto :goto_11

    .line 484
    :cond_11
    const/4 v0, 0x0

    .line 485
    :goto_11
    if-nez v0, :cond_12

    .line 486
    .line 487
    goto :goto_12

    .line 488
    :cond_12
    const-string v1, "config.get(KEY_TEXT)?.asString ?: \"\""

    .line 489
    .line 490
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    move-object v13, v0

    .line 494
    :goto_12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-lez v0, :cond_14

    .line 499
    .line 500
    invoke-virtual {v15}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0()Landroid/widget/TextView;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    if-nez v0, :cond_13

    .line 505
    .line 506
    goto :goto_13

    .line 507
    :cond_13
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 508
    .line 509
    .line 510
    :catchall_a
    :cond_14
    :goto_13
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;

    .line 511
    .line 512
    invoke-direct {v0, v9, v10}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO0O0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iput-object v0, v15, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    .line 519
    .line 520
    invoke-virtual {v15}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 521
    .line 522
    .line 523
    return-void
.end method

.method public final userAgreementDialogShow(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 17
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleMode"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "content"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "agreementContent"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolicyTv"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementTv"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolicyUrl"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementUrl"
            }
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "btnBgColor"
            }
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "agreeBtn"
            }
        .end annotation
    .end param
    .param p11    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "cancelBtn"
            }
        .end annotation
    .end param
    .param p12    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    const-string v2, "titleMode"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "agreementContent"

    move-object/from16 v3, p4

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "privacyPolicyTv"

    move-object/from16 v4, p5

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userAgreementTv"

    move-object/from16 v5, p6

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "privacyPolicyUrl"

    move-object/from16 v6, p7

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userAgreementUrl"

    move-object/from16 v7, p8

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "btnBgColor"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "agreeBtn"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cancelBtn"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "userAgreementDialogShow titleMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PermissionScopeBridge::"

    invoke-static {v13, v12}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-nez v14, :cond_1

    .line 3
    const-string v0, "app is null"

    invoke-static {v13, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v15}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v15

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    if-nez v15, :cond_3

    .line 5
    const-string v0, "context is null"

    invoke-static {v13, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_3
    sget-object v12, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 7
    const-string v3, "dialog is exist remove it"

    invoke-static {v13, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 9
    :cond_4
    invoke-virtual {v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_5
    new-instance v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    invoke-direct {v13, v15}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v3, "appId"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v14, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 14
    :goto_2
    const-string v15, "config"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v15, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    :goto_3
    if-nez v15, :cond_8

    const-string v15, "1"

    goto :goto_4

    :cond_8
    const-string v4, "config.get(KEY_MODE)?.asString ?: \"1\""

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :goto_4
    iget-object v4, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    const-string v4, ""

    move-object/from16 p2, v4

    if-nez v0, :cond_a

    move-object/from16 v0, p2

    goto :goto_6

    :cond_a
    const-string v4, "config.get(KEY_TEXT)?.asString ?: \"\""

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 18
    iget-object v3, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_b

    goto :goto_8

    .line 19
    :cond_b
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 20
    :cond_c
    iget-object v0, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_d

    goto :goto_8

    .line 21
    :cond_d
    iget-object v4, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0o:Ljava/lang/String;

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dau_title_notice:I

    invoke-virtual {v13, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 22
    :cond_e
    iget-object v4, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOO0:Ljava/lang/String;

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 23
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dau_title_welcome:I

    invoke-virtual {v13, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x1

    .line 24
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    .line 25
    invoke-static {v4, v15}, Lcom/cloud/tmc/miniutils/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 26
    :cond_f
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dau_title_notice:I

    invoke-virtual {v13, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v1, :cond_11

    .line 28
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 29
    invoke-virtual {v13}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0Oo()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 30
    :cond_11
    invoke-virtual {v13}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0Oo()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_9

    .line 31
    :cond_12
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_dau_content:I

    invoke-virtual {v13, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_9
    invoke-virtual {v13}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0Oo()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 34
    :goto_a
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v11, v13, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 36
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object/from16 v1, p2

    goto :goto_b

    :cond_14
    move-object v1, v0

    :goto_b
    move-object v0, v13

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v15, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 37
    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v8, v9}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    move-result-object v0

    if-eqz v10, :cond_15

    .line 39
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_16

    move-object v4, v15

    goto :goto_d

    :cond_16
    const-string v1, "config?.get(KEY_TEXT)?.asString ?: \"\""

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    if-eqz v10, :cond_17

    .line 40
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_18

    move-object v1, v15

    goto :goto_f

    :cond_18
    const-string v2, "config?.get(KEY_MODE)?.asString ?: \"\""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :goto_f
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_19

    goto :goto_11

    .line 42
    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    goto :goto_10

    .line 43
    :cond_1a
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOO:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 44
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_can_open_exit:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 45
    :cond_1b
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOOO:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 46
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_dau_guest_mode:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 47
    :cond_1c
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_can_open_exit:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_10
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_11
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 50
    :try_start_0
    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 52
    const-string v1, "status"

    const-string v2, "show"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 54
    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v1, p0

    invoke-interface {v1, v11, v15, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
