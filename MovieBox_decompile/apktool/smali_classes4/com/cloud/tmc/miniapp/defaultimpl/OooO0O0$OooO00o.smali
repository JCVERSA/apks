.class public Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OooO00o:Z

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Ljava/lang/String;

.field public final synthetic OooO0o0:Ljava/lang/String;

.field public final synthetic OooO0oO:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oO:Lcom/cloud/tmc/integration/structure/Page;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public clickNotShowAgagin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    .line 2
    .line 3
    return-void
.end method

.method public onDenied()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "Tmcintegration:LocalAuthPermissionManager"

    .line 11
    .line 12
    const-string v1, "checkShowPermissionDialog...cancel"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "context"

    .line 32
    .line 33
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "scopeName"

    .line 37
    .line 38
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "appId"

    .line 42
    .line 43
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v9, 0x1

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v2, v0

    .line 50
    invoke-virtual/range {v2 .. v10}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 67
    .line 68
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    .line 69
    .line 70
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 71
    .line 72
    const-string v5, "notifyMessage"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    if-eqz v3, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public onGranted(Ljava/lang/Object;)V
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "context"

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "scopeName"

    .line 21
    .line 22
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "appId"

    .line 26
    .line 27
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oO:Lcom/cloud/tmc/integration/structure/Page;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-nez v3, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/util/List;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "sendResult...action="

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "Tmcintegration:LocalAuthPermissionManager"

    .line 115
    .line 116
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v5, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 132
    .line 133
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;->OooO0O0:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->getInnerBridgeResponse()Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-interface {v3, v5, v2, v6}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    const-string v3, "use local permission send result error:\t"

    .line 146
    .line 147
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 171
    .line 172
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    .line 173
    .line 174
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 175
    .line 176
    const-string v3, "notifyMessage"

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    if-eqz v1, :cond_2

    .line 185
    .line 186
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 187
    .line 188
    invoke-virtual {v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    :cond_2
    return-void
.end method
