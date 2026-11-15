.class public final Lcom/cloud/hisavana/sdk/t1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/a;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/g3;

.field private final b:Ljava/lang/String;

.field private c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/g3;)V
    .locals 2

    .line 1
    const-string v0, "tranRewarded"

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
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 10
    .line 11
    const-string p1, "Rewarded"

    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->b:Ljava/lang/String;

    .line 14
    .line 15
    sget-object p1, Lcom/cloud/hisavana/sdk/r1;->a:Lcom/cloud/hisavana/sdk/r1;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/r1;->b(Lcom/cloud/hisavana/sdk/a;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/t1;->d:J

    .line 22
    .line 23
    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "_rewarded"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method private final e()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->I:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;->a(Ljava/lang/ref/WeakReference;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/F;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setCloseDelayTime(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const/high16 v1, 0x10010000

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string v1, "adBean"

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string v1, "prefix"

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->d()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string v1, "observerId"

    .line 60
    .line 61
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/t1;->d:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string v1, "triggerTs"

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t1;->b:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "show failed --> "

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t1;->b:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "onEvent --> id = "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", event = "

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", params = "

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, "_show"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/g3;->I()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->d()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, "_rewarded"

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    if-eqz p4, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 118
    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    check-cast p4, Ljava/lang/Long;

    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide p2

    .line 128
    invoke-virtual {p1, p2, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTriggerShowSpend(J)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/g3;->J()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->d()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p2, "_error"

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    if-nez p4, :cond_5

    .line 166
    .line 167
    new-instance p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 168
    .line 169
    const/4 p2, -0x1

    .line 170
    const-string p3, "ad show error"

    .line 171
    .line 172
    invoke-direct {p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    move-object p1, p4

    .line 177
    check-cast p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 178
    .line 179
    :goto_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/g3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_5

    .line 185
    .line 186
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->d()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p2, "_click"

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_c

    .line 212
    .line 213
    new-instance p1, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 214
    .line 215
    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>()V

    .line 216
    .line 217
    .line 218
    if-eqz p4, :cond_7

    .line 219
    .line 220
    check-cast p4, Lkotlin/Pair;

    .line 221
    .line 222
    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    const-string p3, "null cannot be cast to non-null type com.cloud.hisavana.sdk.data.bean.response.AdsDTO"

    .line 227
    .line 228
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 232
    .line 233
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 234
    .line 235
    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    if-eqz p2, :cond_7

    .line 240
    .line 241
    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    const-string p2, "null cannot be cast to non-null type com.cloud.hisavana.sdk.common.tracking.DownUpPointBean"

    .line 246
    .line 247
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    check-cast p1, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 251
    .line 252
    :cond_7
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 253
    .line 254
    const/4 p3, 0x1

    .line 255
    if-eqz p2, :cond_8

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    goto :goto_2

    .line 262
    :cond_8
    move p2, p3

    .line 263
    :goto_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 268
    .line 269
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_9

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/p3;->v()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-ne v1, p3, :cond_9

    .line 282
    .line 283
    move v1, p3

    .line 284
    goto :goto_3

    .line 285
    :cond_9
    const/4 v1, 0x0

    .line 286
    :goto_3
    xor-int/lit8 v2, p2, 0x1

    .line 287
    .line 288
    invoke-static {p4, v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/J0;->c(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;ZZ)I

    .line 289
    .line 290
    .line 291
    if-eqz p2, :cond_a

    .line 292
    .line 293
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 294
    .line 295
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_a
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 300
    .line 301
    if-eqz p1, :cond_b

    .line 302
    .line 303
    invoke-virtual {p1, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    .line 304
    .line 305
    .line 306
    :cond_b
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    const-string p2, "ssp"

    .line 311
    .line 312
    const-string p3, "tracking is not allowed\uff0cchange isAdClickTracking = true"

    .line 313
    .line 314
    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :goto_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/g3;->G()V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->d()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string p2, "_close"

    .line 336
    .line 337
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-eqz p1, :cond_d

    .line 349
    .line 350
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/g3;->H()V

    .line 353
    .line 354
    .line 355
    :cond_d
    :goto_5
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/r1;->a:Lcom/cloud/hisavana/sdk/r1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/t1;->d:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r1;->c(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t1;->e()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t1;->a:Lcom/cloud/hisavana/sdk/g3;

    .line 15
    .line 16
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/g3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t1;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "show() --> adBean == null"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
