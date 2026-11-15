.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

.field private final sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->sP:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-wide/16 v4, -0x1

    .line 37
    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    const/4 v9, 0x1

    .line 42
    if-eqz v3, :cond_b

    .line 43
    .line 44
    const/4 v10, 0x3

    .line 45
    if-eq v3, v9, :cond_2

    .line 46
    .line 47
    if-eq v3, v8, :cond_4

    .line 48
    .line 49
    if-eq v3, v10, :cond_3

    .line 50
    .line 51
    const/4 v10, -0x1

    .line 52
    :cond_2
    :goto_0
    move v12, v10

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_3
    const/4 v10, 0x4

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 66
    .line 67
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    sub-float/2addr v3, v11

    .line 72
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->sP:I

    .line 77
    .line 78
    int-to-float v11, v11

    .line 79
    cmpl-float v3, v3, v11

    .line 80
    .line 81
    if-gez v3, :cond_5

    .line 82
    .line 83
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sub-float v3, v10, v3

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->sP:I

    .line 96
    .line 97
    int-to-float v11, v11

    .line 98
    cmpl-float v3, v3, v11

    .line 99
    .line 100
    if-ltz v3, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 107
    .line 108
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 112
    .line 113
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ib(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 122
    .line 123
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    sub-float/2addr v12, v13

    .line 128
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    add-float/2addr v11, v12

    .line 133
    invoke-static {v3, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F

    .line 134
    .line 135
    .line 136
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 137
    .line 138
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 147
    .line 148
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    sub-float/2addr v12, v13

    .line 153
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    add-float/2addr v11, v12

    .line 158
    invoke-static {v3, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v11

    .line 165
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 166
    .line 167
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v13

    .line 171
    sub-long/2addr v11, v13

    .line 172
    const-wide/16 v13, 0xc8

    .line 173
    .line 174
    cmp-long v3, v11, v13

    .line 175
    .line 176
    const/high16 v11, 0x41000000    # 8.0f

    .line 177
    .line 178
    if-lez v3, :cond_8

    .line 179
    .line 180
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 181
    .line 182
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ib(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    cmpl-float v3, v3, v11

    .line 187
    .line 188
    if-gtz v3, :cond_7

    .line 189
    .line 190
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    cmpl-float v3, v3, v11

    .line 197
    .line 198
    if-lez v3, :cond_8

    .line 199
    .line 200
    :cond_7
    move v3, v9

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    move v3, v8

    .line 203
    :goto_2
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 204
    .line 205
    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_a

    .line 210
    .line 211
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 212
    .line 213
    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    sub-float v12, v10, v12

    .line 218
    .line 219
    cmpl-float v11, v12, v11

    .line 220
    .line 221
    if-lez v11, :cond_9

    .line 222
    .line 223
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 224
    .line 225
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Sj()V

    .line 230
    .line 231
    .line 232
    :cond_9
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 233
    .line 234
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    sub-float/2addr v10, v11

    .line 239
    const/high16 v11, -0x3f000000    # -8.0f

    .line 240
    .line 241
    cmpg-float v10, v10, v11

    .line 242
    .line 243
    if-gez v10, :cond_a

    .line 244
    .line 245
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 246
    .line 247
    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->sP()V

    .line 252
    .line 253
    .line 254
    :cond_a
    move v12, v3

    .line 255
    goto :goto_3

    .line 256
    :cond_b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 257
    .line 258
    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z

    .line 259
    .line 260
    .line 261
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 262
    .line 263
    new-instance v10, Landroid/util/SparseArray;

    .line 264
    .line 265
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 269
    .line 270
    .line 271
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 272
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F

    .line 278
    .line 279
    .line 280
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 281
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F

    .line 287
    .line 288
    .line 289
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide v10

    .line 295
    invoke-static {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .line 297
    .line 298
    :try_start_1
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 299
    .line 300
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/component/uA/vS;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/uA/vS;->getLandingPageClickBegin()J

    .line 305
    .line 306
    .line 307
    move-result-wide v10

    .line 308
    cmp-long v3, v10, v6

    .line 309
    .line 310
    if-lez v3, :cond_c

    .line 311
    .line 312
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 313
    .line 314
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v12

    .line 318
    cmp-long v3, v10, v12

    .line 319
    .line 320
    if-gez v3, :cond_c

    .line 321
    .line 322
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 323
    .line 324
    invoke-static {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;J)J

    .line 325
    .line 326
    .line 327
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 328
    .line 329
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/component/uA/vS;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPageClickBegin(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .line 335
    .line 336
    :catch_0
    :cond_c
    :try_start_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 337
    .line 338
    const/high16 v10, -0x40800000    # -1.0f

    .line 339
    .line 340
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F

    .line 341
    .line 342
    .line 343
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 344
    .line 345
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F

    .line 346
    .line 347
    .line 348
    move v12, v2

    .line 349
    :goto_3
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 350
    .line 351
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ley(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/util/SparseArray;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    .line 360
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    float-to-double v13, v11

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    float-to-double v4, v11

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 372
    .line 373
    .line 374
    move-result-wide v17

    .line 375
    move-object v11, v15

    .line 376
    move-object v2, v15

    .line 377
    move-wide v15, v4

    .line 378
    invoke-direct/range {v11 .. v18}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-ne v2, v9, :cond_18

    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-nez v2, :cond_18

    .line 395
    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-ne v2, v9, :cond_18

    .line 409
    .line 410
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 411
    .line 412
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LqL(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_d

    .line 417
    .line 418
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 419
    .line 420
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_18

    .line 429
    .line 430
    :cond_d
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 431
    .line 432
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    if-eqz v2, :cond_18

    .line 437
    .line 438
    new-instance v2, Lorg/json/JSONObject;

    .line 439
    .line 440
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 441
    .line 442
    .line 443
    const-string v3, "down_x"

    .line 444
    .line 445
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 446
    .line 447
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    float-to-double v4, v4

    .line 452
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 453
    .line 454
    .line 455
    const-string v3, "down_y"

    .line 456
    .line 457
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 458
    .line 459
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    float-to-double v4, v4

    .line 464
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 465
    .line 466
    .line 467
    const-string v3, "down_time"

    .line 468
    .line 469
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 470
    .line 471
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)J

    .line 472
    .line 473
    .line 474
    move-result-wide v4

    .line 475
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 476
    .line 477
    .line 478
    const-string v3, "up_x"

    .line 479
    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    float-to-double v4, v4

    .line 485
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 486
    .line 487
    .line 488
    const-string v3, "up_y"

    .line 489
    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    float-to-double v4, v4

    .line 495
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 496
    .line 497
    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 499
    .line 500
    .line 501
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    :try_start_3
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 503
    .line 504
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/component/uA/vS;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/uA/vS;->getLandingPageClickEnd()J

    .line 509
    .line 510
    .line 511
    move-result-wide v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 512
    cmp-long v5, v10, v6

    .line 513
    .line 514
    if-lez v5, :cond_e

    .line 515
    .line 516
    cmp-long v5, v10, v3

    .line 517
    .line 518
    if-gez v5, :cond_e

    .line 519
    .line 520
    :try_start_4
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 521
    .line 522
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/component/uA/vS;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    const-wide/16 v4, -0x1

    .line 527
    .line 528
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPageClickEnd(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 529
    .line 530
    .line 531
    :catch_1
    move-wide v3, v10

    .line 532
    :catch_2
    :cond_e
    :try_start_5
    const-string v5, "up_time"

    .line 533
    .line 534
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 535
    .line 536
    .line 537
    new-array v3, v8, [I

    .line 538
    .line 539
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 540
    .line 541
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    if-eqz v4, :cond_f

    .line 546
    .line 547
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 548
    .line 549
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 554
    .line 555
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->xu:I

    .line 556
    .line 557
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/view/View;)Landroid/view/View;

    .line 562
    .line 563
    .line 564
    goto :goto_4

    .line 565
    :cond_f
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 566
    .line 567
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 572
    .line 573
    const v6, 0x1f000011

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/view/View;)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    :goto_4
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 584
    .line 585
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    if-eqz v4, :cond_10

    .line 590
    .line 591
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 592
    .line 593
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 598
    .line 599
    .line 600
    const-string v4, "button_x"

    .line 601
    .line 602
    const/4 v5, 0x0

    .line 603
    aget v6, v3, v5

    .line 604
    .line 605
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 606
    .line 607
    .line 608
    const-string v4, "button_y"

    .line 609
    .line 610
    aget v3, v3, v9

    .line 611
    .line 612
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 613
    .line 614
    .line 615
    const-string v3, "button_width"

    .line 616
    .line 617
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 618
    .line 619
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 628
    .line 629
    .line 630
    const-string v3, "button_height"

    .line 631
    .line 632
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 633
    .line 634
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 643
    .line 644
    .line 645
    :cond_10
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 646
    .line 647
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    if-eqz v3, :cond_11

    .line 652
    .line 653
    new-array v3, v8, [I

    .line 654
    .line 655
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 656
    .line 657
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 662
    .line 663
    .line 664
    const-string v4, "ad_x"

    .line 665
    .line 666
    const/4 v5, 0x0

    .line 667
    aget v6, v3, v5

    .line 668
    .line 669
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 670
    .line 671
    .line 672
    const-string v4, "ad_y"

    .line 673
    .line 674
    aget v3, v3, v9

    .line 675
    .line 676
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 677
    .line 678
    .line 679
    const-string v3, "width"

    .line 680
    .line 681
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 682
    .line 683
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 692
    .line 693
    .line 694
    const-string v3, "height"

    .line 695
    .line 696
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 697
    .line 698
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 703
    .line 704
    .line 705
    move-result v4

    .line 706
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 707
    .line 708
    .line 709
    :cond_11
    const-string v3, "toolType"

    .line 710
    .line 711
    const/4 v4, 0x0

    .line 712
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 717
    .line 718
    .line 719
    const-string v3, "deviceId"

    .line 720
    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 722
    .line 723
    .line 724
    move-result v4

    .line 725
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 726
    .line 727
    .line 728
    const-string v3, "source"

    .line 729
    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    .line 736
    .line 737
    const-string v0, "ft"

    .line 738
    .line 739
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 740
    .line 741
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ley(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/util/SparseArray;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj()Z

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    if-eqz v4, :cond_12

    .line 754
    .line 755
    move v4, v9

    .line 756
    goto :goto_5

    .line 757
    :cond_12
    move v4, v8

    .line 758
    :goto_5
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ;->Sj(Landroid/util/SparseArray;I)Lorg/json/JSONObject;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    .line 764
    .line 765
    const-string v0, "user_behavior_type"

    .line 766
    .line 767
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 768
    .line 769
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    if-eqz v3, :cond_13

    .line 774
    .line 775
    move v3, v9

    .line 776
    goto :goto_6

    .line 777
    :cond_13
    move v3, v8

    .line 778
    :goto_6
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 779
    .line 780
    .line 781
    const-string v0, "click_scence"

    .line 782
    .line 783
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 784
    .line 785
    .line 786
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 787
    .line 788
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    if-eqz v0, :cond_14

    .line 793
    .line 794
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 795
    .line 796
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lorg/json/JSONObject;)V

    .line 801
    .line 802
    .line 803
    :cond_14
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 804
    .line 805
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LqL(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-nez v0, :cond_15

    .line 810
    .line 811
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 812
    .line 813
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    if-eqz v0, :cond_16

    .line 822
    .line 823
    :cond_15
    const/4 v2, 0x0

    .line 824
    goto :goto_8

    .line 825
    :cond_16
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 826
    .line 827
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z

    .line 828
    .line 829
    .line 830
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 831
    const-string v3, "click"

    .line 832
    .line 833
    if-eqz v0, :cond_17

    .line 834
    .line 835
    :try_start_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 836
    .line 837
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    const-string v4, "rewarded_video"

    .line 842
    .line 843
    invoke-static {v0, v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 844
    .line 845
    .line 846
    goto :goto_7

    .line 847
    :cond_17
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 848
    .line 849
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    const-string v4, "fullscreen_interstitial_ad"

    .line 854
    .line 855
    invoke-static {v0, v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 856
    .line 857
    .line 858
    :goto_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 859
    .line 860
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 861
    .line 862
    .line 863
    goto :goto_9

    .line 864
    :goto_8
    return v2

    .line 865
    :cond_18
    :goto_9
    const/4 v2, 0x0

    .line 866
    goto :goto_b

    .line 867
    :goto_a
    const-string v2, "TTAD.RFWVM"

    .line 868
    .line 869
    const-string v3, "TouchRecordTool onTouch error"

    .line 870
    .line 871
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    .line 873
    .line 874
    goto :goto_9

    .line 875
    :goto_b
    return v2
.end method
