.class public final Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J2\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004H\u0002J<\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;",
        "",
        "()V",
        "TAG",
        "",
        "dispatchToComponentCenter",
        "",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "dataJson",
        "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;",
        "dispatchToEventCenter",
        "insertNativeCover",
        "removeNativeCover",
        "sendErrorMsgToRender",
        "callbackId",
        "errCode",
        "errMsg",
        "abilityName",
        "sendSuccessMsgToRender",
        "methedName",
        "componentId",
        "builder",
        "Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;",
        "updateNativeCover",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

.field private static final TAG:Ljava/lang/String; = "NativeComponentEventCenter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$sendErrorMsgToRender(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final insertNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
    .locals 16

    .line 1
    move-object/from16 v9, p1

    .line 2
    .line 3
    const-string v10, "NativeComponentEventCenter"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz v9, :cond_0

    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    instance-of v2, v1, Landroid/webkit/WebView;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v1, Landroid/webkit/WebView;

    .line 19
    .line 20
    move-object v7, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v7, v0

    .line 23
    :goto_1
    if-eqz v7, :cond_2

    .line 24
    .line 25
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v2, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v2, v0

    .line 32
    :goto_2
    if-nez v2, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getArgs()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, ""

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    move-object v1, v3

    .line 44
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getCallbackId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_5

    .line 49
    .line 50
    move-object v11, v3

    .line 51
    goto :goto_3

    .line 52
    :cond_5
    move-object v11, v4

    .line 53
    :goto_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_6

    .line 58
    .line 59
    const/16 v7, 0x10

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    const-string v4, "2"

    .line 63
    .line 64
    const-string v5, "args is null"

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    move-object/from16 v1, p0

    .line 68
    .line 69
    move-object/from16 v2, p1

    .line 70
    .line 71
    move-object v3, v11

    .line 72
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    :try_start_0
    invoke-static {v1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object v8, v1

    .line 87
    goto :goto_4

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_18

    .line 90
    .line 91
    :cond_7
    move-object v8, v0

    .line 92
    :goto_4
    if-eqz v8, :cond_8

    .line 93
    .line 94
    const-string v1, "renderId"

    .line 95
    .line 96
    invoke-virtual {v8, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_8

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_5

    .line 107
    :cond_8
    move-object v1, v0

    .line 108
    :goto_5
    if-eqz v8, :cond_9

    .line 109
    .line 110
    const-string v4, "name"

    .line 111
    .line 112
    invoke-virtual {v8, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_9

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    goto :goto_6

    .line 123
    :cond_9
    move-object v4, v0

    .line 124
    :goto_6
    if-eqz v8, :cond_a

    .line 125
    .line 126
    const-string v5, "viewId"

    .line 127
    .line 128
    invoke-virtual {v8, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-eqz v5, :cond_a

    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    goto :goto_7

    .line 139
    :cond_a
    move-object v5, v0

    .line 140
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const/16 v12, 0x2c

    .line 149
    .line 150
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v10, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v6, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 170
    .line 171
    if-nez v5, :cond_b

    .line 172
    .line 173
    move-object v5, v3

    .line 174
    :cond_b
    if-nez v1, :cond_c

    .line 175
    .line 176
    move-object v12, v3

    .line 177
    goto :goto_8

    .line 178
    :cond_c
    move-object v12, v1

    .line 179
    :goto_8
    if-nez v4, :cond_d

    .line 180
    .line 181
    move-object v13, v3

    .line 182
    goto :goto_9

    .line 183
    :cond_d
    move-object v13, v4

    .line 184
    :goto_9
    move-object v1, v6

    .line 185
    move-object v3, v5

    .line 186
    move-object v4, v12

    .line 187
    move-object v5, v13

    .line 188
    move-object/from16 v6, p1

    .line 189
    .line 190
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->addNativeComponent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-nez v1, :cond_e

    .line 195
    .line 196
    sget-object v1, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 197
    .line 198
    const-string v4, "3"

    .line 199
    .line 200
    const-string v5, "Component creat failed"

    .line 201
    .line 202
    const/16 v7, 0x10

    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    const/4 v6, 0x0

    .line 206
    move-object/from16 v2, p1

    .line 207
    .line 208
    move-object v3, v11

    .line 209
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_e
    if-eqz v8, :cond_f

    .line 214
    .line 215
    const-string v2, "style"

    .line 216
    .line 217
    invoke-virtual {v8, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eqz v2, :cond_f

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    goto :goto_a

    .line 228
    :cond_f
    move-object v2, v0

    .line 229
    :goto_a
    if-eqz v8, :cond_10

    .line 230
    .line 231
    const-string v3, "position"

    .line 232
    .line 233
    invoke-virtual {v8, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-eqz v3, :cond_10

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    goto :goto_b

    .line 244
    :cond_10
    move-object v3, v0

    .line 245
    :goto_b
    if-eqz v2, :cond_11

    .line 246
    .line 247
    const-string v4, "bgColor"

    .line 248
    .line 249
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    if-eqz v4, :cond_11

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    goto :goto_c

    .line 260
    :cond_11
    move-object v4, v0

    .line 261
    :goto_c
    if-eqz v3, :cond_12

    .line 262
    .line 263
    const-string v5, "width"

    .line 264
    .line 265
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    if-eqz v5, :cond_12

    .line 270
    .line 271
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    goto :goto_d

    .line 280
    :cond_12
    move-object v5, v0

    .line 281
    :goto_d
    if-eqz v3, :cond_13

    .line 282
    .line 283
    const-string v6, "height"

    .line 284
    .line 285
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    if-eqz v6, :cond_13

    .line 290
    .line 291
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    goto :goto_e

    .line 300
    :cond_13
    move-object v6, v0

    .line 301
    :goto_e
    if-eqz v3, :cond_14

    .line 302
    .line 303
    const-string v12, "left"

    .line 304
    .line 305
    invoke-virtual {v3, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    if-eqz v12, :cond_14

    .line 310
    .line 311
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 312
    .line 313
    .line 314
    move-result v12

    .line 315
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    goto :goto_f

    .line 320
    :cond_14
    move-object v12, v0

    .line 321
    :goto_f
    if-eqz v3, :cond_15

    .line 322
    .line 323
    const-string v13, "top"

    .line 324
    .line 325
    invoke-virtual {v3, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    if-eqz v3, :cond_15

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    goto :goto_10

    .line 340
    :cond_15
    move-object v3, v0

    .line 341
    :goto_10
    const/4 v13, 0x0

    .line 342
    if-eqz v2, :cond_16

    .line 343
    .line 344
    const-string v14, "zIndex"

    .line 345
    .line 346
    invoke-virtual {v2, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    if-eqz v14, :cond_16

    .line 351
    .line 352
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    goto :goto_11

    .line 357
    :cond_16
    move v14, v13

    .line 358
    :goto_11
    if-eqz v8, :cond_17

    .line 359
    .line 360
    const-string v15, "customData"

    .line 361
    .line 362
    invoke-virtual {v8, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    if-eqz v8, :cond_17

    .line 367
    .line 368
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    :cond_17
    if-eqz v2, :cond_18

    .line 373
    .line 374
    const-string v8, "fixed"

    .line 375
    .line 376
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    if-eqz v2, :cond_18

    .line 381
    .line 382
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 383
    .line 384
    .line 385
    move-result v13

    .line 386
    :cond_18
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentView()Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    if-eqz v4, :cond_19

    .line 391
    .line 392
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 397
    .line 398
    .line 399
    :cond_19
    if-eqz v5, :cond_1a

    .line 400
    .line 401
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    goto :goto_12

    .line 410
    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 415
    .line 416
    :goto_12
    if-eqz v6, :cond_1b

    .line 417
    .line 418
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    goto :goto_13

    .line 427
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    .line 433
    :goto_13
    if-eqz v12, :cond_1c

    .line 434
    .line 435
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    goto :goto_14

    .line 444
    :cond_1c
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    float-to-int v6, v6

    .line 449
    :goto_14
    if-eqz v3, :cond_1d

    .line 450
    .line 451
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    goto :goto_15

    .line 460
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    float-to-int v3, v3

    .line 465
    :goto_15
    if-lez v14, :cond_1e

    .line 466
    .line 467
    int-to-float v8, v14

    .line 468
    invoke-virtual {v2, v8}, Landroid/view/View;->setZ(F)V

    .line 469
    .line 470
    .line 471
    :cond_1e
    if-eqz v13, :cond_20

    .line 472
    .line 473
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 474
    .line 475
    invoke-direct {v7, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    .line 480
    .line 481
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-eqz v4, :cond_1f

    .line 486
    .line 487
    int-to-float v4, v6

    .line 488
    neg-float v4, v4

    .line 489
    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 490
    .line 491
    .line 492
    int-to-float v3, v3

    .line 493
    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 494
    .line 495
    .line 496
    goto :goto_16

    .line 497
    :cond_1f
    int-to-float v4, v6

    .line 498
    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 499
    .line 500
    .line 501
    int-to-float v3, v3

    .line 502
    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 503
    .line 504
    .line 505
    :goto_16
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/node/Node;->addFixedView(Landroid/view/View;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v13}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->setFixed(Z)V

    .line 513
    .line 514
    .line 515
    goto :goto_17

    .line 516
    :cond_20
    new-instance v8, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 517
    .line 518
    invoke-direct {v8, v4, v5, v6, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 525
    .line 526
    .line 527
    :goto_17
    new-instance v2, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;

    .line 528
    .line 529
    invoke-direct {v2, v9, v11, v1}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;-><init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V

    .line 530
    .line 531
    .line 532
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    const/16 v7, 0x10

    .line 545
    .line 546
    const/4 v8, 0x0

    .line 547
    const-string v4, "4"

    .line 548
    .line 549
    const/4 v6, 0x0

    .line 550
    move-object/from16 v1, p0

    .line 551
    .line 552
    move-object/from16 v2, p1

    .line 553
    .line 554
    move-object v3, v11

    .line 555
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v10, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    .line 560
    .line 561
    return-void
.end method

.method private final removeNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
    .locals 12

    .line 1
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/webkit/WebView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getArgs()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getCallbackId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v3, "callbackId"

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v4, "viewId"

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v5, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 55
    .line 56
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v4, "renderId"

    .line 60
    .line 61
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v0, v2, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->removeNativeComponent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/16 v10, 0x30

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    const-string v5, "removeNativeCover"

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v3, p0

    .line 79
    move-object v4, p1

    .line 80
    move-object v7, p2

    .line 81
    invoke-static/range {v3 .. v11}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendSuccessMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    :goto_1
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/16 v9, 0x10

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    const-string v6, "2"

    .line 92
    .line 93
    const-string v7, "args is null"

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    move-object v3, p0

    .line 97
    move-object v4, p1

    .line 98
    move-object v5, p2

    .line 99
    invoke-static/range {v3 .. v10}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private final sendErrorMsgToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callbackId"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "abilityName"

    .line 17
    .line 18
    invoke-virtual {v2, v3, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 25
    .line 26
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    const-string v1, "success"

    .line 32
    .line 33
    invoke-virtual {p2, v1, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    const-string p5, "errMsg"

    .line 37
    .line 38
    invoke-virtual {p2, p5, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p4, "errCode"

    .line 42
    .line 43
    invoke-virtual {p2, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string p3, "dataJson"

    .line 51
    .line 52
    invoke-virtual {v2, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string p3, "message"

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string p3, "call"

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    if-eqz p3, :cond_0

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const/4 p3, 0x0

    .line 93
    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void
.end method

.method static synthetic sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p5, "DispatchNativeComponent"

    .line 6
    .line 7
    :cond_0
    move-object v5, p5

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic sendSuccessMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x10

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const-string p5, "DispatchNativeComponent"

    .line 6
    .line 7
    :cond_0
    move-object v5, p5

    .line 8
    and-int/lit8 p5, p7, 0x20

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    const/4 p6, 0x0

    .line 13
    :cond_1
    move-object v6, p6

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move-object v3, p3

    .line 18
    move-object v4, p4

    .line 19
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendSuccessMsgToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final updateNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getArgs()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getCallbackId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p2, ""

    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "viewId"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "style"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v3, v4

    .line 46
    :goto_0
    const-string v5, "position"

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v5, v4

    .line 60
    :goto_1
    if-eqz v3, :cond_3

    .line 61
    .line 62
    const-string v6, "bgColor"

    .line 63
    .line 64
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move-object v6, v4

    .line 76
    :goto_2
    if-eqz v5, :cond_4

    .line 77
    .line 78
    const-string v7, "width"

    .line 79
    .line 80
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    if-eqz v7, :cond_4

    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    move-object v7, v4

    .line 96
    :goto_3
    if-eqz v5, :cond_5

    .line 97
    .line 98
    const-string v8, "height"

    .line 99
    .line 100
    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-eqz v8, :cond_5

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move-object v8, v4

    .line 116
    :goto_4
    if-eqz v5, :cond_6

    .line 117
    .line 118
    const-string v9, "left"

    .line 119
    .line 120
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    if-eqz v9, :cond_6

    .line 125
    .line 126
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    move-object v9, v4

    .line 136
    :goto_5
    if-eqz v5, :cond_7

    .line 137
    .line 138
    const-string v10, "top"

    .line 139
    .line 140
    invoke-virtual {v5, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    goto :goto_6

    .line 155
    :cond_7
    move-object v5, v4

    .line 156
    :goto_6
    if-eqz v3, :cond_8

    .line 157
    .line 158
    const-string v10, "zIndex"

    .line 159
    .line 160
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_8

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    goto :goto_7

    .line 171
    :cond_8
    const/4 v3, 0x0

    .line 172
    :goto_7
    const-string v10, "customData"

    .line 173
    .line 174
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    :cond_9
    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 185
    .line 186
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_12

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentView()Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_12

    .line 200
    .line 201
    if-eqz v6, :cond_a

    .line 202
    .line 203
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    .line 209
    .line 210
    :cond_a
    if-eqz v7, :cond_b

    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    goto :goto_8

    .line 221
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    .line 227
    :goto_8
    if-eqz v8, :cond_c

    .line 228
    .line 229
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    goto :goto_9

    .line 238
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    .line 244
    :goto_9
    if-eqz v9, :cond_d

    .line 245
    .line 246
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-static {v7}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    goto :goto_a

    .line 255
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    float-to-int v7, v7

    .line 260
    :goto_a
    if-eqz v5, :cond_e

    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    goto :goto_b

    .line 271
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    float-to-int v5, v5

    .line 276
    :goto_b
    if-lez v3, :cond_f

    .line 277
    .line 278
    int-to-float v3, v3

    .line 279
    invoke-virtual {v1, v3}, Landroid/view/View;->setZ(F)V

    .line 280
    .line 281
    .line 282
    :cond_f
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->isFixed()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_11

    .line 287
    .line 288
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    .line 290
    invoke-direct {v3, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_10

    .line 301
    .line 302
    int-to-float v2, v7

    .line 303
    neg-float v2, v2

    .line 304
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 305
    .line 306
    .line 307
    int-to-float v2, v5

    .line 308
    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 309
    .line 310
    .line 311
    goto :goto_c

    .line 312
    :cond_10
    int-to-float v2, v7

    .line 313
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 314
    .line 315
    .line 316
    int-to-float v2, v5

    .line 317
    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 318
    .line 319
    .line 320
    goto :goto_c

    .line 321
    :cond_11
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 322
    .line 323
    invoke-direct {v3, v2, v6, v7, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    .line 328
    .line 329
    :goto_c
    new-instance v1, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;

    .line 330
    .line 331
    invoke-direct {v1, p1, p2, v0}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;-><init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V

    .line 332
    .line 333
    .line 334
    invoke-interface {v0, v4, v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onUpdateView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V

    .line 335
    .line 336
    .line 337
    :cond_12
    return-void
.end method


# virtual methods
.method public final dispatchToComponentCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
    .locals 9

    .line 1
    const-string v0, "dataJson"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "NativeComponentEventCenter"

    .line 9
    .line 10
    const-string p2, "render is null "

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getMethodName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v2, -0x207f8144

    .line 27
    .line 28
    .line 29
    if-eq v1, v2, :cond_5

    .line 30
    .line 31
    const v2, -0x6804e99

    .line 32
    .line 33
    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    const v2, 0x22e4d157

    .line 37
    .line 38
    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "updateNativeCover"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->updateNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const-string v1, "insertNativeCover"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->insertNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    const-string v1, "removeNativeCover"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->removeNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getCallbackId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string p2, "dataJson.callbackId"

    .line 86
    .line 87
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/16 v7, 0x10

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    const-string v4, "1"

    .line 94
    .line 95
    const-string v5, "method is not exist"

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    move-object v1, p0

    .line 99
    move-object v2, p1

    .line 100
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method public final dispatchToEventCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
    .locals 4

    .line 1
    const-string v0, "dataJson"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "NativeComponentEventCenter"

    .line 9
    .line 10
    const-string p2, "render is null "

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getCallbackId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getMethodName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->getArgs()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    move-object v1, p2

    .line 40
    :goto_0
    invoke-static {v1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    move-object p2, v1

    .line 53
    :goto_1
    if-eqz p2, :cond_5

    .line 54
    .line 55
    const-string v3, "viewId"

    .line 56
    .line 57
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_5
    if-eqz v1, :cond_7

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    sget-object v3, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    new-instance v3, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;

    .line 85
    .line 86
    invoke-direct {v3, p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;-><init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, p2, v3}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    :goto_2
    return-void
.end method

.method public final sendSuccessMsgToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V
    .locals 5

    .line 1
    const-string v0, "render"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "methedName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "componentId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "callbackId"

    .line 17
    .line 18
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "abilityName"

    .line 22
    .line 23
    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "success"

    .line 27
    .line 28
    if-eqz p6, :cond_0

    .line 29
    .line 30
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p6, v3, v4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p6

    .line 36
    if-eqz p6, :cond_0

    .line 37
    .line 38
    invoke-virtual {p6}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    .line 41
    move-result-object p6

    .line 42
    if-nez p6, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p6

    .line 48
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p6, v3, v4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p6

    .line 54
    invoke-virtual {p6}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 55
    .line 56
    .line 57
    move-result-object p6

    .line 58
    :cond_1
    const-string v3, "builder?.addProperty(KEY\u2026LT_SUCCESS, true).build()"

    .line 59
    .line 60
    invoke-static {p6, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v2, p5}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p5

    .line 71
    invoke-virtual {p5, v0, p3}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    const-string v0, "renderId"

    .line 80
    .line 81
    invoke-virtual {p3, v0, p5}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    const-string p5, "methodName"

    .line 86
    .line 87
    invoke-virtual {p3, p5, p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const-string p3, "type"

    .line 92
    .line 93
    const-string p5, "nativeCall"

    .line 94
    .line 95
    invoke-virtual {p2, p3, p5}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, v1, p4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string p3, "dataJson"

    .line 104
    .line 105
    invoke-virtual {p2, p3, p6}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const-string p5, "create()\n            .ad\u2026son)\n            .build()"

    .line 114
    .line 115
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p6

    .line 122
    invoke-virtual {p6, v1, p4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    invoke-virtual {p4, p3, p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    const-string p4, "message"

    .line 142
    .line 143
    invoke-virtual {p3, p4}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    const-string p4, "call"

    .line 148
    .line 149
    invoke-virtual {p3, p4}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p3, p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    if-eqz p3, :cond_2

    .line 162
    .line 163
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    const/4 p3, 0x0

    .line 172
    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    return-void
.end method
