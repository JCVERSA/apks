.class public final Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ShortCutBroadcast"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->onReceive$lambda$4(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onReceive$lambda$4(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$extraAddHomeLocation"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const-string v1, "addHomeStatus_"

    .line 13
    .line 14
    const-string v2, "miniKeyStorageAddHome"

    .line 15
    .line 16
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 25
    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-interface {v4, p0, v2, v5, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    move-object v4, v0

    .line 55
    :goto_0
    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 56
    .line 57
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 62
    .line 63
    const-string v6, "add_succ"

    .line 64
    .line 65
    new-instance v7, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v8, "location"

    .line 71
    .line 72
    invoke-virtual {v7, v8, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p5, "old_state"

    .line 76
    .line 77
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    const-string v4, "0"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string v4, "1"

    .line 89
    .line 90
    :goto_1
    invoke-virtual {v7, p5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    invoke-interface {v5, p1, v6, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    const/4 p5, 0x1

    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v3, p0, v2, v1, p5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    if-eqz p2, :cond_4

    .line 126
    .line 127
    const-class p2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 128
    .line 129
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 134
    .line 135
    if-eqz p0, :cond_3

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    if-eqz p0, :cond_3

    .line 142
    .line 143
    sget v0, Lcom/cloud/tmc/integration/R$string;->smallapp_create_success:I

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :cond_3
    invoke-interface {p2, v0}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iget-object p0, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 153
    .line 154
    const-string p2, "\u68c0\u67e5 addHomeToScreen \u8bbe\u7f6e\u684c\u9762\u5feb\u6377\u65b9\u5f0f callback"

    .line 155
    .line 156
    invoke-static {p0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Lcom/cloud/tmc/integration/structure/App;

    .line 170
    .line 171
    if-eqz p2, :cond_5

    .line 172
    .line 173
    const-class v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 174
    .line 175
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 180
    .line 181
    if-eqz p2, :cond_5

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-eqz p2, :cond_5

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 194
    .line 195
    if-eqz p2, :cond_5

    .line 196
    .line 197
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v1, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    const-string v2, "\u53d1\u9001 addHomeToScreen callback received"

    .line 205
    .line 206
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v1, "isExist"

    .line 210
    .line 211
    invoke-virtual {v0, v1, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .line 216
    .line 217
    :cond_5
    if-eq p4, p5, :cond_7

    .line 218
    .line 219
    const/4 p2, 0x2

    .line 220
    if-eq p4, p2, :cond_6

    .line 221
    .line 222
    :try_start_1
    const-class p0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 223
    .line 224
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    check-cast p0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 229
    .line 230
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    if-eqz p0, :cond_8

    .line 235
    .line 236
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->hideMiniAppAddHomeBar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :catchall_1
    move-exception p0

    .line 241
    :try_start_2
    iget-object p1, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 242
    .line 243
    const-string p2, "onReceive error: "

    .line 244
    .line 245
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    .line 258
    .line 259
    if-eqz p0, :cond_8

    .line 260
    .line 261
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    .line 274
    .line 275
    if-eqz p0, :cond_8

    .line 276
    .line 277
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->backPressed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :goto_2
    iget-object p1, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "miniAppId"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    move-object v2, p2

    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto/16 :goto_a

    .line 13
    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    if-eqz v2, :cond_6

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_9

    .line 25
    .line 26
    :cond_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;->getSourceType()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_2
    move v5, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    const/4 v0, -0x1

    .line 47
    goto :goto_2

    .line 48
    :goto_3
    if-eqz p2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;->getLocation()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_3
    :goto_4
    move-object v6, v0

    .line 58
    goto :goto_6

    .line 59
    :cond_4
    :goto_5
    const-string v0, ""

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :goto_6
    if-eqz p2, :cond_5

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;->getShowSuccessToast()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    :goto_7
    move v3, p2

    .line 69
    goto :goto_8

    .line 70
    :cond_5
    const/4 p2, 0x1

    .line 71
    goto :goto_7

    .line 72
    :goto_8
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "appId -> "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v1, "exteaAddHomeType:->"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "showSuccessToast:->"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v1, "extraAddHomeLocation:->"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance p2, Lcom/cloud/tmc/integration/broadcast/a;

    .line 161
    .line 162
    move-object v0, p2

    .line 163
    move-object v1, p1

    .line 164
    move-object v4, p0

    .line 165
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/broadcast/a;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_b

    .line 172
    :cond_6
    :goto_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 173
    .line 174
    const-string p2, "appid is null"

    .line 175
    .line 176
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :goto_a
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    .line 181
    .line 182
    const-string v0, "onReceive error: "

    .line 183
    .line 184
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :goto_b
    return-void
.end method
