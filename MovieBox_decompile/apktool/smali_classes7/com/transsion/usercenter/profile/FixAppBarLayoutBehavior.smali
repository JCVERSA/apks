.class public Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Landroid/view/VelocityTracker;

.field private G:I

.field private H:Landroidx/recyclerview/widget/RecyclerView;

.field private q:Z

.field private r:Z

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:[I

.field private y:Landroid/view/View;

.field private z:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 5
    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 6
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 7
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->R0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 12
    iput p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 13
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 14
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->R0()V

    return-void
.end method

.method static bridge synthetic A0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic B0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic C0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private D0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private E0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :cond_2
    :goto_0
    return v1
.end method

.method private F0(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return-void
.end method

.method private H0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private synthetic I0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    sub-float p2, v1, p2

    .line 28
    .line 29
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->u:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    mul-float/2addr p2, v2

    .line 33
    float-to-int p2, p2

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    sub-float/2addr v0, v1

    .line 42
    const p1, 0x3e99999a    # 0.3f

    .line 43
    .line 44
    .line 45
    div-float/2addr v0, p1

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-interface {p2, p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;->a(FZ)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method private M0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 22
    .line 23
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_a

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v0, v3, :cond_6

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eq v0, v4, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    if-eq v0, p1, :cond_9

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-gez v0, :cond_2

    .line 46
    .line 47
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "Error processing scroll; pointer index for id "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " not found. Did any MotionEvents get skipped?"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "FixAppBarLayoutBehavior"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0, v2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-float/2addr v0, v1

    .line 85
    float-to-int v0, v0

    .line 86
    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    .line 87
    .line 88
    sub-int/2addr v1, v0

    .line 89
    iget-boolean v4, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 90
    .line 91
    if-nez v4, :cond_4

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iget v5, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 98
    .line 99
    if-le v4, v5, :cond_4

    .line 100
    .line 101
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 102
    .line 103
    if-lez v1, :cond_3

    .line 104
    .line 105
    sub-int/2addr v1, v5

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    add-int/2addr v1, v5

    .line 108
    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 109
    .line 110
    if-eqz v3, :cond_b

    .line 111
    .line 112
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G0(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-direct {p0, p1, p1, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    return p1

    .line 125
    :cond_5
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E0()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    invoke-direct {p0, p1, p1, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    return p1

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 144
    .line 145
    const/16 v1, 0x3e8

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 151
    .line 152
    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    const/4 v0, 0x0

    .line 160
    :goto_1
    const/high16 v1, 0x42c80000    # 100.0f

    .line 161
    .line 162
    cmpg-float v0, v0, v1

    .line 163
    .line 164
    if-gtz v0, :cond_8

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    move v3, v2

    .line 168
    :goto_2
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    .line 169
    .line 170
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->P0(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 171
    .line 172
    .line 173
    :cond_9
    iput-boolean v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 174
    .line 175
    const/4 p1, -0x1

    .line 176
    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 177
    .line 178
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 179
    .line 180
    if-eqz p1, :cond_b

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 183
    .line 184
    .line 185
    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 194
    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    add-float/2addr p1, v1

    .line 200
    float-to-int p1, p1

    .line 201
    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    .line 202
    .line 203
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 204
    .line 205
    if-nez p1, :cond_b

    .line 206
    .line 207
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 212
    .line 213
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 214
    .line 215
    if-eqz p1, :cond_c

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 218
    .line 219
    .line 220
    :cond_c
    return v2
.end method

.method private O0(Landroid/view/ViewGroup;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-eq v1, v0, :cond_2

    .line 12
    .line 13
    :cond_0
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    .line 16
    .line 17
    move v1, v2

    .line 18
    :goto_0
    if-ge v1, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    aput v3, v4, v1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    aput v4, v3, v1

    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_2
    if-ge v2, v0, :cond_6

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sget v4, Lcom/transsion/usercenter/R$id;->toolbar:I

    .line 54
    .line 55
    if-ne v3, v4, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sget v4, Lcom/transsion/usercenter/R$id;->collapsing:I

    .line 63
    .line 64
    if-ne v3, v4, :cond_4

    .line 65
    .line 66
    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-direct {p0, v1, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    .line 73
    .line 74
    aget v3, v3, v2

    .line 75
    .line 76
    if-ltz v3, :cond_5

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    int-to-float v3, p2

    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    int-to-float p2, p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 94
    .line 95
    .line 96
    :cond_7
    return-void
.end method

.method private P0(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    cmpg-float v2, v2, v3

    .line 17
    .line 18
    if-gtz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    .line 22
    .line 23
    iput v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    .line 26
    .line 27
    const/high16 v4, 0x3f800000    # 1.0f

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v3, v3, [F

    .line 35
    .line 36
    aput v2, v3, v0

    .line 37
    .line 38
    aput v4, v3, v1

    .line 39
    .line 40
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v1, 0x12c

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/transsion/usercenter/profile/a;

    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Lcom/transsion/usercenter/profile/a;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    .line 81
    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    .line 84
    .line 85
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-interface {p1, v3, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;->a(FZ)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method private Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-gez p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->v:I

    .line 20
    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    if-lez p3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->v:I

    .line 30
    .line 31
    if-gt v0, v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    .line 35
    .line 36
    neg-int p3, p3

    .line 37
    int-to-float p3, p3

    .line 38
    add-float/2addr v0, p3

    .line 39
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    .line 40
    .line 41
    const/high16 p3, 0x43fa0000    # 500.0f

    .line 42
    .line 43
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    .line 48
    .line 49
    div-float/2addr v0, p3

    .line 50
    const/high16 p3, 0x3f800000    # 1.0f

    .line 51
    .line 52
    add-float/2addr v0, p3

    .line 53
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    .line 58
    .line 59
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->w:I

    .line 60
    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    int-to-float v2, v2

    .line 64
    sub-float v3, v0, p3

    .line 65
    .line 66
    mul-float/2addr v2, v3

    .line 67
    float-to-int v2, v2

    .line 68
    iput v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->u:I

    .line 69
    .line 70
    iget-object v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 76
    .line 77
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->u:I

    .line 83
    .line 84
    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setScrollY(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    .line 95
    .line 96
    sub-float/2addr p1, p3

    .line 97
    const p2, 0x3e99999a    # 0.3f

    .line 98
    .line 99
    .line 100
    div-float/2addr p1, p2

    .line 101
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget-object p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    .line 106
    .line 107
    invoke-interface {p2, p1, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;->a(FZ)V

    .line 108
    .line 109
    .line 110
    :cond_3
    const/4 p1, 0x1

    .line 111
    return p1

    .line 112
    :cond_4
    :goto_0
    return v1
.end method

.method private R0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$a;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->u0(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private T0(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p4, v0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->E()I

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    :cond_0
    if-lez p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    neg-int p1, p1

    .line 19
    if-ne p4, p1, :cond_2

    .line 20
    .line 21
    :cond_1
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public static synthetic z0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->I0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->N0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public G0(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public J0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "---onInterceptTouchEvent isOnInterceptTouchEvent: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "FixAppBarLayoutBehavior"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v2, v1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 62
    .line 63
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/4 v2, -0x1

    .line 68
    const/4 v4, 0x1

    .line 69
    if-eq v0, v4, :cond_4

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    if-eq v0, v5, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    if-eq v0, v1, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 79
    .line 80
    if-eq v0, v2, :cond_6

    .line 81
    .line 82
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-gez v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    add-float/2addr v0, v1

    .line 94
    float-to-int v0, v0

    .line 95
    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    .line 96
    .line 97
    sub-int/2addr v1, v0

    .line 98
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    .line 103
    .line 104
    if-le v1, v2, :cond_6

    .line 105
    .line 106
    iput-boolean v4, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 107
    .line 108
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    .line 109
    .line 110
    return v4

    .line 111
    :cond_4
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 112
    .line 113
    iput v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 114
    .line 115
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    .line 127
    .line 128
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    float-to-int v0, v0

    .line 133
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    float-to-int v2, v2

    .line 138
    invoke-virtual {p1, p2, v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    add-float/2addr v0, v1

    .line 155
    float-to-int v0, v0

    .line 156
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    .line 157
    .line 158
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 159
    .line 160
    if-nez v0, :cond_6

    .line 161
    .line 162
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 167
    .line 168
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    return p1
.end method

.method public K0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z
    .locals 1

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    .line 3
    cmpl-float v0, p5, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    .line 9
    .line 10
    :cond_0
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public L0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p7, p2, p3, p8}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->T0(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public N0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "   onTouchEvent "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, "FixAppBarLayoutBehavior"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-direct {p0, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->M0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public S0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->J0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "largeScale"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->w:I

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string v0, "viewPager"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D0()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A:Landroid/view/View;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    const-string v0, "emptyView"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A:Landroid/view/View;

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->v:I

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    .line 68
    .line 69
    return p3
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p5}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p5, p2, p3, p7}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->T0(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->K0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    .line 3
    .line 4
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->P0(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p8}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->L0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
