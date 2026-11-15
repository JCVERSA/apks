.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OooO00o:I

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:Z

.field public final synthetic OooO0Oo:Z

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0O0:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0OO:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0Oo:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO00o:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO00o:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-nez v1, :cond_5

    .line 10
    .line 11
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 12
    .line 13
    iget-object v7, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 14
    .line 15
    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 16
    .line 17
    if-ne v7, v8, :cond_0

    .line 18
    .line 19
    iget-object v9, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 20
    .line 21
    sget-object v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 22
    .line 23
    if-ne v9, v10, :cond_0

    .line 24
    .line 25
    iput-object v8, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v9, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    if-eqz v9, :cond_3

    .line 31
    .line 32
    iget-boolean v10, v7, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    .line 33
    .line 34
    if-nez v10, :cond_1

    .line 35
    .line 36
    sget-object v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 37
    .line 38
    if-ne v7, v10, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-boolean v10, v7, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    .line 41
    .line 42
    if-eqz v10, :cond_3

    .line 43
    .line 44
    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    iput-object v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 60
    .line 61
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 70
    .line 71
    invoke-virtual {v1, v8}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 76
    .line 77
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 84
    .line 85
    if-ne v7, v2, :cond_4

    .line 86
    .line 87
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 92
    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    add-int/2addr v1, v4

    .line 96
    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO00o:I

    .line 97
    .line 98
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 99
    .line 100
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0O0:I

    .line 101
    .line 102
    int-to-long v2, v2

    .line 103
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 107
    .line 108
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0OO:Z

    .line 115
    .line 116
    if-eqz v1, :cond_d

    .line 117
    .line 118
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 119
    .line 120
    invoke-virtual {v1, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 121
    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_5
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 126
    .line 127
    iget-object v6, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 128
    .line 129
    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0Oo:Z

    .line 130
    .line 131
    invoke-interface {v6, v1, v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const v6, 0x7fffffff

    .line 141
    .line 142
    .line 143
    if-ge v1, v6, :cond_d

    .line 144
    .line 145
    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0OO:Z

    .line 146
    .line 147
    if-eqz v6, :cond_6

    .line 148
    .line 149
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 150
    .line 151
    iget-boolean v7, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 152
    .line 153
    if-eqz v7, :cond_6

    .line 154
    .line 155
    iget v7, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 156
    .line 157
    if-gez v7, :cond_6

    .line 158
    .line 159
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 160
    .line 161
    check-cast v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_6

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    move v4, v5

    .line 171
    :goto_1
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 172
    .line 173
    iget v7, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 174
    .line 175
    if-eqz v4, :cond_7

    .line 176
    .line 177
    iget v4, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 178
    .line 179
    neg-int v4, v4

    .line 180
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    goto :goto_2

    .line 185
    :cond_7
    move v4, v5

    .line 186
    :goto_2
    sub-int/2addr v7, v4

    .line 187
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 188
    .line 189
    iget-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 190
    .line 191
    if-nez v6, :cond_8

    .line 192
    .line 193
    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 194
    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v16

    .line 201
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 202
    .line 203
    iget-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 204
    .line 205
    if-eqz v6, :cond_a

    .line 206
    .line 207
    iget v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 208
    .line 209
    iput v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 210
    .line 211
    iget v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 212
    .line 213
    sub-int/2addr v8, v7

    .line 214
    iput v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 215
    .line 216
    iput-boolean v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 217
    .line 218
    iget-boolean v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    .line 219
    .line 220
    if-eqz v8, :cond_9

    .line 221
    .line 222
    move v8, v7

    .line 223
    goto :goto_3

    .line 224
    :cond_9
    move v8, v5

    .line 225
    :goto_3
    iget v13, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 226
    .line 227
    int-to-float v15, v8

    .line 228
    add-float/2addr v6, v15

    .line 229
    iget v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 230
    .line 231
    mul-int/lit8 v8, v8, 0x2

    .line 232
    .line 233
    int-to-float v8, v8

    .line 234
    add-float v14, v6, v8

    .line 235
    .line 236
    const/4 v12, 0x0

    .line 237
    const/4 v6, 0x0

    .line 238
    move-wide/from16 v8, v16

    .line 239
    .line 240
    move-wide/from16 v10, v16

    .line 241
    .line 242
    move/from16 v18, v15

    .line 243
    .line 244
    move v15, v6

    .line 245
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v4, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    .line 250
    .line 251
    .line 252
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 253
    .line 254
    iget v13, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 255
    .line 256
    iget v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 257
    .line 258
    add-float v14, v6, v18

    .line 259
    .line 260
    const/4 v12, 0x2

    .line 261
    const/4 v15, 0x0

    .line 262
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v4, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    .line 267
    .line 268
    .line 269
    :cond_a
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 270
    .line 271
    iget-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 272
    .line 273
    if-eqz v6, :cond_b

    .line 274
    .line 275
    iput v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 276
    .line 277
    iget v13, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 278
    .line 279
    iget v14, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 280
    .line 281
    const/4 v12, 0x1

    .line 282
    const/4 v15, 0x0

    .line 283
    move-wide/from16 v8, v16

    .line 284
    .line 285
    move-wide/from16 v10, v16

    .line 286
    .line 287
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-static {v4, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    .line 292
    .line 293
    .line 294
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 295
    .line 296
    iput-boolean v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 297
    .line 298
    iput v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 299
    .line 300
    :cond_b
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 301
    .line 302
    iget-object v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 303
    .line 304
    new-instance v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;

    .line 305
    .line 306
    invoke-direct {v6, v0, v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;I)V

    .line 307
    .line 308
    .line 309
    iget v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 310
    .line 311
    if-gez v4, :cond_c

    .line 312
    .line 313
    int-to-long v2, v1

    .line 314
    :cond_c
    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    .line 316
    .line 317
    :cond_d
    :goto_4
    return-void
.end method
