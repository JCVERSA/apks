.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

.field public static final OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
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


# virtual methods
.method public final OooO00o(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;
    .locals 9

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 9
    .line 10
    const-string v3, "miniPreStrategyConfig"

    .line 11
    .line 12
    const-string v4, "miniPreCdnConfig"

    .line 13
    .line 14
    invoke-interface {v2, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string v3, ""

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    move-object v2, v3

    .line 23
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    const-string v2, "preStrategyConfig.json"

    .line 30
    .line 31
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_2

    .line 47
    .line 48
    const-class v2, Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 49
    .line 50
    invoke-static {v3, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    :try_start_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v3, v0

    .line 61
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 62
    .line 63
    const-string v5, "miniPreStrategyConfig"

    .line 64
    .line 65
    const-string v6, "miniRefreshConfigDiff"

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    move-object v4, p1

    .line 72
    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    .line 74
    .line 75
    move-object v1, v2

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    move-object v1, v2

    .line 79
    :goto_1
    const-string v0, "PreStrategyConfigManager"

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-object v1
.end method

.method public final OooO0O0(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;
    .locals 5

    .line 1
    const-string v0, "PreStrategyConfigManager"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "getPreStrategyConfig context is null "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 30
    .line 31
    const-string v2, "miniPreStrategyConfig"

    .line 32
    .line 33
    const-string v3, "miniRefreshConfigDiff"

    .line 34
    .line 35
    invoke-interface {v1, p1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    sub-long/2addr v3, v1

    .line 44
    const-wide/32 v1, 0x2932e00

    .line 45
    .line 46
    .line 47
    cmp-long v1, v3, v1

    .line 48
    .line 49
    if-lez v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sput-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 56
    .line 57
    :cond_2
    :goto_0
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 58
    .line 59
    const-string v2, "enablePreZeroScreenUpdate"

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "getPreStrategyConfig enableStatus is true"

    .line 72
    .line 73
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    sget-object p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 82
    .line 83
    return-object p1
.end method

.method public final OooO0OO(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO0O0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "PreStrategyConfigManager"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p1, "execute new prefetch strategy."

    .line 17
    .line 18
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const-string p1, "requestStrategyConfig is refreshing"

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 47
    .line 48
    const-string v3, "miniPreStrategyConfig"

    .line 49
    .line 50
    const-string v4, "miniRequestConfigDiff"

    .line 51
    .line 52
    invoke-interface {v0, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    const-wide/16 v5, 0x3e8

    .line 57
    .line 58
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 59
    .line 60
    const-string v7, "updatePreConfigInterval"

    .line 61
    .line 62
    const/16 v8, 0x18

    .line 63
    .line 64
    invoke-virtual {v0, v7, v8}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    mul-int/lit16 v0, v0, 0xe10

    .line 69
    .line 70
    :goto_0
    int-to-long v7, v0

    .line 71
    mul-long/2addr v7, v5

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    const v0, 0x15180

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    const/4 v0, 0x0

    .line 78
    :try_start_1
    sget-object v5, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 79
    .line 80
    if-nez v5, :cond_2

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_2
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 84
    .line 85
    const-string v5, "forceUpdatePreConfig"

    .line 86
    .line 87
    const-string v6, "{\"enable\":false,\"version\":\"0.0.1\"}"

    .line 88
    .line 89
    invoke-virtual {v2, v5, v6}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const-class v6, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;

    .line 98
    .line 99
    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;

    .line 104
    .line 105
    if-nez v2, :cond_3

    .line 106
    .line 107
    new-instance v2, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;

    .line 108
    .line 109
    const-string v5, "0.0.0"

    .line 110
    .line 111
    invoke-direct {v2, v0, v5}, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;-><init>(ZLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception v2

    .line 116
    goto :goto_4

    .line 117
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;->getEnable()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_6

    .line 122
    .line 123
    sget-object v5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;->getVersion()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v6, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    .line 130
    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;->getConfigVerion()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-nez v6, :cond_5

    .line 138
    .line 139
    :cond_4
    const-string v6, ""

    .line 140
    .line 141
    :cond_5
    invoke-virtual {v5, v2, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    goto :goto_5

    .line 146
    :cond_6
    :goto_3
    move v2, v0

    .line 147
    goto :goto_5

    .line 148
    :goto_4
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :goto_5
    if-nez v2, :cond_7

    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    sub-long/2addr v5, v3

    .line 159
    cmp-long v2, v5, v7

    .line 160
    .line 161
    if-gez v2, :cond_7

    .line 162
    .line 163
    sget-object p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v0, "requestStrategyConfig diff < "

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, ",latestRequest ->"

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_7
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 204
    .line 205
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getPreStrategyCdnUrl()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 213
    .line 214
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    move-object v2, v0

    .line 219
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 220
    .line 221
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    .line 223
    new-instance v7, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o$OooO00o;

    .line 224
    .line 225
    invoke-direct {v7, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o$OooO00o;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    const/4 v5, 0x0

    .line 230
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method
