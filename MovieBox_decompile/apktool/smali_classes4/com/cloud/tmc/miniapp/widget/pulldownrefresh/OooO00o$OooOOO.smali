.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOO"
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:J

.field public OooO0Oo:F

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

.field public OooO0o0:F


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0Oo:F

    .line 11
    .line 12
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 13
    .line 14
    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0O0:I

    .line 15
    .line 16
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0OO:J

    .line 21
    .line 22
    iget-object p3, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    int-to-long v1, v1

    .line 27
    invoke-virtual {p3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    cmpl-float p2, p2, v0

    .line 31
    .line 32
    if-lez p2, :cond_0

    .line 33
    .line 34
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 35
    .line 36
    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 37
    .line 38
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 45
    .line 46
    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 47
    .line 48
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 4
    .line 5
    if-ne v1, p0, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    .line 10
    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0O0:I

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 26
    .line 27
    if-lt v0, v1, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0O0:I

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 34
    .line 35
    float-to-double v0, v0

    .line 36
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 41
    .line 42
    int-to-double v4, v4

    .line 43
    mul-double/2addr v4, v2

    .line 44
    const-wide v2, 0x3fdcccccc0000000L    # 0.44999998807907104

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    mul-double/2addr v2, v0

    .line 54
    double-to-float v0, v2

    .line 55
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 59
    .line 60
    float-to-double v0, v0

    .line 61
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 66
    .line 67
    int-to-double v4, v4

    .line 68
    mul-double/2addr v4, v2

    .line 69
    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    mul-double/2addr v2, v0

    .line 79
    double-to-float v0, v2

    .line 80
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 84
    .line 85
    float-to-double v0, v0

    .line 86
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO00o:I

    .line 91
    .line 92
    int-to-double v4, v4

    .line 93
    mul-double/2addr v4, v2

    .line 94
    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    mul-double/2addr v2, v0

    .line 104
    double-to-float v0, v2

    .line 105
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 106
    .line 107
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0OO:J

    .line 112
    .line 113
    sub-long v2, v0, v2

    .line 114
    .line 115
    long-to-float v2, v2

    .line 116
    const/high16 v3, 0x3f800000    # 1.0f

    .line 117
    .line 118
    mul-float/2addr v2, v3

    .line 119
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 120
    .line 121
    div-float/2addr v2, v4

    .line 122
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o0:F

    .line 123
    .line 124
    mul-float/2addr v4, v2

    .line 125
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    cmpl-float v2, v2, v3

    .line 130
    .line 131
    const/16 v3, 0xa

    .line 132
    .line 133
    if-ltz v2, :cond_2

    .line 134
    .line 135
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0OO:J

    .line 136
    .line 137
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0Oo:F

    .line 138
    .line 139
    add-float/2addr v0, v4

    .line 140
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0Oo:F

    .line 141
    .line 142
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 150
    .line 151
    int-to-long v1, v3

    .line 152
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 157
    .line 158
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 159
    .line 160
    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    .line 161
    .line 162
    if-eqz v2, :cond_3

    .line 163
    .line 164
    iget-boolean v4, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 165
    .line 166
    if-eqz v4, :cond_3

    .line 167
    .line 168
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 169
    .line 170
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 171
    .line 172
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    if-eqz v2, :cond_4

    .line 179
    .line 180
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    .line 181
    .line 182
    if-eqz v1, :cond_4

    .line 183
    .line 184
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 185
    .line 186
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 187
    .line 188
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 194
    .line 195
    const/4 v1, 0x0

    .line 196
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 197
    .line 198
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0O0:I

    .line 205
    .line 206
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-lt v0, v1, :cond_5

    .line 211
    .line 212
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 213
    .line 214
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 215
    .line 216
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0O0:I

    .line 217
    .line 218
    sub-int/2addr v0, v1

    .line 219
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    int-to-float v0, v0

    .line 224
    sget v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0O0:F

    .line 225
    .line 226
    div-float/2addr v0, v1

    .line 227
    float-to-int v0, v0

    .line 228
    const/16 v1, 0x1e

    .line 229
    .line 230
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    const/16 v1, 0x64

    .line 235
    .line 236
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    mul-int/2addr v0, v3

    .line 241
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 242
    .line 243
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;->OooO0O0:I

    .line 244
    .line 245
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    .line 246
    .line 247
    const/4 v4, 0x0

    .line 248
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 249
    .line 250
    .line 251
    :cond_5
    :goto_2
    return-void
.end method
