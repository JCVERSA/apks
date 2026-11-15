.class public Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;
    }
.end annotation


# static fields
.field private static final ATTR_AUTO_PLAY:Ljava/lang/String; = "autoPlay"

.field private static final ATTR_BUFFERED:Ljava/lang/String; = "buffered"

.field private static final ATTR_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_LOOP:Ljava/lang/String; = "loop"

.field private static final ATTR_PAUSED:Ljava/lang/String; = "paused"

.field private static final ATTR_SRC:Ljava/lang/String; = "src"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "startTime"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field private static final KEY_AUDIO_PLAYER_ID:Ljava/lang/String; = "audioPlayerID"

.field private static final KEY_OPTION_ENTRY:Ljava/lang/String; = "option"

.field private static final ON_F_CAN_PLAY:Ljava/lang/String; = "onForegroundAudioCanPlay"

.field private static final ON_F_ENDED:Ljava/lang/String; = "onForegroundAudioEnded"

.field private static final ON_F_ERROR:Ljava/lang/String; = "onForegroundAudioError"

.field private static final ON_F_PAUSE:Ljava/lang/String; = "onForegroundAudioPause"

.field private static final ON_F_PLAY:Ljava/lang/String; = "onForegroundAudioPlay"

.field private static final ON_F_SEEKED:Ljava/lang/String; = "onForegroundAudioSeeked"

.field private static final ON_F_SEEKING:Ljava/lang/String; = "onForegroundAudioSeeking"

.field private static final ON_F_STOP:Ljava/lang/String; = "onForegroundAudioStop"

.field private static final ON_F_TIME_UPDATE:Ljava/lang/String; = "onForegroundAudioTimeUpdate"

.field private static final ON_F_WAITING:Ljava/lang/String; = "onForegroundAudioWaiting"

.field private static final TAG:Ljava/lang/String; = "ForegroundPlayerClient"


# instance fields
.field enableMultiAudio:Z

.field private foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

.field private isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mApp:Lcom/cloud/tmc/integration/structure/App;

.field private final mAppId:Ljava/lang/String;

.field private final mPlayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/audio/PlayerInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->enableMultiAudio:Z

    .line 16
    .line 17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 2
    .line 3
    return-void
.end method

.method private notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "success"

    .line 4
    .line 5
    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "audioPlayerID"

    .line 9
    .line 10
    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private declared-synchronized onGetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "onGetOption:### "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_a

    .line 38
    .line 39
    const-string v1, "src"

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string p2, "src"

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getSrc()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_1
    const-string v1, "autoPlay"

    .line 69
    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    const-string p2, "autoPlay"

    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getAutoPlay()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_2
    const-string v1, "loop"

    .line 99
    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    const-string p2, "loop"

    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getLoop()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_3
    const-string v1, "startTime"

    .line 129
    .line 130
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    const-string p2, "startTime"

    .line 137
    .line 138
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getStartTime()F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_4
    const-string v1, "volume"

    .line 159
    .line 160
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    const-string p2, "volume"

    .line 167
    .line 168
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getVolume()F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_5
    const-string v1, "duration"

    .line 189
    .line 190
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 195
    .line 196
    if-eqz v1, :cond_6

    .line 197
    .line 198
    const-string p2, "duration"

    .line 199
    .line 200
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getDuration()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    int-to-float v1, v1

    .line 205
    div-float/2addr v1, v2

    .line 206
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_6
    const-string v1, "currentTime"

    .line 223
    .line 224
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_7

    .line 229
    .line 230
    const-string p2, "currentTime"

    .line 231
    .line 232
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getCurrentPosition()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    int-to-float v1, v1

    .line 237
    div-float/2addr v1, v2

    .line 238
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_7
    const-string v1, "buffered"

    .line 255
    .line 256
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_8

    .line 261
    .line 262
    const-string p2, "buffered"

    .line 263
    .line 264
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getBufferedProgress()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_8
    const-string v1, "paused"

    .line 284
    .line 285
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_9

    .line 290
    .line 291
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    xor-int/lit8 p2, p2, 0x1

    .line 296
    .line 297
    const-string v1, "paused"

    .line 298
    .line 299
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getPlayerId()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->notifyAttr(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_9
    const-string p3, "ForegroundPlayerClient"

    .line 315
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v1, "InvalidParam : "

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {p3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v0, "error option = "

    .line 342
    .line 343
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->notifyInvalidParam(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_a
    const-string p3, "ForegroundPlayerClient"

    .line 358
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v1, "InvalidParam : "

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {p3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    new-instance p3, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v0, "error option = "

    .line 385
    .line 386
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->notifyInvalidParam(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .line 398
    .line 399
    :goto_0
    monitor-exit p0

    .line 400
    return-void

    .line 401
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    throw p1
.end method

.method private declared-synchronized onSetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "onSetOption:### "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    :goto_0
    const-string p1, "ForegroundPlayerClient"

    .line 36
    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "InvalidParam : "

    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const-string v1, "autoPlay"

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    const-string v1, "autoPlay"

    .line 82
    .line 83
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {p2, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    .line 87
    .line 88
    iput-object p3, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 89
    .line 90
    iput-boolean v2, p3, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p2

    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :goto_2
    move v3, v2

    .line 105
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_a

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    const-string v5, "src"

    .line 124
    .line 125
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    const-string v3, "src"

    .line 134
    .line 135
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setSrc(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_4

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    :goto_4
    move v3, v0

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    const-string v5, "loop"

    .line 153
    .line 154
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    const-string v3, "loop"

    .line 163
    .line 164
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setLoop(Z)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_4

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    const-string v5, "startTime"

    .line 180
    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_7

    .line 186
    .line 187
    if-eqz v3, :cond_4

    .line 188
    .line 189
    const-string v3, "startTime"

    .line 190
    .line 191
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setStartTime(I)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    const-string v5, "volume"

    .line 207
    .line 208
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_8

    .line 213
    .line 214
    if-eqz v3, :cond_4

    .line 215
    .line 216
    const-string v3, "volume"

    .line 217
    .line 218
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setVolume(F)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_4

    .line 231
    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_8
    const-string v5, "autoPlay"

    .line 235
    .line 236
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_9

    .line 241
    .line 242
    if-eqz v3, :cond_4

    .line 243
    .line 244
    const-string v3, "autoPlay"

    .line 245
    .line 246
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {p3, v3}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->setAutoPlay(Z)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_4

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_9
    const-string v3, "PlayerInstance"

    .line 263
    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v5, "InvalidParam : "

    .line 270
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .line 283
    .line 284
    goto/16 :goto_4

    .line 285
    .line 286
    :cond_a
    move v0, v3

    .line 287
    goto :goto_6

    .line 288
    :goto_5
    :try_start_2
    const-string p3, "ForegroundPlayerClient"

    .line 289
    .line 290
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_6
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    .line 295
    .line 296
    monitor-exit p0

    .line 297
    return-void

    .line 298
    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    throw p1
.end method

.method private sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addMonitor(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 30
    .line 31
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p1
.end method

.method public declared-synchronized destroy(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->releaseMediaPlayer()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p1
.end method

.method public declared-synchronized getAudioOption(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-direct {p0, p3, p2, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->onGetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public declared-synchronized pause(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pause()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public declared-synchronized pauseAppAudio()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "pauseAppAudio - appId="

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pause()Z

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 46
    .line 47
    iput-boolean v0, v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw v0
.end method

.method public declared-synchronized play(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 30
    .line 31
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->enableMultiAudio:Z

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pause()Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->play()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p1
.end method

.method public declared-synchronized releaseAppAudio()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "App releaseAppAudio appId = "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->releaseMediaPlayer()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_3

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_1
    :try_start_1
    const-string v1, "ForegroundPlayerClient"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :goto_2
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v0
.end method

.method public declared-synchronized removeMonitor(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 30
    .line 31
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->removeMonitors()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p1
.end method

.method public declared-synchronized restoreAppAudio()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ForegroundPlayerClient"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "restoreAppAudio - appId="

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mAppId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->foregroundPlayer:Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-boolean v2, v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iput-boolean v0, v1, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->play()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public declared-synchronized seek(Ljava/lang/String;FLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 30
    .line 31
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->seek(F)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-direct {p0, p1, p3}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p1
.end method

.method public declared-synchronized setAppPause(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    iput-boolean v1, v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isAppPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method

.method public declared-synchronized setAudioOption(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p3, p2, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->onSetOption(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public declared-synchronized stop(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->mPlayerMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->addMonitors()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->stop()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->sendResponse(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method
