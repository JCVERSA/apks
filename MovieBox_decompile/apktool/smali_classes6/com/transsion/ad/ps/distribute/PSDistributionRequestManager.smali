.class public final Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/ad/ps/distribute/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->b:Lkotlin/Lazy;

    .line 18
    .line 19
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

.method public static synthetic a()Lzh/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->f()Lzh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final c(IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "bu"

    .line 7
    .line 8
    const-string v2, "mb"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "pageIndex"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string p1, "pageSize"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string p1, "recommendCode"

    .line 24
    .line 25
    const-string p2, "mb_apps"

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const-string p1, "pushModel"

    .line 37
    .line 38
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object p1, Lzh/a;->a:Lzh/a$a;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide p2

    .line 47
    invoke-virtual {p1, p2, p3}, Lzh/a$a;->a(J)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method

.method private final e()Lzh/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzh/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final f()Lzh/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lzh/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lzh/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final d(IILjava/lang/String;Ljava/lang/String;Loh/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move-object/from16 v0, p6

    .line 6
    .line 7
    instance-of v2, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;

    .line 13
    .line 14
    iget v3, v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;

    .line 28
    .line 29
    invoke-direct {v2, v1, v0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;-><init>(Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    iget v3, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    .line 40
    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x0

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-ne v3, v10, :cond_1

    .line 46
    .line 47
    iget-object v3, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Loh/a;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v4, v0

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move/from16 v2, p1

    .line 76
    .line 77
    move/from16 v3, p2

    .line 78
    .line 79
    move-object/from16 v4, p4

    .line 80
    .line 81
    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->c(IILjava/lang/String;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    sget-object v2, Lrh/f;->a:Lrh/f;

    .line 86
    .line 87
    invoke-virtual {v2}, Lrh/f;->d()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const-string v3, "https://feature-api.palmplaystore.com"

    .line 94
    .line 95
    :goto_2
    move-object v13, v3

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const-string v3, "https://test-feature-api.palmplaystore.com"

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_3
    invoke-virtual {v2}, Lrh/f;->a()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    sget-object v14, Lxh/a;->a:Lxh/a;

    .line 107
    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->b()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " --> getPsLinkListBySlot() --> scene = "

    .line 121
    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, " --> url = "

    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, " --> jsonObject = "

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    const/16 v18, 0x6

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    const/16 v16, 0x0

    .line 153
    .line 154
    const/16 v17, 0x0

    .line 155
    .line 156
    invoke-static/range {v14 .. v19}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    .line 160
    .line 161
    sget-object v3, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_TRIGGER:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    .line 162
    .line 163
    const-string v5, ""

    .line 164
    .line 165
    const-string v6, ""

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    move-object/from16 v7, p3

    .line 169
    .line 170
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 174
    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->e()Lzh/a;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    sget-object v3, Lmg/b;->a:Lmg/b$a;

    .line 180
    .line 181
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const-string v5, "toString(...)"

    .line 186
    .line 187
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iput-object v8, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$0:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 195
    .line 196
    move-object/from16 v4, p5

    .line 197
    .line 198
    :try_start_2
    iput-object v4, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$1:Ljava/lang/Object;

    .line 199
    .line 200
    iput v10, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    .line 201
    .line 202
    invoke-interface {v2, v3, v13, v0}, Lzh/a;->b(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    if-ne v2, v9, :cond_5

    .line 207
    .line 208
    return-object v9

    .line 209
    :cond_5
    move-object v3, v4

    .line 210
    move-object v4, v8

    .line 211
    :goto_4
    :try_start_3
    check-cast v2, Lcom/transsion/ad/ps/model/PsLinkDto;

    .line 212
    .line 213
    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    .line 214
    .line 215
    sget-object v5, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_SUCCESS:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    .line 216
    .line 217
    if-eqz v2, :cond_6

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-eqz v6, :cond_6

    .line 224
    .line 225
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    goto :goto_5

    .line 234
    :cond_6
    move-object v6, v11

    .line 235
    :goto_5
    const-string v7, ""

    .line 236
    .line 237
    const-string v8, ""

    .line 238
    .line 239
    move-object/from16 p1, v0

    .line 240
    .line 241
    move-object/from16 p2, v5

    .line 242
    .line 243
    move-object/from16 p3, v6

    .line 244
    .line 245
    move-object/from16 p4, v7

    .line 246
    .line 247
    move-object/from16 p5, v8

    .line 248
    .line 249
    move-object/from16 p6, v4

    .line 250
    .line 251
    invoke-virtual/range {p1 .. p6}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    if-eqz v2, :cond_8

    .line 260
    .line 261
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    if-eqz v2, :cond_8

    .line 266
    .line 267
    check-cast v2, Ljava/lang/Iterable;

    .line 268
    .line 269
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_8

    .line 278
    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    check-cast v5, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 284
    .line 285
    sget-object v6, Lzh/b;->a:Lzh/b;

    .line 286
    .line 287
    invoke-virtual {v6}, Lzh/b;->n()Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-nez v6, :cond_7

    .line 292
    .line 293
    invoke-virtual {v5}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eqz v6, :cond_7

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_7
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_8
    if-eqz v3, :cond_9

    .line 309
    .line 310
    invoke-virtual {v3, v0}, Loh/a;->v(Ljava/util/List;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_9
    move-object v0, v11

    .line 317
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    goto :goto_a

    .line 322
    :catchall_1
    move-exception v0

    .line 323
    :goto_8
    move-object v3, v4

    .line 324
    move-object v4, v8

    .line 325
    goto :goto_9

    .line 326
    :catchall_2
    move-exception v0

    .line 327
    move-object/from16 v4, p5

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :goto_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 331
    .line 332
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-nez v0, :cond_a

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_a
    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    .line 348
    .line 349
    sget-object v5, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_FAIL:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    const-string v7, ""

    .line 356
    .line 357
    const/4 v8, 0x0

    .line 358
    move-object/from16 p1, v2

    .line 359
    .line 360
    move-object/from16 p2, v5

    .line 361
    .line 362
    move-object/from16 p3, v8

    .line 363
    .line 364
    move-object/from16 p4, v6

    .line 365
    .line 366
    move-object/from16 p5, v7

    .line 367
    .line 368
    move-object/from16 p6, v4

    .line 369
    .line 370
    invoke-virtual/range {p1 .. p6}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    if-eqz v3, :cond_b

    .line 374
    .line 375
    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    const/4 v4, 0x0

    .line 386
    invoke-direct {v2, v4, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v2, v11}, Loh/a;->e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 390
    .line 391
    .line 392
    :cond_b
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 393
    .line 394
    return-object v0
.end method
