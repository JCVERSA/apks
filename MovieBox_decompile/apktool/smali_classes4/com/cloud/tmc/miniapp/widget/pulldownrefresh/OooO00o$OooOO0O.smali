.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OooO00o:I

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:Ljava/lang/Boolean;

.field public final synthetic OooO0Oo:Z

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;ILjava/lang/Boolean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0O0:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0OO:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0Oo:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO00o:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO00o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 10
    .line 11
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-ne v4, v5, :cond_0

    .line 15
    .line 16
    iget-object v7, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 17
    .line 18
    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 19
    .line 20
    if-ne v7, v8, :cond_0

    .line 21
    .line 22
    iput-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v7, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz v7, :cond_3

    .line 28
    .line 29
    iget-boolean v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 30
    .line 31
    if-eqz v8, :cond_3

    .line 32
    .line 33
    iget-boolean v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 38
    .line 39
    if-ne v4, v8, :cond_3

    .line 40
    .line 41
    :cond_1
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 54
    .line 55
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 58
    .line 59
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 74
    .line 75
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 82
    .line 83
    if-ne v4, v1, :cond_4

    .line 84
    .line 85
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    add-int/2addr v0, v6

    .line 94
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO00o:I

    .line 95
    .line 96
    iget-object v0, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 97
    .line 98
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0O0:I

    .line 99
    .line 100
    int-to-long v3, v1

    .line 101
    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 105
    .line 106
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0OO:Ljava/lang/Boolean;

    .line 112
    .line 113
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    if-ne v0, v1, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0OO:Ljava/lang/Boolean;

    .line 123
    .line 124
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    .line 126
    if-ne v0, v1, :cond_c

    .line 127
    .line 128
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 129
    .line 130
    invoke-virtual {v0, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 131
    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 136
    .line 137
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 138
    .line 139
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0Oo:Z

    .line 140
    .line 141
    invoke-interface {v3, v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    const v3, 0x7fffffff

    .line 151
    .line 152
    .line 153
    if-ge v0, v3, :cond_c

    .line 154
    .line 155
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 156
    .line 157
    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 158
    .line 159
    if-nez v4, :cond_6

    .line 160
    .line 161
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 162
    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v12

    .line 169
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 170
    .line 171
    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 176
    .line 177
    iput v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 178
    .line 179
    iput v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 180
    .line 181
    iput-boolean v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 182
    .line 183
    iget v9, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 184
    .line 185
    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 186
    .line 187
    int-to-float v5, v5

    .line 188
    add-float/2addr v4, v5

    .line 189
    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 190
    .line 191
    mul-int/lit8 v5, v5, 0x2

    .line 192
    .line 193
    int-to-float v5, v5

    .line 194
    sub-float v10, v4, v5

    .line 195
    .line 196
    const/4 v8, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    move-wide v4, v12

    .line 199
    move-wide v6, v12

    .line 200
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-static {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    .line 205
    .line 206
    .line 207
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 208
    .line 209
    iget v9, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 210
    .line 211
    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 212
    .line 213
    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 214
    .line 215
    int-to-float v5, v5

    .line 216
    add-float v10, v4, v5

    .line 217
    .line 218
    const/4 v8, 0x2

    .line 219
    move-wide v4, v12

    .line 220
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-static {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    .line 225
    .line 226
    .line 227
    :cond_7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 228
    .line 229
    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 230
    .line 231
    if-eqz v4, :cond_8

    .line 232
    .line 233
    iput v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 234
    .line 235
    iget v9, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 236
    .line 237
    iget v10, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 238
    .line 239
    const/4 v8, 0x1

    .line 240
    const/4 v11, 0x0

    .line 241
    move-wide v4, v12

    .line 242
    move-wide v6, v12

    .line 243
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-static {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 251
    .line 252
    iput-boolean v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 253
    .line 254
    iput v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 255
    .line 256
    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 257
    .line 258
    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 259
    .line 260
    if-lez v4, :cond_a

    .line 261
    .line 262
    iget-object v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    .line 263
    .line 264
    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    .line 265
    .line 266
    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 271
    .line 272
    iget-boolean v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    .line 273
    .line 274
    if-eqz v3, :cond_9

    .line 275
    .line 276
    iget-object v1, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 277
    .line 278
    iget v2, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 279
    .line 280
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :cond_9
    if-eqz v0, :cond_c

    .line 287
    .line 288
    if-eqz v1, :cond_c

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_a
    if-gez v4, :cond_b

    .line 295
    .line 296
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    .line 297
    .line 298
    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    .line 299
    .line 300
    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_b
    iget-object v0, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 305
    .line 306
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 307
    .line 308
    invoke-virtual {v0, v2, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 314
    .line 315
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 316
    .line 317
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 320
    .line 321
    .line 322
    :cond_c
    :goto_1
    return-void
.end method
