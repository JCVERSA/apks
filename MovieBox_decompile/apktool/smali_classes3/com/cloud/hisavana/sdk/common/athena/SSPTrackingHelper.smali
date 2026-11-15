.class public final Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

.field private static b:Z

.field private static c:I

.field private static final d:Lkotlin/Lazy;

.field private static final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    sput v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c:I

    .line 11
    .line 12
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$IS_DEBUG_LOG_MODE$2;->INSTANCE:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$IS_DEBUG_LOG_MODE$2;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->d:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$fillingTrackingMap$1;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$fillingTrackingMap$1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->e:Ljava/util/Map;

    .line 30
    .line 31
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

.method public static synthetic C(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v11, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v11, p10

    .line 11
    .line 12
    :goto_0
    move-object v1, p0

    .line 13
    move v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    move-wide/from16 v8, p7

    .line 23
    .line 24
    move/from16 v10, p9

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final D(Lcom/cloud/hisavana/sdk/p3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "temp_online_failed_code"

    .line 8
    .line 9
    const-string v4, "$adsDTOs"

    .line 10
    .line 11
    move-object/from16 v5, p4

    .line 12
    .line 13
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v4, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 17
    .line 18
    invoke-direct {v4, v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->v(Lcom/cloud/hisavana/sdk/p3;I)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v15

    .line 22
    const-string v6, ""

    .line 23
    .line 24
    invoke-virtual {v15, v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v15, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    const-string v7, "s_callback_status"

    .line 35
    .line 36
    invoke-virtual {v15, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz p3, :cond_1

    .line 40
    .line 41
    const-string v2, "s_req_bidding"

    .line 42
    .line 43
    invoke-virtual {v15, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v3, v2

    .line 55
    :goto_0
    invoke-direct {v4, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Y(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    const-string v1, "0"

    .line 61
    .line 62
    :goto_1
    move-object v9, v1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    if-eqz v6, :cond_5

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x5f

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_1

    .line 99
    :goto_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-lez v1, :cond_6

    .line 107
    .line 108
    const-string v1, "s_online_failed_reason_v2"

    .line 109
    .line 110
    invoke-virtual {v15, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    const-string v1, "s_online_status"

    .line 114
    .line 115
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "s_default_status"

    .line 119
    .line 120
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "s_offline_status"

    .line 124
    .line 125
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "s_ma_d_s"

    .line 129
    .line 130
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "s_req_timeout"

    .line 134
    .line 135
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "s_ma_d_fr"

    .line 139
    .line 140
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    move v1, v3

    .line 158
    :goto_4
    const/4 v4, 0x4

    .line 159
    if-ne v1, v4, :cond_a

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    move-object v6, v1

    .line 168
    goto :goto_5

    .line 169
    :cond_8
    move-object v6, v2

    .line 170
    :goto_5
    if-eqz v0, :cond_9

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object v7, v0

    .line 177
    goto :goto_6

    .line 178
    :cond_9
    move-object v7, v2

    .line 179
    :goto_6
    move-object/from16 v5, p4

    .line 180
    .line 181
    move-wide/from16 v8, p5

    .line 182
    .line 183
    move-object v10, v15

    .line 184
    invoke-static/range {v5 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->H(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    goto :goto_b

    .line 188
    :cond_a
    if-eqz v0, :cond_b

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    move-object v6, v1

    .line 195
    goto :goto_7

    .line 196
    :cond_b
    move-object v6, v2

    .line 197
    :goto_7
    if-eqz v0, :cond_c

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->o()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    move v7, v1

    .line 204
    goto :goto_8

    .line 205
    :cond_c
    move v7, v3

    .line 206
    :goto_8
    if-eqz v0, :cond_d

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    move-object v12, v1

    .line 213
    goto :goto_9

    .line 214
    :cond_d
    move-object v12, v2

    .line 215
    :goto_9
    if-eqz v0, :cond_e

    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_e

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    move v13, v0

    .line 228
    goto :goto_a

    .line 229
    :cond_e
    move v13, v3

    .line 230
    :goto_a
    move-object/from16 v5, p4

    .line 231
    .line 232
    move-object/from16 v8, p7

    .line 233
    .line 234
    move-wide/from16 v10, p5

    .line 235
    .line 236
    move-object/from16 v14, p8

    .line 237
    .line 238
    move-object v0, v15

    .line 239
    move/from16 v15, p9

    .line 240
    .line 241
    move-object/from16 v16, v0

    .line 242
    .line 243
    invoke-static/range {v5 .. v16}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->k(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .line 245
    .line 246
    :catchall_0
    :goto_b
    return-void
.end method

.method private static final F(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "$fetchInfo"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->o(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method private static final H(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->p(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JLjava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :catchall_0
    return-void
.end method

.method private static final J(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->q(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    return-void
.end method

.method private static final L(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "$bundle"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p0, v1

    .line 17
    :goto_0
    if-eqz p0, :cond_2

    .line 18
    .line 19
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string p0, "s_click_chain_list"

    .line 35
    .line 36
    invoke-virtual {p3, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->j(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :catchall_0
    return-void
.end method

.method public static synthetic O(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final P(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method

.method private static final R(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    const-string p7, "error_code"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    :goto_1
    move-object p0, v1

    .line 32
    :cond_1
    invoke-virtual {v0, p7, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    :try_start_3
    const-string p0, "trigger_id"

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p7

    .line 43
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "s_click_tracking_id"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p7

    .line 52
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "ad_creative_id"

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p7

    .line 61
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "code_seat_type"

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p7

    .line 70
    if-nez p7, :cond_2

    .line 71
    .line 72
    const/4 p7, -0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p7

    .line 81
    :goto_2
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    const-string p0, "code_seat_id"

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p7

    .line 90
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "show_id"

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p7

    .line 99
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p0, "preload_enable"

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p7

    .line 108
    const-string v2, "getPreloadEnable(...)"

    .line 109
    .line 110
    invoke-static {p7, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p7

    .line 117
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string p0, "preload_status"

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    .line 128
    .line 129
    :catchall_2
    :cond_3
    :try_start_4
    const-string p0, "s_cct_load_time"

    .line 130
    .line 131
    const-wide/16 v2, 0x0

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide p1

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move-wide p1, v2

    .line 141
    :goto_3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 142
    .line 143
    .line 144
    const-string p0, "s_cct_aborted"

    .line 145
    .line 146
    const/4 p1, 0x0

    .line 147
    if-eqz p3, :cond_5

    .line 148
    .line 149
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    move p2, p1

    .line 155
    :goto_4
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    const-string p0, "s_cct_warmup"

    .line 159
    .line 160
    if-eqz p4, :cond_6

    .line 161
    .line 162
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    :cond_6
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    const-string p0, "s_cct_version"

    .line 170
    .line 171
    if-nez p5, :cond_7

    .line 172
    .line 173
    move-object p5, v1

    .line 174
    :cond_7
    invoke-virtual {v0, p0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p0, "s_cct_launch_time"

    .line 178
    .line 179
    if-eqz p6, :cond_8

    .line 180
    .line 181
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    :cond_8
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 186
    .line 187
    .line 188
    const-string p0, "s_cct_device"

    .line 189
    .line 190
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->A(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :goto_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string p2, "SSPTrackingHelper"

    .line 204
    .line 205
    const-string p3, "realTrackingCCTLandingPage"

    .line 206
    .line 207
    invoke-virtual {p1, p2, p3, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :goto_6
    return-void
.end method

.method private static final T(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    const-string p8, "error_code"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_0
    :goto_1
    move-object p0, v1

    .line 32
    :cond_1
    invoke-virtual {v0, p8, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    :try_start_3
    const-string p0, "trigger_id"

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p8

    .line 43
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "s_click_tracking_id"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p8

    .line 52
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "ad_creative_id"

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p8

    .line 61
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "code_seat_type"

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p8

    .line 70
    if-nez p8, :cond_2

    .line 71
    .line 72
    const/4 p8, -0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static {p8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p8

    .line 81
    :goto_2
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    const-string p0, "code_seat_id"

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p8

    .line 90
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "show_id"

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p8

    .line 99
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p0, "preload_enable"

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p8

    .line 108
    const-string v2, "getPreloadEnable(...)"

    .line 109
    .line 110
    invoke-static {p8, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p8

    .line 117
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string p0, "preload_status"

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    .line 128
    .line 129
    :catchall_2
    :cond_3
    :try_start_4
    const-string p0, "s_cct_load_time"

    .line 130
    .line 131
    const-wide/16 v2, 0x0

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide p1

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move-wide p1, v2

    .line 141
    :goto_3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 142
    .line 143
    .line 144
    const-string p0, "s_cct_aborted"

    .line 145
    .line 146
    const/4 p1, 0x0

    .line 147
    if-eqz p3, :cond_5

    .line 148
    .line 149
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    move p2, p1

    .line 155
    :goto_4
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    const-string p0, "s_cct_warmup"

    .line 159
    .line 160
    if-eqz p4, :cond_6

    .line 161
    .line 162
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    :cond_6
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    const-string p0, "s_cct_version"

    .line 170
    .line 171
    if-nez p5, :cond_7

    .line 172
    .line 173
    move-object p5, v1

    .line 174
    :cond_7
    invoke-virtual {v0, p0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p0, "s_cct_launch_time"

    .line 178
    .line 179
    if-eqz p6, :cond_8

    .line 180
    .line 181
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide p1

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    move-wide p1, v2

    .line 187
    :goto_5
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 188
    .line 189
    .line 190
    const-string p0, "s_landing_stay_time"

    .line 191
    .line 192
    if-eqz p7, :cond_9

    .line 193
    .line 194
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    :cond_9
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 199
    .line 200
    .line 201
    const-string p0, "s_cct_device"

    .line 202
    .line 203
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->z(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    .line 210
    .line 211
    goto :goto_7

    .line 212
    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string p2, "SSPTrackingHelper"

    .line 217
    .line 218
    const-string p3, "realTrackingCCTLandingPageExit"

    .line 219
    .line 220
    invoke-virtual {p1, p2, p3, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    :goto_7
    return-void
.end method

.method private static final V(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/p3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const-string v1, "trigger_id"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const-string p1, "ad_type"

    .line 31
    .line 32
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const-string p0, "event_ts"

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    const-string p0, "s_track_event_type"

    .line 45
    .line 46
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x2

    .line 50
    if-ne p2, p0, :cond_5

    .line 51
    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    :cond_3
    const-string p0, ""

    .line 69
    .line 70
    :cond_4
    const-string p1, "error_code"

    .line 71
    .line 72
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->n(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :catchall_0
    return-void
.end method

.method private static final X(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p8, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    if-eqz p0, :cond_4

    .line 18
    .line 19
    const-string p8, "webId"

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, p8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    const-string p8, "url"

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, p8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p8, "spendTime"

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getSpendTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {v0, p8, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string p0, "error_code"

    .line 49
    .line 50
    if-eqz p9, :cond_2

    .line 51
    .line 52
    invoke-virtual {p9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p8

    .line 56
    if-nez p8, :cond_3

    .line 57
    .line 58
    :cond_2
    const-string p8, ""

    .line 59
    .line 60
    :cond_3
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    if-eqz p1, :cond_6

    .line 64
    .line 65
    const-string p0, "trigger_id"

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p8

    .line 71
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "s_click_tracking_id"

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p8

    .line 80
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    .line 82
    .line 83
    :try_start_2
    const-string p0, "code_seat_type"

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p8

    .line 89
    if-nez p8, :cond_5

    .line 90
    .line 91
    const/4 p8, -0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-static {p8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p8

    .line 100
    :goto_1
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    const-string p0, "code_seat_id"

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p8

    .line 109
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p0, "ad_creative_id"

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p8

    .line 118
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string p0, "show_id"

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p8

    .line 127
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p0, "preload_enable"

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object p8

    .line 136
    const-string p9, "getPreloadEnable(...)"

    .line 137
    .line 138
    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result p8

    .line 145
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    const-string p0, "preload_status"

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    .line 156
    .line 157
    :catchall_1
    :cond_6
    const/4 p0, 0x1

    .line 158
    if-nez p2, :cond_8

    .line 159
    .line 160
    if-eqz p3, :cond_7

    .line 161
    .line 162
    :try_start_3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    xor-int/2addr p1, p0

    .line 167
    if-ne p1, p0, :cond_7

    .line 168
    .line 169
    const-string p1, "s_landing_router"

    .line 170
    .line 171
    invoke-static {p3}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_7
    if-eqz p4, :cond_8

    .line 179
    .line 180
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    xor-int/2addr p1, p0

    .line 185
    if-ne p1, p0, :cond_8

    .line 186
    .line 187
    const-string p1, "s_landing_ges_router"

    .line 188
    .line 189
    invoke-static {p4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    const-string p1, "s_landing_complete"

    .line 197
    .line 198
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    if-eqz p6, :cond_a

    .line 208
    .line 209
    invoke-virtual {p6}, Ljava/lang/Number;->longValue()J

    .line 210
    .line 211
    .line 212
    move-result-wide p1

    .line 213
    const-wide/16 p3, 0x0

    .line 214
    .line 215
    cmp-long p1, p1, p3

    .line 216
    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    move-object p1, p6

    .line 220
    goto :goto_2

    .line 221
    :cond_9
    const/4 p1, 0x0

    .line 222
    :goto_2
    if-eqz p1, :cond_a

    .line 223
    .line 224
    const-string p1, "s_landing_stay_time"

    .line 225
    .line 226
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide p2

    .line 230
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 231
    .line 232
    .line 233
    :cond_a
    if-eqz p7, :cond_b

    .line 234
    .line 235
    const-string p1, "s_landing_nav_finish"

    .line 236
    .line 237
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    :cond_b
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->Y(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 241
    .line 242
    .line 243
    :catchall_2
    return-void
.end method

.method private final Y(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->e:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->P(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->H(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->J(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->F(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->R(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/p3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->D(Lcom/cloud/hisavana/sdk/p3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->L(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->X(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/p3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->V(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/p3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->T(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final u(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->t()Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 19
    :goto_1
    return p1
.end method

.method private final v(Lcom/cloud/hisavana/sdk/p3;I)Landroid/os/Bundle;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->k(Ljava/util/Map;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->w(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->w(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_1
    return-object p1

    .line 27
    :catchall_0
    new-instance p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method private final w(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-string v0, "temp_online_without_req"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "s_online_status"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string v2, "s_ma_d_s"

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    const-string v6, "temp_online_failed_code"

    .line 15
    .line 16
    if-ne v1, v3, :cond_3

    .line 17
    .line 18
    :try_start_1
    const-string v0, "s_online_failed_reason_v2"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    if-ne v1, v5, :cond_0

    .line 45
    .line 46
    const-string v0, "5032"

    .line 47
    .line 48
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const/4 v2, 0x3

    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "5029_"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    if-eq v1, v5, :cond_9

    .line 94
    .line 95
    const-string v1, "s_req_chs"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    const-string v7, "2"

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-static {v1, v7, v4, v3, v8}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ne v1, v5, :cond_7

    .line 111
    .line 112
    const-string v0, "s_req_timeout"

    .line 113
    .line 114
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    if-ne v1, v5, :cond_4

    .line 125
    .line 126
    const-string v0, "5033"

    .line 127
    .line 128
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    const-string v0, "5025"

    .line 133
    .line 134
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :cond_5
    if-ne v1, v5, :cond_6

    .line 139
    .line 140
    const-string v0, "5030"

    .line 141
    .line 142
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const-string v0, "5026"

    .line 147
    .line 148
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-void

    .line 152
    :cond_7
    const/4 v1, -0x1

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eq v2, v1, :cond_8

    .line 158
    .line 159
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {p1, v6, v1}, Lcom/cloud/hisavana/sdk/common/util/f0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->i(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    :catchall_0
    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public final A(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 13

    .line 1
    const/16 v11, 0x100

    .line 2
    .line 3
    const/4 v12, 0x0

    .line 4
    const/4 v10, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move-object/from16 v5, p5

    .line 13
    .line 14
    move/from16 v6, p6

    .line 15
    .line 16
    move-wide/from16 v7, p7

    .line 17
    .line 18
    move/from16 v9, p9

    .line 19
    .line 20
    invoke-static/range {v0 .. v12}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->C(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final B(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V
    .locals 12

    .line 1
    move-object v0, p3

    .line 2
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v11, Lcom/cloud/hisavana/sdk/common/athena/q;

    .line 13
    .line 14
    move-object v0, v11

    .line 15
    move-object v1, p2

    .line 16
    move v2, p1

    .line 17
    move/from16 v3, p9

    .line 18
    .line 19
    move/from16 v4, p10

    .line 20
    .line 21
    move-wide/from16 v6, p7

    .line 22
    .line 23
    move-object/from16 v8, p4

    .line 24
    .line 25
    move-object/from16 v9, p5

    .line 26
    .line 27
    move/from16 v10, p6

    .line 28
    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/q;-><init>(Lcom/cloud/hisavana/sdk/p3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v11}, Lk7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :catchall_0
    return-void
.end method

.method public final E(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "fetchInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/i;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/i;-><init>(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    return-void
.end method

.method public final G(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/p;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/p;-><init>(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V

    .line 9
    .line 10
    .line 11
    invoke-static {v6}, Lk7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    return-void
.end method

.method public final I(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/h;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/h;-><init>(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public final K(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/j;

    .line 7
    .line 8
    invoke-direct {v0, p4, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/j;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 8

    .line 1
    const/16 v6, 0x10

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->O(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/m;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v6}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Q(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/cloud/hisavana/sdk/common/athena/n;

    .line 2
    .line 3
    move-object v0, v9

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p4

    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    move-object v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object v7, p3

    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/n;-><init>(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v9}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final S(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    new-instance v10, Lcom/cloud/hisavana/sdk/common/athena/k;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p4

    .line 7
    move-object/from16 v4, p8

    .line 8
    .line 9
    move-object/from16 v5, p6

    .line 10
    .line 11
    move-object/from16 v6, p7

    .line 12
    .line 13
    move-object v7, p3

    .line 14
    move-object/from16 v8, p5

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/k;-><init>(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v10}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/o;

    .line 2
    .line 3
    invoke-direct {v0, p4, p2, p1, p3}, Lcom/cloud/hisavana/sdk/common/athena/o;-><init>(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/p3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final W(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;ZZLjava/lang/Long;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    new-instance v11, Lcom/cloud/hisavana/sdk/common/athena/l;

    .line 2
    .line 3
    move-object v0, v11

    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    move/from16 v3, p7

    .line 9
    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move-object/from16 v6, p9

    .line 13
    .line 14
    move-object/from16 v7, p8

    .line 15
    .line 16
    move/from16 v8, p6

    .line 17
    .line 18
    move-object/from16 v9, p10

    .line 19
    .line 20
    move-object v10, p1

    .line 21
    invoke-direct/range {v0 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/l;-><init>(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v11}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final Z(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "is_dev_open"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    return-void
.end method

.method public final a0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "is_filling_dev_open"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    return-void
.end method

.method public final b0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "is_show_dev_open"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/g1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->isEnableClientSampling()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v0

    .line 20
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->r()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    move v1, v0

    .line 38
    :goto_2
    if-nez v1, :cond_3

    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "SSPTrackingHelper"

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "eventName -> "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " reporting not allowed"

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_3
    move v0, v1

    .line 72
    :catchall_0
    return v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getTrackEvent()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 49
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_3

    .line 58
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_3
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    move-object p1, p2

    .line 77
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public final m(Lcom/cloud/hisavana/sdk/F;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->s()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public final n()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/g1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getAdReqInterval()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move-wide v2, v0

    .line 25
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_3
    check-cast v2, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    return-wide v0
.end method

.method public final o(Lcom/cloud/hisavana/sdk/F;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    return-object p1
.end method

.method public final p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_4

    .line 14
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 15
    :cond_1
    if-eqz p1, :cond_3

    .line 16
    .line 17
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->e:Ljava/util/Map;

    .line 18
    .line 19
    const-string v1, "fillingTrackingMap"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "fillingTrackingMap"

    .line 39
    .line 40
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 50
    goto :goto_3

    .line 51
    :goto_2
    monitor-exit v0

    .line 52
    throw p1

    .line 53
    :cond_3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "SSPTrackingHelper"

    .line 63
    .line 64
    new-instance v2, Ljava/lang/Throwable;

    .line 65
    .line 66
    const-string v3, "getFillingTrackingBundle: triggerId is empty"

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    goto :goto_5

    .line 83
    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    :goto_6
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    return-object p1
.end method

.method public final q(Lcom/cloud/hisavana/sdk/F;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "urlString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "parse(this)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const-string p1, ""

    .line 62
    .line 63
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 64
    .line 65
    return-object p1
.end method

.method public final t()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/g1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getClientSamplingRatio()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0xa

    .line 19
    .line 20
    :goto_0
    const/16 v1, 0x64

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_1
    sget-boolean v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    sget v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c:I

    .line 31
    .line 32
    if-eq v1, v0, :cond_3

    .line 33
    .line 34
    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n(Landroid/content/Context;I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sput-boolean v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b:Z

    .line 43
    .line 44
    sput v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c:I

    .line 45
    .line 46
    :cond_3
    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    const/4 v0, 0x0

    .line 50
    :goto_1
    return v0
.end method

.method public final x(Ljava/util/List;Lcom/cloud/hisavana/sdk/p3;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v0, v2, :cond_6

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eq v3, v2, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    :cond_4
    if-eqz p2, :cond_5

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/4 p1, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "s_online_failed_reason_v2"

    .line 81
    .line 82
    const-string v0, "5031"

    .line 83
    .line 84
    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :catchall_0
    :cond_6
    :goto_1
    return-void
.end method

.method public final y(ILandroid/os/Bundle;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "s_click_pkg_f_r"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const-string p1, "s_click_dp_f_r"

    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "s_req_chs"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x2c

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    move-object p2, v1

    .line 46
    :cond_1
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/common/util/f0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :catchall_0
    return-void
.end method
