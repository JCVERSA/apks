.class public Lcom/bytedance/sdk/openadsdk/core/sP/vS;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Fmk:F = 0.0f

.field public static TEQ:I = 0x8

.field private static Zq:F

.field private static dNu:J

.field private static sef:F

.field private static uvD:F


# instance fields
.field public Dq:I

.field public EjP:F

.field public HiB:J

.field public Jcg:I

.field private RiZ:I

.field public Sj:F

.field public TKC:F

.field private TzV:I

.field public Ym:Z

.field public aa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field public sP:F

.field public uA:I

.field public vS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Fmk:F

    .line 15
    .line 16
    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sef:F

    .line 17
    .line 18
    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    .line 19
    .line 20
    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->dNu:J

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Sj:F

    .line 7
    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sP:F

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    .line 11
    .line 12
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->HiB:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->vS:J

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    .line 22
    .line 23
    const/16 v1, -0x400

    .line 24
    .line 25
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    .line 26
    .line 27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->aa:Landroid/util/SparseArray;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    .line 41
    .line 42
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_9

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    if-eq v1, v2, :cond_6

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v1, v4, :cond_1

    .line 32
    .line 33
    if-eq v1, v3, :cond_0

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    :goto_0
    move v6, v0

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    sget v5, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Fmk:F

    .line 48
    .line 49
    sub-float/2addr v3, v5

    .line 50
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    add-float/2addr v1, v3

    .line 55
    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    .line 56
    .line 57
    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sget v5, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sef:F

    .line 64
    .line 65
    sub-float/2addr v3, v5

    .line 66
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    add-float/2addr v1, v3

    .line 71
    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Fmk:F

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sef:F

    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    sget-wide v7, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->dNu:J

    .line 90
    .line 91
    sub-long/2addr v5, v7

    .line 92
    const-wide/16 v7, 0xc8

    .line 93
    .line 94
    cmp-long v1, v5, v7

    .line 95
    .line 96
    if-lez v1, :cond_2

    .line 97
    .line 98
    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    .line 99
    .line 100
    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    .line 101
    .line 102
    int-to-float v5, v3

    .line 103
    cmpl-float v1, v1, v5

    .line 104
    .line 105
    if-gtz v1, :cond_3

    .line 106
    .line 107
    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    .line 108
    .line 109
    int-to-float v3, v3

    .line 110
    cmpl-float v1, v1, v3

    .line 111
    .line 112
    if-lez v1, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    move v2, v4

    .line 116
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    .line 127
    .line 128
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    .line 129
    .line 130
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    .line 131
    .line 132
    int-to-float v3, v3

    .line 133
    sub-float/2addr v1, v3

    .line 134
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    .line 139
    .line 140
    int-to-float v3, v3

    .line 141
    cmpl-float v1, v1, v3

    .line 142
    .line 143
    if-gez v1, :cond_4

    .line 144
    .line 145
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    .line 146
    .line 147
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    .line 148
    .line 149
    int-to-float v3, v3

    .line 150
    sub-float/2addr v1, v3

    .line 151
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    .line 156
    .line 157
    int-to-float v3, v3

    .line 158
    cmpl-float v1, v1, v3

    .line 159
    .line 160
    if-ltz v1, :cond_5

    .line 161
    .line 162
    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    .line 163
    .line 164
    :cond_5
    move v6, v2

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    .line 177
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->vS:J

    .line 183
    .line 184
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    .line 185
    .line 186
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    .line 187
    .line 188
    int-to-float v2, v2

    .line 189
    sub-float/2addr v1, v2

    .line 190
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    sget v2, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    .line 195
    .line 196
    int-to-float v2, v2

    .line 197
    cmpl-float v1, v1, v2

    .line 198
    .line 199
    if-gez v1, :cond_7

    .line 200
    .line 201
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    .line 202
    .line 203
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    .line 204
    .line 205
    int-to-float v2, v2

    .line 206
    sub-float/2addr v1, v2

    .line 207
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    sget v2, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    .line 212
    .line 213
    int-to-float v2, v2

    .line 214
    cmpl-float v1, v1, v2

    .line 215
    .line 216
    if-ltz v1, :cond_8

    .line 217
    .line 218
    :cond_7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    .line 219
    .line 220
    :cond_8
    move v6, v3

    .line 221
    goto :goto_2

    .line 222
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    float-to-int v1, v1

    .line 227
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    float-to-int v1, v1

    .line 234
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Sj:F

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sP:F

    .line 247
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->HiB:J

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    .line 271
    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    sput-wide v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->dNu:J

    .line 277
    .line 278
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->aa:Landroid/util/SparseArray;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    float-to-double v7, v3

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    float-to-double v9, p1

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 301
    .line 302
    .line 303
    move-result-wide v11

    .line 304
    move-object v5, v2

    .line 305
    invoke-direct/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method
