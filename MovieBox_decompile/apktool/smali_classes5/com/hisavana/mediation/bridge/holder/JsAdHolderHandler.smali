.class public final Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JO\u0010\u000f\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u001b\u001a\n \u0018*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;",
        "",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "bridgeListener",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "",
        "callbackId",
        "codeSeatId",
        "",
        "adType",
        "extInfo",
        "adCount",
        "bannerWidth",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "createAdHolder",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "release",
        "()V",
        "a",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "getBridgeListener",
        "()Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "c",
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "jsBannerAdHolder",
        "mediation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

.field public final b:Ljava/lang/String;

.field public c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/listener/BridgeListener;)V
    .locals 1

    .line 1
    const-string v0, "bridgeListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 10
    .line 11
    const-class p1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->b:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic createAdHolder$default(Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x8

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    and-int/lit8 p4, p7, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p5, 0x1

    .line 12
    :cond_1
    move v5, p5

    .line 13
    and-int/lit8 p4, p7, 0x20

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    const/4 p6, 0x0

    .line 18
    :cond_2
    move v6, p6

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move v3, p3

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->createAdHolder(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public final createAdHolder(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II)",
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    move-object v4, p1

    .line 3
    move-object v5, p2

    .line 4
    move v6, p3

    .line 5
    move-object v0, p4

    .line 6
    const-string v2, "callbackId"

    .line 7
    .line 8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "codeSeatId"

    .line 12
    .line 13
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    :try_start_0
    new-instance v3, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler$createAdHolder$1$map$1;

    .line 21
    .line 22
    invoke-direct {v3}, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler$createAdHolder$1$map$1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {p4, v3}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "fromJson(...)"

    .line 34
    .line 35
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Ljava/util/Map;

    .line 39
    .line 40
    const-string v3, "gameName"

    .line 41
    .line 42
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object v3, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_0
    move-object v3, v2

    .line 59
    :cond_1
    :try_start_1
    const-string v7, "gameScene"

    .line 60
    .line 61
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v2, v0

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    move-object v0, v2

    .line 79
    move-object v2, v3

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iget-object v8, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->b:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v10, "createAdHolder error: "

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v7, v8, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    move-object v0, v2

    .line 109
    :goto_3
    const/4 v3, 0x0

    .line 110
    const/4 v7, 0x6

    .line 111
    const/4 v8, 0x1

    .line 112
    const/4 v9, 0x0

    .line 113
    if-eq v6, v8, :cond_c

    .line 114
    .line 115
    const/4 v10, 0x2

    .line 116
    if-eq v6, v10, :cond_7

    .line 117
    .line 118
    const/4 v10, 0x3

    .line 119
    if-eq v6, v10, :cond_6

    .line 120
    .line 121
    const/4 v10, 0x5

    .line 122
    if-eq v6, v10, :cond_5

    .line 123
    .line 124
    if-eq v6, v7, :cond_c

    .line 125
    .line 126
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v2, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->b:Ljava/lang/String;

    .line 131
    .line 132
    const-string v3, "Splash Ad is not supported in Mediation SDK"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v9

    .line 138
    :cond_5
    new-instance v3, Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 139
    .line 140
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-direct {v3, v7, p2}, Lcom/hisavana/mediation/ad/TRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2, v0, v9}, Lfe/b;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;

    .line 151
    .line 152
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 153
    .line 154
    move-object v2, v0

    .line 155
    move-object v4, p1

    .line 156
    move-object v5, p2

    .line 157
    move v6, p3

    .line 158
    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;-><init>(Lcom/hisavana/mediation/ad/TRewardedAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :cond_6
    new-instance v3, Lcom/hisavana/mediation/ad/TInterstitialAd;

    .line 163
    .line 164
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-direct {v3, v7, p2}, Lcom/hisavana/mediation/ad/TInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v2, v0, v9}, Lfe/b;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsInterstitialAdHolder;

    .line 175
    .line 176
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 177
    .line 178
    move-object v2, v0

    .line 179
    move-object v4, p1

    .line 180
    move-object v5, p2

    .line 181
    move v6, p3

    .line 182
    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsInterstitialAdHolder;-><init>(Lcom/hisavana/mediation/ad/TInterstitialAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_7
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 187
    .line 188
    if-eqz v7, :cond_8

    .line 189
    .line 190
    invoke-virtual {v7}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->isRelease()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-ne v7, v8, :cond_8

    .line 195
    .line 196
    iput-object v9, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 197
    .line 198
    :cond_8
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 199
    .line 200
    if-nez v7, :cond_9

    .line 201
    .line 202
    new-instance v7, Lcom/hisavana/mediation/ad/TBannerView;

    .line 203
    .line 204
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-direct {v7, v8}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, p2}, Lcom/hisavana/mediation/ad/TBannerView;->setAdUnitId(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v3}, Lcom/hisavana/mediation/ad/TBannerView;->setAdSize(I)V

    .line 215
    .line 216
    .line 217
    const/16 v3, 0x32

    .line 218
    .line 219
    move/from16 v8, p6

    .line 220
    .line 221
    invoke-virtual {v7, v8, v3}, Lcom/hisavana/mediation/ad/TBannerView;->setCustomSizeForYandexAndLiftoff(II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v2, v0, v9}, Lcom/hisavana/mediation/ad/TBannerView;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 228
    .line 229
    iget-object v8, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 230
    .line 231
    move-object v2, v0

    .line 232
    move-object v3, v7

    .line 233
    move-object v4, p1

    .line 234
    move-object v5, p2

    .line 235
    move v6, p3

    .line 236
    move-object v7, v8

    .line 237
    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;-><init>(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    .line 238
    .line 239
    .line 240
    iput-object v0, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_9
    invoke-virtual {v7, p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->setCallbackId(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v3, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 247
    .line 248
    if-eqz v3, :cond_a

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Lcom/hisavana/mediation/ad/TBannerView;

    .line 255
    .line 256
    if-eqz v3, :cond_a

    .line 257
    .line 258
    invoke-virtual {v3, p2}, Lcom/hisavana/mediation/ad/TBannerView;->setAdUnitId(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    iget-object v3, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 262
    .line 263
    if-eqz v3, :cond_b

    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Lcom/hisavana/mediation/ad/TBannerView;

    .line 270
    .line 271
    if-eqz v3, :cond_b

    .line 272
    .line 273
    invoke-virtual {v3, v2, v0, v9}, Lcom/hisavana/mediation/ad/TBannerView;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 274
    .line 275
    .line 276
    :cond_b
    :goto_4
    iget-object v0, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 277
    .line 278
    return-object v0

    .line 279
    :cond_c
    new-instance v10, Lb7/c;

    .line 280
    .line 281
    invoke-direct {v10, p2}, Lb7/c;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    if-ne v6, v7, :cond_d

    .line 285
    .line 286
    move v3, v8

    .line 287
    :cond_d
    invoke-virtual {v10, v3}, Lb7/c;->A(Z)V

    .line 288
    .line 289
    .line 290
    move/from16 v3, p5

    .line 291
    .line 292
    invoke-virtual {v10, v3}, Lb7/c;->z(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10, v2, v0, v9}, Lb7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;

    .line 299
    .line 300
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 301
    .line 302
    move-object v2, v0

    .line 303
    move-object v3, v10

    .line 304
    move-object v4, p1

    .line 305
    move-object v5, p2

    .line 306
    move v6, p3

    .line 307
    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;-><init>(Lb7/c;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    .line 308
    .line 309
    .line 310
    return-object v0
.end method

.method public final getBridgeListener()Lcom/hisavana/mediation/bridge/listener/BridgeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
