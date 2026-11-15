.class public Lcom/hisavana/mintegral/util/PlatformUtil;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getTAdNativeInfo(Lcom/mbridge/msdk/out/Campaign;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    if-eqz p3, :cond_6

    .line 5
    .line 6
    new-instance v7, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 7
    .line 8
    invoke-direct {v7}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v7, v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v7, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/hisavana/mintegral/util/PlatformUtil$1;

    .line 40
    .line 41
    move-object v1, v8

    .line 42
    move-object v2, p0

    .line 43
    move-object v3, p3

    .line 44
    move-object v4, p3

    .line 45
    move-object v5, v7

    .line 46
    move-object v6, p0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/hisavana/mintegral/util/PlatformUtil$1;-><init>(Lcom/mbridge/msdk/out/Campaign;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/mbridge/msdk/out/Campaign;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v8}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v7, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v7, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v7, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v7, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getRating()D

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ""

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v7, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setRating(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_4

    .line 144
    .line 145
    new-instance v0, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-virtual {v7, v0}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_5

    .line 174
    .line 175
    new-instance v1, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    .line 176
    .line 177
    invoke-direct {v1}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/Campaign;->getBigDrawable()Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {v1, p0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    :cond_5
    invoke-virtual {v7, v0}, Lcom/hisavana/common/bean/AdNativeInfo;->setImageList(Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-virtual {v7, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Lcom/hisavana/common/bean/AdNativeInfo;->getAdId()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {v7, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-object v7

    .line 221
    :cond_6
    return-object v0
.end method
