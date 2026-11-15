.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

.field private final b:Lcom/cloud/hisavana/sdk/common/tranmeasure/h;

.field private c:J

.field private d:J

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lcom/cloud/hisavana/sdk/r4;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->b(Lcom/cloud/hisavana/sdk/r4;)Lcom/cloud/hisavana/sdk/common/tranmeasure/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/h;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 2
    .line 3
    return-object p0
.end method

.method private b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lcom/cloud/hisavana/sdk/r4;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    .line 11
    .line 12
    iget v0, v0, Lcom/cloud/hisavana/sdk/r4;->c:I

    .line 13
    .line 14
    int-to-long v4, v0

    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_0
    return v1
.end method


# virtual methods
.method protected c()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->f()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/h;

    .line 11
    .line 12
    if-eqz v1, :cond_b

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lcom/cloud/hisavana/sdk/r4;

    .line 17
    .line 18
    if-eqz v1, :cond_b

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "ssp_measure"

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants;->a:Ljava/lang/String;

    .line 35
    .line 36
    sget v3, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

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
    const-string v4, "session.AdView.Tag"

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget v4, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->i()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d()I

    .line 105
    .line 106
    .line 107
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v3, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    const/4 v3, 0x1

    .line 123
    if-lez v1, :cond_5

    .line 124
    .line 125
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_5

    .line 132
    .line 133
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 134
    .line 135
    iget-object v5, v4, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 136
    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c(Z)V

    .line 140
    .line 141
    .line 142
    new-instance v4, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;

    .line 143
    .line 144
    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_5

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {v4, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setViewHeight(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setViewWidth(I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v4, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowReportTimeType(Ljava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v4}, Lcom/cloud/hisavana/sdk/q2;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    .line 183
    .line 184
    if-le v1, v0, :cond_6

    .line 185
    .line 186
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    .line 187
    .line 188
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/h;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->b:Ljava/lang/String;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->g:Ljava/lang/String;

    .line 193
    .line 194
    :cond_6
    if-lez v1, :cond_b

    .line 195
    .line 196
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    .line 197
    .line 198
    if-nez v0, :cond_7

    .line 199
    .line 200
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v5, "\u68c0\u67e5View\u5728Window\u7684\u53ef\u89c1\u6027 \u8fd4\u56de\u767e\u5206\u6bd4 --> exposureRatio = "

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v5, " totalImpressionTime="

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    .line 223
    .line 224
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v0, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_7
    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    .line 235
    .line 236
    const-wide/16 v6, 0x0

    .line 237
    .line 238
    cmp-long v0, v4, v6

    .line 239
    .line 240
    if-lez v0, :cond_8

    .line 241
    .line 242
    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    .line 243
    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 245
    .line 246
    .line 247
    move-result-wide v6

    .line 248
    iget-wide v8, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    .line 249
    .line 250
    sub-long/2addr v6, v8

    .line 251
    add-long/2addr v4, v6

    .line 252
    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    .line 253
    .line 254
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide v4

    .line 258
    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    .line 259
    .line 260
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_b

    .line 265
    .line 266
    int-to-float v0, v1

    .line 267
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 268
    .line 269
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lcom/cloud/hisavana/sdk/r4;

    .line 270
    .line 271
    iget v4, v4, Lcom/cloud/hisavana/sdk/r4;->a:F

    .line 272
    .line 273
    cmpl-float v0, v0, v4

    .line 274
    .line 275
    if-ltz v0, :cond_b

    .line 276
    .line 277
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    .line 278
    .line 279
    if-nez v0, :cond_b

    .line 280
    .line 281
    iput-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_a

    .line 288
    .line 289
    const/4 v1, 0x2

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowReportTimeType(Ljava/lang/Integer;)V

    .line 295
    .line 296
    .line 297
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    .line 298
    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setActualShowRate(Ljava/lang/Integer;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->g:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowArea(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    .line 312
    .line 313
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setActualShowTime(Ljava/lang/Long;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v0}, Lc7/c;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_9

    .line 325
    .line 326
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/q2;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_9
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/q2;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 331
    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_a
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const-string v1, "session.getmKey() instanceof AdsDTO --> false"

    .line 339
    .line 340
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    .line 350
    .line 351
    .line 352
    :cond_b
    :goto_2
    return-void
.end method

.method protected d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lcom/cloud/hisavana/sdk/r4;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/h;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->f()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v2, v1, v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a(Lcom/cloud/hisavana/sdk/r4;Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method
