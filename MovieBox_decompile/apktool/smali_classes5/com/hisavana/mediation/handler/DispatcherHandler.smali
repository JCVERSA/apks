.class public Lcom/hisavana/mediation/handler/DispatcherHandler;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lee/i;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LoadAdManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    iput v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    iput-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Lee/i;Lcom/hisavana/common/bean/Network;ILcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Landroid/os/Bundle;
    .locals 10

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "request_type"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const/4 p2, -0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, p2

    .line 24
    :goto_0
    const-string v2, "platform"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v1, "-1"

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v2, v1

    .line 39
    :goto_1
    const-string v3, "app_id"

    .line 40
    .line 41
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    const-string v2, "code_seat_id"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 67
    .line 68
    :goto_2
    const-string v1, "bidding_price"

    .line 69
    .line 70
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 71
    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    :cond_4
    const-string v1, "ad_type"

    .line 80
    .line 81
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    const-string p2, "request_ts"

    .line 89
    .line 90
    invoke-virtual {v0, p2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const-string v1, "cld_app_id"

    .line 98
    .line 99
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lee/i;->E()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    const-string v1, "priority"

    .line 107
    .line 108
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const-string p2, "optimize_status"

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lee/i;->D()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    const-string v1, "priority_code"

    .line 122
    .line 123
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lee/i;->v()Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p2, "cld_code_seat_id"

    .line 131
    .line 132
    const-string v1, "trigger_id"

    .line 133
    .line 134
    const-string v3, "experiment_group_id"

    .line 135
    .line 136
    const-string v4, "traffic_group_id"

    .line 137
    .line 138
    const-string v5, "trigger_ts"

    .line 139
    .line 140
    if-nez p0, :cond_6

    .line 141
    .line 142
    if-eqz p3, :cond_5

    .line 143
    .line 144
    invoke-virtual {p3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v0, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v0, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide p0

    .line 176
    invoke-virtual {v0, v5, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 177
    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_6
    :try_start_0
    const-string p3, "request_time"

    .line 181
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v8

    .line 190
    sub-long/2addr v6, v8

    .line 191
    long-to-int v6, v6

    .line 192
    invoke-virtual {v0, p3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    :catch_0
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 207
    .line 208
    .line 209
    const-string p3, "is_pre_trigger"

    .line 210
    .line 211
    invoke-virtual {p0, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, p3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string p2, "ad_trigger_status"

    .line 226
    .line 227
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    if-eqz p1, :cond_7

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 255
    .line 256
    .line 257
    move-result-wide p0

    .line 258
    goto :goto_3

    .line 259
    :cond_7
    const-wide/16 p0, 0x0

    .line 260
    .line 261
    :goto_3
    const-string p2, "price_coefficient"

    .line 262
    .line 263
    invoke-virtual {v0, p2, p0, p1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 264
    .line 265
    .line 266
    return-object v0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/handler/DispatcherHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/hisavana/mediation/handler/DispatcherHandler;)Lee/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Lcom/hisavana/common/bean/AdCache;
    .locals 2

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_1
    :goto_0
    new-instance v0, Lcom/hisavana/common/bean/AdCache;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/interfacz/Iad;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lee/o;->a()Lee/o;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lee/o;->f(I)Lcom/hisavana/common/interfacz/IBaseAdSummary;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    .line 30
    .line 31
    const/16 v3, 0x3c

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    packed-switch v2, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_0
    invoke-interface {v1, p1, p2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    if-gtz p4, :cond_2

    .line 45
    .line 46
    move p4, v3

    .line 47
    :cond_2
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 65
    .line 66
    invoke-virtual {p2}, Lee/i;->J()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 74
    .line 75
    invoke-virtual {p2}, Lee/i;->z()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 80
    .line 81
    invoke-virtual {p3}, Lee/i;->B()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 86
    .line 87
    invoke-virtual {p4}, Lee/i;->x()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-object p1

    .line 95
    :pswitch_1
    invoke-interface {v1, p1, p2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    if-gtz p4, :cond_4

    .line 102
    .line 103
    const/16 p4, 0xf0

    .line 104
    .line 105
    :cond_4
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 123
    .line 124
    invoke-virtual {p2}, Lee/i;->F()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseSplash;->setOrientation(I)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 132
    .line 133
    invoke-virtual {p2}, Lee/i;->H()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseSplash;->setSplashMode(I)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 141
    .line 142
    invoke-virtual {p2}, Lee/i;->J()Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 150
    .line 151
    invoke-virtual {p2}, Lee/i;->z()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 156
    .line 157
    invoke-virtual {p3}, Lee/i;->B()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 162
    .line 163
    invoke-virtual {p4}, Lee/i;->x()Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object p4

    .line 167
    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 171
    .line 172
    invoke-virtual {p2}, Lee/i;->K()Z

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    .line 177
    .line 178
    .line 179
    :cond_5
    return-object p1

    .line 180
    :pswitch_2
    invoke-interface {v1, p1, p2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_7

    .line 185
    .line 186
    if-gtz p4, :cond_6

    .line 187
    .line 188
    move p4, v3

    .line 189
    :cond_6
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 207
    .line 208
    invoke-virtual {p2}, Lee/i;->J()Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    .line 213
    .line 214
    .line 215
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 216
    .line 217
    invoke-virtual {p2}, Lee/i;->z()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 222
    .line 223
    invoke-virtual {p3}, Lee/i;->B()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 228
    .line 229
    invoke-virtual {p4}, Lee/i;->x()Ljava/util/Map;

    .line 230
    .line 231
    .line 232
    move-result-object p4

    .line 233
    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    .line 235
    .line 236
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 237
    .line 238
    invoke-virtual {p2}, Lee/i;->K()Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    .line 243
    .line 244
    .line 245
    :cond_7
    return-object p1

    .line 246
    :pswitch_3
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 247
    .line 248
    invoke-virtual {p3}, Lee/i;->r()I

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 253
    .line 254
    invoke-virtual {v0}, Lee/i;->t()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-eqz p1, :cond_9

    .line 263
    .line 264
    if-gtz p4, :cond_8

    .line 265
    .line 266
    move p4, v3

    .line 267
    :cond_8
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    .line 282
    .line 283
    .line 284
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 285
    .line 286
    invoke-virtual {p2}, Lee/i;->L()Z

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setHideAdCloseView(Z)V

    .line 291
    .line 292
    .line 293
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 294
    .line 295
    invoke-virtual {p2}, Lee/i;->J()Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    .line 300
    .line 301
    .line 302
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 303
    .line 304
    invoke-virtual {p2}, Lee/i;->z()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 309
    .line 310
    invoke-virtual {p3}, Lee/i;->B()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p3

    .line 314
    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 315
    .line 316
    invoke-virtual {p4}, Lee/i;->x()Ljava/util/Map;

    .line 317
    .line 318
    .line 319
    move-result-object p4

    .line 320
    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    .line 322
    .line 323
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 324
    .line 325
    invoke-virtual {p2}, Lee/i;->K()Z

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    .line 330
    .line 331
    .line 332
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 333
    .line 334
    invoke-virtual {p2}, Lee/i;->K()Z

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    .line 339
    .line 340
    .line 341
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 342
    .line 343
    invoke-virtual {p2}, Lee/i;->o()I

    .line 344
    .line 345
    .line 346
    move-result p2

    .line 347
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setBannerAdWidth(I)V

    .line 348
    .line 349
    .line 350
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 351
    .line 352
    invoke-virtual {p2}, Lee/i;->l()I

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setBannerAdMaxHeight(I)V

    .line 357
    .line 358
    .line 359
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 360
    .line 361
    invoke-virtual {p2}, Lee/i;->I()Z

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setCloseDirectlyWithoutJumping(Z)V

    .line 366
    .line 367
    .line 368
    :cond_9
    return-object p1

    .line 369
    :pswitch_4
    invoke-interface {v1, p1, p2, v2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    if-eqz p1, :cond_b

    .line 374
    .line 375
    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 376
    .line 377
    invoke-virtual {v0}, Lee/i;->a()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->setChoicesPosition(I)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 385
    .line 386
    invoke-virtual {v0}, Lee/i;->h()I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->setAdmobMediaAspectRatio(I)V

    .line 391
    .line 392
    .line 393
    if-gtz p4, :cond_a

    .line 394
    .line 395
    move p4, v3

    .line 396
    :cond_a
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, p3}, Lcom/hisavana/common/base/BaseNative;->setAdCount(I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 410
    .line 411
    .line 412
    move-result p2

    .line 413
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    .line 414
    .line 415
    .line 416
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 417
    .line 418
    invoke-virtual {p2}, Lee/i;->J()Z

    .line 419
    .line 420
    .line 421
    move-result p2

    .line 422
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    .line 423
    .line 424
    .line 425
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 426
    .line 427
    invoke-virtual {p2}, Lee/i;->z()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 432
    .line 433
    invoke-virtual {p3}, Lee/i;->B()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p3

    .line 437
    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 438
    .line 439
    invoke-virtual {p4}, Lee/i;->x()Ljava/util/Map;

    .line 440
    .line 441
    .line 442
    move-result-object p4

    .line 443
    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 444
    .line 445
    .line 446
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 447
    .line 448
    invoke-virtual {p2}, Lee/i;->K()Z

    .line 449
    .line 450
    .line 451
    move-result p2

    .line 452
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    .line 453
    .line 454
    .line 455
    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 456
    .line 457
    invoke-virtual {p2}, Lee/i;->G()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 458
    .line 459
    .line 460
    move-result-object p2

    .line 461
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseNative;->setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V

    .line 462
    .line 463
    .line 464
    :cond_b
    return-object p1

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;
    .locals 4

    .line 1
    const-string v0, "LoadAdManager"

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdUtil;->requestStatusOff()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/hisavana/common/manager/RequestingAdManager;->getRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/hisavana/common/interfacz/Iad;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string p3, "*----> exist loading Ad id: "

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->o(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_2
    :goto_0
    const-string p1, "create Executor, network or codeSeat of codeSeatId is empty"

    .line 77
    .line 78
    invoke-static {v0, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    return-object p1
.end method

.method public f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    new-instance v4, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object/from16 v4, p4

    .line 18
    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, v4}, Lcom/hisavana/mediation/handler/DispatcherHandler;->q(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v2, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 34
    .line 35
    const-string v5, "LoadAdManager"

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v7, "*----> loadWaterfallAd ---- netWorks = "

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v2, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->n()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 77
    .line 78
    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v7, 0x1

    .line 91
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    const-string v9, ",need number <= 0"

    .line 100
    .line 101
    const-string v10, " ,network codeSeat :"

    .line 102
    .line 103
    const-string v11, "*----> exist ad source:"

    .line 104
    .line 105
    if-nez v8, :cond_6

    .line 106
    .line 107
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_6

    .line 116
    .line 117
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    check-cast v12, Lcom/hisavana/common/bean/Network;

    .line 122
    .line 123
    invoke-virtual {v0, v12, v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->i(Lcom/hisavana/common/bean/Network;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eqz v13, :cond_3

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    iget-object v14, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    move-object/from16 p3, v8

    .line 148
    .line 149
    iget-object v8, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 150
    .line 151
    invoke-virtual {v8}, Lee/i;->J()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-virtual {v13, v14, v15, v7, v8}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    invoke-virtual {v0, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->h(Lcom/hisavana/common/bean/Network;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    sub-int v7, v6, v7

    .line 164
    .line 165
    if-gtz v7, :cond_5

    .line 166
    .line 167
    if-nez v8, :cond_5

    .line 168
    .line 169
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-virtual {v7, v5, v8}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    :goto_2
    move-object/from16 v8, p3

    .line 209
    .line 210
    const/4 v7, 0x1

    .line 211
    goto :goto_1

    .line 212
    :cond_5
    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 213
    .line 214
    invoke-virtual {v0, v1, v7, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    if-eqz v7, :cond_4

    .line 219
    .line 220
    invoke-virtual {v2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const/4 v8, 0x0

    .line 229
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    if-eqz v12, :cond_c

    .line 234
    .line 235
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    check-cast v12, Lcom/hisavana/common/bean/Network;

    .line 240
    .line 241
    if-nez v12, :cond_8

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_8
    if-eqz v8, :cond_9

    .line 245
    .line 246
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    const-string v13, "*----> exist higher ecpm ad in current waterfall."

    .line 251
    .line 252
    invoke-virtual {v12, v5, v13}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    iget-object v13, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v15

    .line 274
    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 275
    .line 276
    invoke-virtual {v7}, Lee/i;->J()Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    invoke-virtual {v8, v13, v14, v15, v7}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-lez v7, :cond_a

    .line 285
    .line 286
    const/4 v8, 0x1

    .line 287
    goto :goto_4

    .line 288
    :cond_a
    const/4 v8, 0x0

    .line 289
    :goto_4
    invoke-virtual {v0, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->h(Lcom/hisavana/common/bean/Network;)Z

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    sub-int v7, v6, v7

    .line 294
    .line 295
    if-gtz v7, :cond_b

    .line 296
    .line 297
    if-nez v13, :cond_b

    .line 298
    .line 299
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    new-instance v13, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    invoke-virtual {v7, v5, v12}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_b
    invoke-virtual {v0, v12, v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->i(Lcom/hisavana/common/bean/Network;Z)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_7

    .line 344
    .line 345
    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 346
    .line 347
    invoke-virtual {v0, v1, v7, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    if-eqz v7, :cond_7

    .line 352
    .line 353
    invoke-virtual {v2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_c
    return-object v2
.end method

.method public g(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "sort executer list"

    .line 9
    .line 10
    const-string v2, "LoadAdManager"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/hisavana/common/interfacz/Iad;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v3}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-interface {v3}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "*before* sort executer list are: "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/hisavana/mediation/handler/DispatcherHandler$2;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/hisavana/mediation/handler/DispatcherHandler$2;-><init>(Lcom/hisavana/mediation/handler/DispatcherHandler;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v3, "*after* sort executer list are: "

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_6
    return-void
.end method

.method public final h(Lcom/hisavana/common/bean/Network;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x6

    .line 9
    if-eq v1, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/manager/b;->b()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-object v3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 49
    .line 50
    invoke-virtual {v4}, Lee/i;->J()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v1, v3, p1, v4}, Lcom/hisavana/common/bean/AdCache;->getAdBySourceAndUnitID(Ljava/lang/String;IZ)Lcom/hisavana/common/interfacz/ICacheAd;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    move v0, v2

    .line 67
    :cond_2
    :goto_0
    return v0
.end method

.method public final i(Lcom/hisavana/common/bean/Network;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x5

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "IronSource Do not preload  mLoadType = preload ---  network.getSource() = "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "iron_source_log"

    .line 44
    .line 45
    invoke-virtual {p2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :cond_1
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const/16 v1, 0xe

    .line 60
    .line 61
    if-ne p2, v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 p2, 0x2

    .line 68
    if-ne p1, p2, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "LoadAdManager"

    .line 75
    .line 76
    const-string v1, "MAX Do not preload"

    .line 77
    .line 78
    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v0

    .line 82
    :cond_2
    const/4 p1, 0x1

    .line 83
    return p1
.end method

.method public final j(Lcom/hisavana/common/interfacz/Iad;II)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "*----> loadAd id: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ",EcpmPrice: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ",AdSource: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "LoadAdManager"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 56
    .line 57
    invoke-virtual {v0}, Lee/i;->D()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->setSupportFlag(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 71
    .line 72
    invoke-static {v0, v1, p2, v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->a(Lee/i;Lcom/hisavana/common/bean/Network;ILcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->setTrackingBundle(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    const/4 v1, 0x0

    .line 81
    const/4 v3, 0x1

    .line 82
    if-ne p2, v0, :cond_0

    .line 83
    .line 84
    move v0, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move v0, v1

    .line 87
    :goto_0
    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->setOfflineAd(Z)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p2}, Lcom/hisavana/common/interfacz/ICacheAd;->setRequestType(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, p3}, Lcom/hisavana/common/interfacz/Iad;->setRequestRound(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v3}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    .line 97
    .line 98
    .line 99
    const/4 p3, 0x2

    .line 100
    if-ne p2, p3, :cond_1

    .line 101
    .line 102
    move v1, v3

    .line 103
    :cond_1
    invoke-interface {p1, v1}, Lcom/hisavana/common/interfacz/ICacheAd;->setPreload(Z)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->loadAd()V

    .line 107
    .line 108
    .line 109
    sget-boolean p2, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 110
    .line 111
    if-eqz p2, :cond_2

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-static {p2}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    sget p3, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE5:I

    .line 122
    .line 123
    invoke-static {p2, p3}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string p3, "ad start load,adSource "

    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p3, ",id "

    .line 144
    .line 145
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    if-nez p3, :cond_3

    .line 153
    .line 154
    const-string p1, ""

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return v3
.end method

.method public k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p5, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 8
    .line 9
    .line 10
    move-result p5

    .line 11
    if-nez p5, :cond_5

    .line 12
    .line 13
    invoke-interface {p1, p4}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->j(Lcom/hisavana/common/interfacz/Iad;II)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 22
    .line 23
    .line 24
    move-result p5

    .line 25
    if-nez p5, :cond_2

    .line 26
    .line 27
    invoke-interface {p1, p4}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->j(Lcom/hisavana/common/interfacz/Iad;II)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/4 p3, 0x4

    .line 40
    if-ne p2, p3, :cond_5

    .line 41
    .line 42
    invoke-interface {p1, p4}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p5, "*----> exist loading Ad id: "

    .line 55
    .line 56
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p5

    .line 63
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p5, ",bind context for it"

    .line 67
    .line 68
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const-string p5, "LoadAdManager"

    .line 76
    .line 77
    invoke-virtual {p2, p5, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    invoke-interface {p1, p2}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    iget-object v4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lee/i;

    .line 109
    .line 110
    invoke-virtual {v4}, Lee/i;->J()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    if-lez p3, :cond_3

    .line 119
    .line 120
    invoke-virtual {p4}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    if-eqz p3, :cond_3

    .line 125
    .line 126
    invoke-virtual {p4}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onLoad()V

    .line 131
    .line 132
    .line 133
    return p2

    .line 134
    :cond_3
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2, p1}, Lcom/hisavana/common/manager/RequestingAdManager;->removeRequest(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 139
    .line 140
    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string p3, "ad start load,adSource "

    .line 147
    .line 148
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p3, ",id "

    .line 159
    .line 160
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    if-nez p3, :cond_4

    .line 168
    .line 169
    const-string p1, ""

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p5, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    return v0
.end method

.method public m(Ljava/util/List;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/hisavana/common/interfacz/Iad;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v1

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_3
    return v1
.end method

.method public final n()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const v0, 0x7fffffff

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public final o(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCacheTimeout()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/interfacz/Iad;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, ",id "

    .line 37
    .line 38
    const-string v1, "LoadAdManager"

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "create execute:"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, " fail"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v0, "create executor,source "

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    return-object p1

    .line 114
    :cond_0
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-interface {p1, v2, v3}, Lcom/hisavana/common/interfacz/ICacheAd;->setEcpmPrice(D)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {p1, v2}, Lcom/hisavana/common/interfacz/Iad;->setAdUnit(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "add ad to list adSource:"

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ",network codeSeat:"

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, " request num:"

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "add ad executor to list,adSource "

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-static {v1, p2}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    return-object p1
.end method

.method public final q(Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hisavana/mediation/handler/DispatcherHandler$1;-><init>(Lcom/hisavana/mediation/handler/DispatcherHandler;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
