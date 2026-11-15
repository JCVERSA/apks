.class public final Lcom/contrarywind/timer/InertiaTimerTask;
.super Ljava/util/TimerTask;
.source "source.java"


# instance fields
.field private mCurrentVelocityY:F

.field private final mFirstVelocityY:F

.field private final mWheelView:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 5
    .line 6
    iput p2, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    .line 7
    .line 8
    const/high16 p1, 0x4f000000

    .line 9
    .line 10
    iput p1, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 2
    .line 3
    const/high16 v1, 0x4f000000

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 17
    .line 18
    cmpl-float v0, v0, v2

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    .line 23
    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/high16 v2, -0x3b060000    # -2000.0f

    .line 30
    .line 31
    :goto_0
    iput v2, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    .line 35
    .line 36
    iput v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 37
    .line 38
    :cond_2
    :goto_1
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    cmpl-float v0, v0, v1

    .line 45
    .line 46
    const/high16 v2, 0x41a00000    # 20.0f

    .line 47
    .line 48
    if-ltz v0, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    cmpg-float v0, v0, v2

    .line 57
    .line 58
    if-gtz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v1, 0x7d0

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 78
    .line 79
    const/high16 v3, 0x42c80000    # 100.0f

    .line 80
    .line 81
    div-float/2addr v0, v3

    .line 82
    float-to-int v0, v0

    .line 83
    iget-object v3, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    int-to-float v0, v0

    .line 90
    sub-float/2addr v4, v0

    .line 91
    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->isLoop()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    iget-object v3, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getItemHeight()F

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    neg-int v4, v4

    .line 115
    int-to-float v4, v4

    .line 116
    mul-float/2addr v4, v3

    .line 117
    iget-object v5, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getItemsCount()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    add-int/lit8 v5, v5, -0x1

    .line 124
    .line 125
    iget-object v6, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    sub-int/2addr v5, v6

    .line 132
    int-to-float v5, v5

    .line 133
    mul-float/2addr v5, v3

    .line 134
    iget-object v6, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    float-to-double v6, v6

    .line 141
    float-to-double v8, v3

    .line 142
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    .line 143
    .line 144
    mul-double/2addr v8, v10

    .line 145
    sub-double/2addr v6, v8

    .line 146
    float-to-double v10, v4

    .line 147
    cmpg-double v3, v6, v10

    .line 148
    .line 149
    if-gez v3, :cond_4

    .line 150
    .line 151
    iget-object v3, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    add-float v4, v3, v0

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    float-to-double v6, v3

    .line 167
    add-double/2addr v6, v8

    .line 168
    float-to-double v8, v5

    .line 169
    cmpl-double v3, v6, v8

    .line 170
    .line 171
    if-lez v3, :cond_5

    .line 172
    .line 173
    iget-object v3, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    add-float v5, v3, v0

    .line 180
    .line 181
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    cmpg-float v0, v0, v4

    .line 188
    .line 189
    if-gtz v0, :cond_6

    .line 190
    .line 191
    const/high16 v0, 0x42200000    # 40.0f

    .line 192
    .line 193
    iput v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 194
    .line 195
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 196
    .line 197
    float-to-int v3, v4

    .line 198
    int-to-float v3, v3

    .line 199
    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    cmpl-float v0, v0, v5

    .line 210
    .line 211
    if-ltz v0, :cond_7

    .line 212
    .line 213
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 214
    .line 215
    float-to-int v3, v5

    .line 216
    int-to-float v3, v3

    .line 217
    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 218
    .line 219
    .line 220
    const/high16 v0, -0x3de00000    # -40.0f

    .line 221
    .line 222
    iput v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 223
    .line 224
    :cond_7
    :goto_3
    iget v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 225
    .line 226
    cmpg-float v1, v0, v1

    .line 227
    .line 228
    if-gez v1, :cond_8

    .line 229
    .line 230
    add-float/2addr v0, v2

    .line 231
    iput v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_8
    sub-float/2addr v0, v2

    .line 235
    iput v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 236
    .line 237
    :goto_4
    iget-object v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/16 v1, 0x3e8

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    .line 247
    .line 248
    return-void
.end method
