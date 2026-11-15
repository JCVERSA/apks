.class public final Lcom/contrarywind/timer/SmoothScrollTimerTask;
.super Ljava/util/TimerTask;
.source "source.java"


# instance fields
.field private offset:I

.field private realOffset:I

.field private realTotalOffset:I

.field private final wheelView:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 5
    .line 6
    iput p2, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->offset:I

    .line 7
    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->offset:I

    .line 9
    .line 10
    iput v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 13
    .line 14
    int-to-float v1, v0

    .line 15
    const v2, 0x3dcccccd    # 0.1f

    .line 16
    .line 17
    .line 18
    mul-float/2addr v1, v2

    .line 19
    float-to-int v1, v1

    .line 20
    iput v1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput v2, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 32
    .line 33
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0xbb8

    .line 38
    .line 39
    if-gt v0, v2, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget v4, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 63
    .line 64
    int-to-float v4, v4

    .line 65
    add-float/2addr v3, v4

    .line 66
    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->isLoop()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getItemHeight()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    neg-int v3, v3

    .line 90
    int-to-float v3, v3

    .line 91
    mul-float/2addr v3, v0

    .line 92
    iget-object v4, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getItemsCount()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sub-int/2addr v4, v2

    .line 99
    iget-object v2, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    sub-int/2addr v4, v2

    .line 106
    int-to-float v2, v4

    .line 107
    mul-float/2addr v2, v0

    .line 108
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    cmpg-float v0, v0, v3

    .line 115
    .line 116
    if-lez v0, :cond_4

    .line 117
    .line 118
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    cmpl-float v0, v0, v2

    .line 125
    .line 126
    if-ltz v0, :cond_5

    .line 127
    .line 128
    :cond_4
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 135
    .line 136
    int-to-float v3, v3

    .line 137
    sub-float/2addr v2, v3

    .line 138
    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/16 v1, 0x3e8

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    .line 166
    .line 167
    iget v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 168
    .line 169
    iget v1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 170
    .line 171
    sub-int/2addr v0, v1

    .line 172
    iput v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 173
    .line 174
    :goto_1
    return-void
.end method
