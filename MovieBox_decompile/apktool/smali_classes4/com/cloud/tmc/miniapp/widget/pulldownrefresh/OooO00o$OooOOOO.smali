.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;
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
    name = "OooOOOO"
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:F

.field public OooO0OO:J

.field public OooO0Oo:J

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;F)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0OO:J

    .line 9
    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0Oo:J

    .line 15
    .line 16
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    .line 17
    .line 18
    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 19
    .line 20
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO00o:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 4
    .line 5
    if-ne v1, p0, :cond_7

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    .line 10
    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0Oo:J

    .line 18
    .line 19
    sub-long v2, v0, v2

    .line 20
    .line 21
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    .line 22
    .line 23
    float-to-double v4, v4

    .line 24
    const v6, 0x3f7ae148    # 0.98f

    .line 25
    .line 26
    .line 27
    float-to-double v6, v6

    .line 28
    iget-wide v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0OO:J

    .line 29
    .line 30
    sub-long v8, v0, v8

    .line 31
    .line 32
    long-to-float v8, v8

    .line 33
    const/16 v9, 0xa

    .line 34
    .line 35
    int-to-float v10, v9

    .line 36
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 37
    .line 38
    div-float v10, v11, v10

    .line 39
    .line 40
    div-float/2addr v8, v10

    .line 41
    float-to-double v12, v8

    .line 42
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    mul-double/2addr v6, v4

    .line 47
    double-to-float v4, v6

    .line 48
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    .line 49
    .line 50
    long-to-float v2, v2

    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    .line 53
    mul-float/2addr v2, v3

    .line 54
    div-float/2addr v2, v11

    .line 55
    mul-float/2addr v2, v4

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    cmpl-float v3, v4, v3

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    if-lez v3, :cond_6

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0Oo:J

    .line 66
    .line 67
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO00o:I

    .line 68
    .line 69
    int-to-float v0, v0

    .line 70
    add-float/2addr v0, v2

    .line 71
    float-to-int v0, v0

    .line 72
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO00o:I

    .line 73
    .line 74
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 75
    .line 76
    iget v3, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 77
    .line 78
    mul-int/2addr v3, v0

    .line 79
    const/4 v5, 0x1

    .line 80
    if-lez v3, :cond_0

    .line 81
    .line 82
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 83
    .line 84
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 85
    .line 86
    invoke-virtual {v1, v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 92
    .line 93
    int-to-long v1, v9

    .line 94
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    iput-object v4, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 99
    .line 100
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 101
    .line 102
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 111
    .line 112
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 115
    .line 116
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    .line 117
    .line 118
    neg-float v3, v3

    .line 119
    float-to-int v3, v3

    .line 120
    sget v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0O0:F

    .line 121
    .line 122
    instance-of v4, v0, Landroid/widget/ScrollView;

    .line 123
    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    check-cast v0, Landroid/widget/ScrollView;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fling(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    instance-of v4, v0, Landroid/widget/AbsListView;

    .line 133
    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    check-cast v0, Landroid/widget/AbsListView;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->fling(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    instance-of v4, v0, Landroid/webkit/WebView;

    .line 143
    .line 144
    if-eqz v4, :cond_3

    .line 145
    .line 146
    check-cast v0, Landroid/webkit/WebView;

    .line 147
    .line 148
    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    instance-of v4, v0, Landroidx/core/widget/NestedScrollView;

    .line 153
    .line 154
    if-eqz v4, :cond_4

    .line 155
    .line 156
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    instance-of v4, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    .line 164
    if-eqz v4, :cond_5

    .line 165
    .line 166
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    .line 168
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 169
    .line 170
    .line 171
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 172
    .line 173
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 174
    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    cmpl-float v2, v2, v3

    .line 179
    .line 180
    if-lez v2, :cond_7

    .line 181
    .line 182
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 186
    .line 187
    iput-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 188
    .line 189
    :cond_7
    :goto_1
    return-void
.end method
