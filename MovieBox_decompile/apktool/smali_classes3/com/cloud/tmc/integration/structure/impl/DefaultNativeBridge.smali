.class public Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/NativeBridge;


# static fields
.field public static final TAG:Ljava/lang/String; = "TmcEngine:NativeBridge"


# instance fields
.field private mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    .line 6
    .line 7
    return-void
.end method

.method private executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    .locals 6
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "TmcEngine:NativeBridge"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "executeNative but bridgeContext == null!"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string v2, "executeNative with node == null!!! may cause memory leak"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    instance-of v2, v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->setRender(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    instance-of v2, v2, Lcom/cloud/tmc/integration/structure/App;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    .line 64
    .line 65
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->setRender(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRegisteredRender()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/cloud/tmc/kernel/render/IRender;

    .line 104
    .line 105
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->takeCallback(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_4

    .line 125
    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string p3, "executeNative hit callback! "

    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {v4, p1}, Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    .line 155
    .line 156
    .line 157
    return v3

    .line 158
    :cond_6
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_7

    .line 167
    .line 168
    const-string p1, "cannot dispatch empty API!"

    .line 169
    .line 170
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return v3

    .line 174
    :cond_7
    new-instance v2, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 175
    .line 176
    new-instance v4, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;

    .line 177
    .line 178
    invoke-direct {v4, p0, p2}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;-><init>(Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v2, v4}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;-><init>(Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getCallbackId()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->setCallbackId(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "executeNative jsapi req name={"

    .line 197
    .line 198
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v4, "} "

    .line 209
    .line 210
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v4, " "

    .line 221
    .line 222
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p2, p1, v2, p3}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)Z

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    if-eqz p2, :cond_8

    .line 248
    .line 249
    return v3

    .line 250
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v4, "executeNative but not found Extension!"

    .line 256
    .line 257
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    if-eqz p3, :cond_9

    .line 275
    .line 276
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->doCheckPermission(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    .line 277
    .line 278
    .line 279
    move-result p2
    :try_end_0
    .catch Lcom/cloud/tmc/kernel/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    if-eqz p2, :cond_9

    .line 281
    .line 282
    return v3

    .line 283
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string p3, "executeNative check failed for legacy call! "

    .line 289
    .line 290
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNoRigHtToInvoke()V

    .line 308
    .line 309
    .line 310
    return v3

    .line 311
    :cond_9
    const-class p2, Lcom/cloud/tmc/kernel/point/NativeCallNotFoundPoint;

    .line 312
    .line 313
    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 318
    .line 319
    .line 320
    move-result-object p3

    .line 321
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    check-cast p2, Lcom/cloud/tmc/kernel/point/NativeCallNotFoundPoint;

    .line 330
    .line 331
    invoke-interface {p2, p1, v2}, Lcom/cloud/tmc/kernel/point/NativeCallNotFoundPoint;->handleNotFound(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_a

    .line 336
    .line 337
    const-string p1, "executeNative handleNotFound intercepted"

    .line 338
    .line 339
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return v3

    .line 343
    :cond_a
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNotFound()V

    .line 344
    .line 345
    .line 346
    return v0
.end method


# virtual methods
.method public bindEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 2
    .line 3
    return-void
.end method

.method public doCheckPermission(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/security/AccessControlException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;-><init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/security/AccessController;->setAccessControlManagement(Lcom/cloud/tmc/kernel/security/AccessControlManagement;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;

    .line 28
    .line 29
    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v2, v3, v4}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/cloud/tmc/kernel/security/Permission;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {p2, v1, v0, v2}, Lcom/cloud/tmc/kernel/security/AccessController;->check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const-string v0, "TmcEngine:NativeBridge"

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "executeNative check pending! "

    .line 67
    .line 68
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "executeNative check success! "

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    return p1
.end method

.method public getNativeCallResultPoint(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;)Lcom/cloud/tmc/kernel/point/NativeCallResultPoint;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/point/NativeCallResultPoint;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/cloud/tmc/kernel/point/NativeCallResultPoint;

    .line 20
    .line 21
    return-object p1
.end method

.method protected onRelease()V
    .locals 0

    .line 1
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->onRelease()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z
    .locals 1
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    const-string p1, "TmcEngine:NativeBridge"

    const-string p2, "sendToNative but released!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    .locals 1
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    :goto_0
    const-string p1, "TmcEngine:NativeBridge"

    const-string p2, "sendToNative but released!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
