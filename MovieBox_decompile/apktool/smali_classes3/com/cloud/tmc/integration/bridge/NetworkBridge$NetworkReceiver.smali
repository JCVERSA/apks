.class public Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/NetworkBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkReceiver"
.end annotation


# static fields
.field private static ETHERNET_TIME:J = 0x0L

.field private static LAST_TYPE:I = -0x3

.field private static final NETWORK_MOBILE:I = 0x1

.field private static final NETWORK_NONE:I = -0x1

.field private static final NETWORK_WIFI:I = 0x0

.field private static NONE_TIME:J = 0x0L

.field private static TAG:Ljava/lang/String; = "NetworkReceiver"

.field private static WIFI_TIME:J


# instance fields
.field private lastNetworkType:Ljava/lang/String;

.field private list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "networkType"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "weakNet"

    .line 16
    .line 17
    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "connectivity"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    return v0
.end method


# virtual methods
.method public addAll(Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public clearNetworkChangeListenModel(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    .line 30
    .line 31
    iget-wide v2, v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->appNodeId:J

    .line 32
    .line 33
    cmp-long v2, v0, v2

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    const-string v1, "WIFI"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_6

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sget-wide v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->WIFI_TIME:J

    .line 22
    .line 23
    cmp-long p2, v2, v4

    .line 24
    .line 25
    if-eqz p2, :cond_6

    .line 26
    .line 27
    sget-wide v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->ETHERNET_TIME:J

    .line 28
    .line 29
    cmp-long p2, v2, v4

    .line 30
    .line 31
    if-eqz p2, :cond_6

    .line 32
    .line 33
    sget-wide v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->NONE_TIME:J

    .line 34
    .line 35
    cmp-long p2, v2, v4

    .line 36
    .line 37
    if-eqz p2, :cond_6

    .line 38
    .line 39
    invoke-static {p1}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->getNetworkState(Landroid/content/Context;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    sget v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    sput-wide v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->WIFI_TIME:J

    .line 50
    .line 51
    sput p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p2, "wifi\uff1a"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    .line 85
    .line 86
    iget-object v0, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 87
    .line 88
    iget-object v2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_0

    .line 97
    .line 98
    iget-object p2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 105
    .line 106
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_0

    .line 111
    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    const/4 p2, 0x0

    .line 115
    invoke-direct {p0, v1, p2}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    const/4 v1, 0x1

    .line 124
    if-ne p2, v1, :cond_4

    .line 125
    .line 126
    sput-wide v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->ETHERNET_TIME:J

    .line 127
    .line 128
    sput p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    .line 129
    .line 130
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->getDetailNetworkType(Landroid/content/Context;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v0, "\u6570\u636e\u7f51\u7edc\uff1a"

    .line 140
    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, "\uff1a"

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_2

    .line 162
    .line 163
    return-void

    .line 164
    :cond_2
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    .line 165
    .line 166
    const-string p2, "2G"

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    .line 189
    .line 190
    iget-object v2, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 191
    .line 192
    iget-object v3, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 193
    .line 194
    if-eqz v3, :cond_3

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-eqz v3, :cond_3

    .line 201
    .line 202
    iget-object v1, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    .line 209
    .line 210
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_3

    .line 215
    .line 216
    if-eqz v2, :cond_3

    .line 217
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_4
    const/4 p1, -0x1

    .line 227
    if-ne p2, p1, :cond_6

    .line 228
    .line 229
    sget v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    .line 230
    .line 231
    if-eq v4, p1, :cond_6

    .line 232
    .line 233
    sput-wide v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->NONE_TIME:J

    .line 234
    .line 235
    sput p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    .line 236
    .line 237
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    .line 238
    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string p2, "\u65e0\u7f51\u7edc\uff1a"

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_6

    .line 263
    .line 264
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    .line 269
    .line 270
    iget-object v2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 271
    .line 272
    iget-object v3, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 273
    .line 274
    if-eqz v3, :cond_5

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    if-eqz v3, :cond_5

    .line 281
    .line 282
    iget-object p2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    .line 283
    .line 284
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 289
    .line 290
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    if-nez p2, :cond_5

    .line 295
    .line 296
    if-eqz v2, :cond_5

    .line 297
    .line 298
    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-interface {v2, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :catchall_0
    :cond_6
    return-void
.end method
