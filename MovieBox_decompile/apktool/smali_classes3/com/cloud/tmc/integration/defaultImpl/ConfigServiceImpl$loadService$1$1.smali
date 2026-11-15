.class public final Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/config/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1",
        "Lcom/cloud/config/s;",
        "",
        "code",
        "",
        "message",
        "",
        "onLoadDataFailure",
        "(ILjava/lang/String;)V",
        "onLoadDataSuccess",
        "()V",
        "innerQueryKey",
        "Ljava/lang/String;",
        "getInnerQueryKey",
        "()Ljava/lang/String;",
        "setInnerQueryKey",
        "(Ljava/lang/String;)V",
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
.field final synthetic $complete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field private innerQueryKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p1, "defaultKey"

    .line 19
    .line 20
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getInnerQueryKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLoadDataFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "message"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onLoadDataSuccess()V
    .locals 8

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 12
    .line 13
    const-string v1, "whiteScreen"

    .line 14
    .line 15
    const-string v2, "{\"grayScale\": 0,\"checkNowDelay\": 1000,\"checkIntervalArray\": [5, 10, 15, 20]}"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "fps"

    .line 22
    .line 23
    const-string v4, "{\"grayScale\": 0,\"jankThreshold\": 200,\"traceInterval\": 50}"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    .line 33
    .line 34
    const-class v4, Lcom/cloud/tmc/integration/model/WhiteScreen;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/cloud/tmc/integration/model/WhiteScreen;

    .line 41
    .line 42
    const-class v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/WhiteScreen;->getGrayScale()F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/WhiteScreen;->getCheckNowDelay()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/WhiteScreen;->getCheckIntervalArray()[I

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v2, v4, v5, v1}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->initConfig(FLjava/lang/Long;[I)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/cloud/tmc/fps/FpsManager;->INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

    .line 70
    .line 71
    new-instance v2, Lcom/google/gson/Gson;

    .line 72
    .line 73
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 74
    .line 75
    .line 76
    const-class v4, Lcom/cloud/tmc/fps/data/ConfigData;

    .line 77
    .line 78
    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "Gson().fromJson(\n       \u2026                        )"

    .line 83
    .line 84
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast v0, Lcom/cloud/tmc/fps/data/ConfigData;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/fps/FpsManager;->saveConfig(Lcom/cloud/tmc/fps/data/ConfigData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 102
    .line 103
    const-string v1, "logEReport"

    .line 104
    .line 105
    const-string v2, "{\"grayScale\": 0}"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Lcom/google/gson/Gson;

    .line 112
    .line 113
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 114
    .line 115
    .line 116
    const-class v4, Lcom/cloud/tmc/integration/model/LogEBean;

    .line 117
    .line 118
    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lcom/cloud/tmc/integration/model/LogEBean;

    .line 123
    .line 124
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/LogEBean;->getGrayScale()F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;->saveConfig(F)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 140
    .line 141
    const-string v2, "closeMiniAppSDK"

    .line 142
    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-virtual {v1, v2, v4}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v5, "loadService closeSDK = "

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "ConfigService"

    .line 166
    .line 167
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    .line 171
    .line 172
    if-eqz v1, :cond_0

    .line 173
    .line 174
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    :cond_0
    const-string v1, "networkImproveNumV2"

    .line 180
    .line 181
    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 186
    .line 187
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 192
    .line 193
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    .line 194
    .line 195
    const-string v6, "miniLauncherGlobal"

    .line 196
    .line 197
    const-string v7, "network_improve_key"

    .line 198
    .line 199
    invoke-interface {v2, v5, v6, v7}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 208
    .line 209
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    .line 210
    .line 211
    invoke-interface {v1, v5, v6, v7, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    if-eq v2, v0, :cond_2

    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v1

    .line 220
    const/16 v5, 0xa

    .line 221
    .line 222
    int-to-long v5, v5

    .line 223
    rem-long/2addr v1, v5

    .line 224
    int-to-long v5, v0

    .line 225
    cmp-long v0, v1, v5

    .line 226
    .line 227
    if-gez v0, :cond_1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_1
    move v3, v4

    .line 231
    :goto_1
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Lcom/tmc/network/NetworkConfig;->setNetworkImproveEnable(Z)V

    .line 234
    .line 235
    .line 236
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 237
    .line 238
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->access$updateConfigAppinfo(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public final setInnerQueryKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
