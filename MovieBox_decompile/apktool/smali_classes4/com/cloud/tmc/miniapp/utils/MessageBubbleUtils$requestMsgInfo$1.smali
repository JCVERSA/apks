.class public final Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO0O0(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/utils/OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO00o:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO0OO:Lcom/cloud/tmc/miniapp/utils/OooO0O0;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1$getType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1$getType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "object :\n               \u2026iAppMsgModel?>>() {}.type"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "fail"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getCode()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "updateDateMsgStatus ErrCode:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ",errMsg:"

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "MessageBubbleUtils"

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, ""

    .line 2
    .line 3
    const-string v0, "MessageBubbleUtils"

    .line 4
    .line 5
    const-string v1, "bean"

    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_0
    :goto_0
    move-object v1, p2

    .line 29
    :cond_1
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 30
    .line 31
    if-eqz p1, :cond_b

    .line 32
    .line 33
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "updateDateMsgStatus dataObj = "

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->getSuccessUpdateSwitchStatus()Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v3, 0x1

    .line 65
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->getWebQueryTimestamp()Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    :goto_2
    if-eqz v3, :cond_4

    .line 81
    .line 82
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0o;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO00o:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v3, v6, v4, v5}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o(Landroid/content/Context;J)V

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->getMiniappMessageInfos()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-lez v4, :cond_5

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v5, "updateDateMsgStatus msgInfo = $"

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO00o:Landroid/content/Context;

    .line 126
    .line 127
    const-string v4, "context"

    .line 128
    .line 129
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v4, "msgDataStr"

    .line 133
    .line 134
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    :try_start_2
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 142
    .line 143
    const-string v5, "miniMsgCacheData"

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-interface {v4, v3, v5, v6, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catchall_1
    move-exception v1

    .line 158
    :try_start_3
    const-string v3, "MiniappMsgDataProvider"

    .line 159
    .line 160
    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->getLastlyMessageInfo()Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_a

    .line 168
    .line 169
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO00o:Landroid/content/Context;

    .line 170
    .line 171
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 172
    .line 173
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;->getMiniappId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-nez v4, :cond_6

    .line 181
    .line 182
    move-object v4, p2

    .line 183
    :cond_6
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;->getMiniappName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-nez p1, :cond_7

    .line 188
    .line 189
    move-object p1, p2

    .line 190
    :cond_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-lez v5, :cond_9

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-lez v5, :cond_9

    .line 201
    .line 202
    sget-object v5, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0o;

    .line 203
    .line 204
    invoke-virtual {v5, v1, v4}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_8

    .line 209
    .line 210
    const-string v6, "miniappId"

    .line 211
    .line 212
    invoke-virtual {v3, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v6, "miniappName"

    .line 216
    .line 217
    invoke-virtual {v3, v6, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v6, "updateLatestUnreadMsg miniappId "

    .line 226
    .line 227
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {v5, v1, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v1, "miniappId ->"

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v1, " msg switch is closed"

    .line 262
    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_9
    const-string p1, "miniappId or miniappName is null "

    .line 275
    .line 276
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_a
    const/4 p1, 0x0

    .line 283
    :goto_5
    if-nez p1, :cond_c

    .line 284
    .line 285
    const-string p1, "latestMsgInfo is null"

    .line 286
    .line 287
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_b
    const-string p1, "updateDateMsgStatus no new msg "

    .line 292
    .line 293
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_c
    :goto_6
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    move-object v1, p1

    .line 301
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 302
    .line 303
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO00o:Landroid/content/Context;

    .line 304
    .line 305
    const-string v3, "miniMsgKvId"

    .line 306
    .line 307
    const-string v4, "miniLatestUpdate"

    .line 308
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 310
    .line 311
    .line 312
    move-result-wide v5

    .line 313
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 314
    .line 315
    .line 316
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 317
    .line 318
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 319
    .line 320
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;->OooO0OO:Lcom/cloud/tmc/miniapp/utils/OooO0O0;

    .line 321
    .line 322
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :goto_7
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .line 328
    .line 329
    :goto_8
    return-void
.end method
