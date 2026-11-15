.class public Lcom/hisavana/pangle/util/PlatformUtil;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static getTAdNativeInfo(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->getNativeAdData()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    if-eqz p3, :cond_6

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->getNativeAdData()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v8, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 17
    .line 18
    invoke-direct {v8}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v8, v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v9, Lcom/hisavana/pangle/util/PlatformUtil$1;

    .line 54
    .line 55
    move-object v2, v9

    .line 56
    move-object v3, p0

    .line 57
    move-object v4, p3

    .line 58
    move-object v5, p3

    .line 59
    move-object v6, v8

    .line 60
    move-object v7, v1

    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/hisavana/pangle/util/PlatformUtil$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v9}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getTitle()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_1

    .line 83
    .line 84
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getTitle()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getDescription()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getDescription()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getButtonText()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getButtonText()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    new-instance v2, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    .line 142
    .line 143
    invoke-direct {v2}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    move-object v2, v0

    .line 159
    :goto_1
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "price"

    .line 163
    .line 164
    invoke-interface {p0, v1}, Lcom/bytedance/sdk/openadsdk/api/PangleAd;->getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    const-wide/16 v3, 0x0

    .line 177
    .line 178
    cmpl-double p0, v1, v3

    .line 179
    .line 180
    if-lez p0, :cond_5

    .line 181
    .line 182
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 183
    .line 184
    mul-double/2addr v1, v3

    .line 185
    invoke-virtual {v8, v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    .line 186
    .line 187
    .line 188
    :cond_5
    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    invoke-virtual {v8, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Lcom/hisavana/common/bean/AdNativeInfo;->getAdId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {v8, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    return-object v8

    .line 209
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string p2, "PlatformUtil"

    .line 218
    .line 219
    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_6
    return-object v0
.end method
