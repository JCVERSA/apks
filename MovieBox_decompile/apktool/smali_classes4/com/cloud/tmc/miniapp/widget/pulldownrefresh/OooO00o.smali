.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.super Landroid/view/ViewGroup;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;,
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;,
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;,
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;
    }
.end annotation


# static fields
.field public static o00000O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;

.field public static o00000OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;

.field public static o00000Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;

.field public static o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public OooO:F

.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:I

.field public OooO0o0:I

.field public OooO0oO:I

.field public OooO0oo:F

.field public OooOO0:F

.field public OooOO0O:F

.field public OooOO0o:F

.field public OooOOO:F

.field public OooOOO0:F

.field public OooOOOO:C

.field public OooOOOo:Z

.field public OooOOo:Z

.field public OooOOo0:Z

.field public OooOOoo:I

.field public OooOo:I

.field public OooOo0:I

.field public OooOo00:I

.field public OooOo0O:I

.field public OooOo0o:I

.field public OooOoO:Landroid/widget/Scroller;

.field public OooOoO0:I

.field public OooOoOO:Landroid/view/VelocityTracker;

.field public OooOoo:[I

.field public OooOoo0:Landroid/view/animation/Interpolator;

.field public OooOooO:Z

.field public OooOooo:Z

.field public Oooo:Z

.field public Oooo0:Z

.field public Oooo000:Z

.field public Oooo00O:Z

.field public Oooo00o:Z

.field public Oooo0O0:Z

.field public Oooo0OO:Z

.field public Oooo0o:Z

.field public Oooo0o0:Z

.field public Oooo0oO:Z

.field public Oooo0oo:Z

.field public OoooO:Z

.field public OoooO0:Z

.field public OoooO00:Z

.field public OoooO0O:Z

.field public OoooOO0:Z

.field public OoooOOO:Z

.field public OoooOOo:Z

.field public OoooOo0:Z

.field public OoooOoO:Z

.field public OoooOoo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0OO;

.field public Ooooo00:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;

.field public Ooooo0o:I

.field public OooooO0:Z

.field public OooooOO:[I

.field public OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

.field public Oooooo:I

.field public Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

.field public OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

.field public Ooooooo:I

.field public o00000:Ljava/lang/Runnable;

.field public o000000:Z

.field public o000000O:Z

.field public o000000o:Landroid/view/MotionEvent;

.field public o00000O0:Landroid/animation/ValueAnimator;

.field public o000OOo:Z

.field public o000oOoO:Z

.field public o00O0O:I

.field public o00Oo0:F

.field public o00Ooo:F

.field public o00o0O:F

.field public o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

.field public o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

.field public o00ooo:F

.field public o0O0O00:I

.field public o0OO00O:J

.field public o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

.field public o0ooOO0:Landroid/graphics/Paint;

.field public o0ooOOo:Landroid/os/Handler;

.field public o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

.field public oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

.field public oo0o0Oo:I

.field public ooOO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x12c

    .line 6
    .line 7
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0:I

    .line 8
    .line 9
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0o:F

    .line 14
    .line 15
    const v1, 0x3e2aaaab

    .line 16
    .line 17
    .line 18
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO0:F

    .line 19
    .line 20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    .line 23
    .line 24
    const/16 v1, 0x6e

    .line 25
    .line 26
    iput-char v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    .line 30
    .line 31
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    .line 32
    .line 33
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    .line 34
    .line 35
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    .line 64
    .line 65
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    .line 70
    .line 71
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    .line 78
    .line 79
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    .line 82
    .line 83
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoO:Z

    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    new-array v3, v3, [I

    .line 87
    .line 88
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOO:[I

    .line 89
    .line 90
    new-instance v3, Landroidx/core/view/NestedScrollingChildHelper;

    .line 91
    .line 92
    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 96
    .line 97
    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    .line 98
    .line 99
    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 103
    .line 104
    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 105
    .line 106
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 107
    .line 108
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 109
    .line 110
    const/high16 v3, 0x40200000    # 2.5f

    .line 111
    .line 112
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    .line 113
    .line 114
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    .line 115
    .line 116
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    .line 117
    .line 118
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00ooo:F

    .line 119
    .line 120
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 126
    .line 127
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 132
    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    iput-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    .line 136
    .line 137
    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo0o0Oo:I

    .line 138
    .line 139
    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0O0O00:I

    .line 140
    .line 141
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 142
    .line 143
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    .line 144
    .line 145
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 146
    .line 147
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v3, Landroid/os/Handler;

    .line 152
    .line 153
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 157
    .line 158
    new-instance v3, Landroid/widget/Scroller;

    .line 159
    .line 160
    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 164
    .line 165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 180
    .line 181
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    .line 182
    .line 183
    new-instance v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;

    .line 184
    .line 185
    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;-><init>(I)V

    .line 186
    .line 187
    .line 188
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0o:I

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo:I

    .line 207
    .line 208
    const/high16 v0, 0x42700000    # 60.0f

    .line 209
    .line 210
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 215
    .line 216
    const/high16 v0, 0x42c80000    # 100.0f

    .line 217
    .line 218
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 223
    .line 224
    sget-object v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout:[I

    .line 225
    .line 226
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_android_clipToPadding:I

    .line 231
    .line 232
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_0

    .line 237
    .line 238
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 239
    .line 240
    .line 241
    :cond_0
    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_android_clipChildren:I

    .line 242
    .line 243
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-nez v0, :cond_1

    .line 248
    .line 249
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 250
    .line 251
    .line 252
    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;

    .line 253
    .line 254
    if-eqz v0, :cond_2

    .line 255
    .line 256
    invoke-interface {v0, p1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V

    .line 257
    .line 258
    .line 259
    :cond_2
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlDragRate:I

    .line 260
    .line 261
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    .line 262
    .line 263
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    .line 268
    .line 269
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderMaxDragRate:I

    .line 270
    .line 271
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    .line 272
    .line 273
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    .line 278
    .line 279
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterMaxDragRate:I

    .line 280
    .line 281
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    .line 282
    .line 283
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    .line 288
    .line 289
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderTriggerRate:I

    .line 290
    .line 291
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    .line 292
    .line 293
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    .line 298
    .line 299
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterTriggerRate:I

    .line 300
    .line 301
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00ooo:F

    .line 302
    .line 303
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00ooo:F

    .line 308
    .line 309
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableRefresh:I

    .line 310
    .line 311
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 312
    .line 313
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 318
    .line 319
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlReboundDuration:I

    .line 320
    .line 321
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    .line 322
    .line 323
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    .line 328
    .line 329
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableLoadMore:I

    .line 330
    .line 331
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 332
    .line 333
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 338
    .line 339
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderHeight:I

    .line 340
    .line 341
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 342
    .line 343
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 348
    .line 349
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterHeight:I

    .line 350
    .line 351
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 352
    .line 353
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 358
    .line 359
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderInsetStart:I

    .line 360
    .line 361
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    .line 362
    .line 363
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    .line 368
    .line 369
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterInsetStart:I

    .line 370
    .line 371
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    .line 372
    .line 373
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    .line 378
    .line 379
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlDisableContentWhenRefresh:I

    .line 380
    .line 381
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    .line 382
    .line 383
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    .line 388
    .line 389
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlDisableContentWhenLoading:I

    .line 390
    .line 391
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    .line 392
    .line 393
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    .line 398
    .line 399
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableHeaderTranslationContent:I

    .line 400
    .line 401
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    .line 402
    .line 403
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    .line 408
    .line 409
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterTranslationContent:I

    .line 410
    .line 411
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    .line 412
    .line 413
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    .line 418
    .line 419
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnablePreviewInEditMode:I

    .line 420
    .line 421
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 422
    .line 423
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 428
    .line 429
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableAutoLoadMore:I

    .line 430
    .line 431
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    .line 432
    .line 433
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    .line 438
    .line 439
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableOverScrollBounce:I

    .line 440
    .line 441
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    .line 442
    .line 443
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    .line 448
    .line 449
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnablePureScrollMode:I

    .line 450
    .line 451
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    .line 452
    .line 453
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    .line 458
    .line 459
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableScrollContentWhenLoaded:I

    .line 460
    .line 461
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    .line 462
    .line 463
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    .line 468
    .line 469
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    .line 470
    .line 471
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    .line 472
    .line 473
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    .line 478
    .line 479
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    .line 480
    .line 481
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    .line 482
    .line 483
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    .line 488
    .line 489
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    .line 490
    .line 491
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 492
    .line 493
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 498
    .line 499
    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    .line 500
    .line 501
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 506
    .line 507
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    .line 508
    .line 509
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    .line 510
    .line 511
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    .line 516
    .line 517
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    .line 518
    .line 519
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    .line 520
    .line 521
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    .line 526
    .line 527
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableOverScrollDrag:I

    .line 528
    .line 529
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 530
    .line 531
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 536
    .line 537
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFixedHeaderViewId:I

    .line 538
    .line 539
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    .line 540
    .line 541
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    .line 546
    .line 547
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFixedFooterViewId:I

    .line 548
    .line 549
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    .line 550
    .line 551
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    .line 556
    .line 557
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderTranslationViewId:I

    .line 558
    .line 559
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    .line 560
    .line 561
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 562
    .line 563
    .line 564
    move-result p1

    .line 565
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    .line 566
    .line 567
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterTranslationViewId:I

    .line 568
    .line 569
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    .line 570
    .line 571
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    .line 576
    .line 577
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableNestedScrolling:I

    .line 578
    .line 579
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    .line 580
    .line 581
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 582
    .line 583
    .line 584
    move-result p1

    .line 585
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    .line 586
    .line 587
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 588
    .line 589
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 590
    .line 591
    .line 592
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 593
    .line 594
    if-nez p1, :cond_4

    .line 595
    .line 596
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableLoadMore:I

    .line 597
    .line 598
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    if-eqz p1, :cond_3

    .line 603
    .line 604
    goto :goto_0

    .line 605
    :cond_3
    move p1, v2

    .line 606
    goto :goto_1

    .line 607
    :cond_4
    :goto_0
    move p1, v1

    .line 608
    :goto_1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 609
    .line 610
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    .line 611
    .line 612
    if-nez p1, :cond_6

    .line 613
    .line 614
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableHeaderTranslationContent:I

    .line 615
    .line 616
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 617
    .line 618
    .line 619
    move-result p1

    .line 620
    if-eqz p1, :cond_5

    .line 621
    .line 622
    goto :goto_2

    .line 623
    :cond_5
    move p1, v2

    .line 624
    goto :goto_3

    .line 625
    :cond_6
    :goto_2
    move p1, v1

    .line 626
    :goto_3
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    .line 627
    .line 628
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoO:Z

    .line 629
    .line 630
    if-nez p1, :cond_8

    .line 631
    .line 632
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterTranslationContent:I

    .line 633
    .line 634
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 635
    .line 636
    .line 637
    move-result p1

    .line 638
    if-eqz p1, :cond_7

    .line 639
    .line 640
    goto :goto_4

    .line 641
    :cond_7
    move p1, v2

    .line 642
    goto :goto_5

    .line 643
    :cond_8
    :goto_4
    move p1, v1

    .line 644
    :goto_5
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoO:Z

    .line 645
    .line 646
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderHeight:I

    .line 647
    .line 648
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    if-eqz p1, :cond_9

    .line 653
    .line 654
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 655
    .line 656
    goto :goto_6

    .line 657
    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 658
    .line 659
    :goto_6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 660
    .line 661
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterHeight:I

    .line 662
    .line 663
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 664
    .line 665
    .line 666
    move-result p1

    .line 667
    if-eqz p1, :cond_a

    .line 668
    .line 669
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 670
    .line 671
    goto :goto_7

    .line 672
    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 673
    .line 674
    :goto_7
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 675
    .line 676
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlAccentColor:I

    .line 677
    .line 678
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlPrimaryColor:I

    .line 683
    .line 684
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    if-eqz v0, :cond_c

    .line 689
    .line 690
    if-eqz p1, :cond_b

    .line 691
    .line 692
    filled-new-array {v0, p1}, [I

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    .line 697
    .line 698
    goto :goto_8

    .line 699
    :cond_b
    filled-new-array {v0}, [I

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    .line 704
    .line 705
    goto :goto_8

    .line 706
    :cond_c
    if-eqz p1, :cond_d

    .line 707
    .line 708
    filled-new-array {v2, p1}, [I

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    .line 713
    .line 714
    :cond_d
    :goto_8
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    .line 715
    .line 716
    if-eqz p1, :cond_e

    .line 717
    .line 718
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 719
    .line 720
    if-nez p1, :cond_e

    .line 721
    .line 722
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 723
    .line 724
    if-nez p1, :cond_e

    .line 725
    .line 726
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 727
    .line 728
    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 729
    .line 730
    .line 731
    return-void
.end method

.method public static synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0OO(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic OooO0o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic OooO0o0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;

    .line 2
    .line 3
    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;

    .line 2
    .line 3
    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 26
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 30
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 31
    :cond_0
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 32
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0o;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 115
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 116
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->run()V

    :goto_0
    return-object p0
.end method

.method public OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 118
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;IZZ)V

    if-lez p1, :cond_0

    .line 119
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->run()V

    :goto_0
    return-object p0
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 3
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 101
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0O0O00:I

    .line 102
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    .line 103
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 104
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 105
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    .line 106
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 107
    instance-of v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    if-eqz v2, :cond_3

    .line 108
    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz v1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_5

    .line 114
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    :cond_5
    return-object p0
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
    .locals 3
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo0o0Oo:I

    .line 86
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 87
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    .line 88
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 89
    instance-of v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    if-eqz v2, :cond_1

    .line 90
    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz v1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_3

    .line 96
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    :cond_3
    return-object p0
.end method

.method public OooO00o(F)V
    .locals 10

    .line 40
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    if-nez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_0

    move p1, v1

    .line 42
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    mul-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v2, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_3

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 46
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0o:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    float-to-int v0, v2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v4, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    .line 48
    :cond_3
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-ne v0, v2, :cond_6

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_6

    .line 49
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    int-to-float v0, v0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_4

    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v2, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    .line 51
    :cond_4
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    .line 52
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    int-to-float v7, v7

    sub-float v7, p1, v7

    .line 53
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    neg-float v8, v7

    cmpl-float v9, v0, v1

    if-nez v9, :cond_5

    move v0, v4

    :cond_5
    div-float/2addr v8, v0

    float-to-double v8, v8

    .line 54
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 55
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    add-int/2addr v0, v4

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    :cond_6
    cmpg-float v2, p1, v1

    if-gez v2, :cond_b

    .line 56
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 57
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 58
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    :cond_8
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9

    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v2, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    .line 61
    :cond_9
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    sub-float/2addr v2, v4

    int-to-float v0, v0

    mul-float/2addr v2, v0

    .line 62
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    int-to-float v7, v7

    add-float/2addr v7, p1

    .line 63
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    neg-float v7, v7

    neg-float v8, v7

    cmpl-float v9, v0, v1

    if-nez v9, :cond_a

    move v0, v4

    :cond_a
    div-float/2addr v8, v0

    float-to-double v8, v8

    .line 64
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    .line 65
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    sub-int/2addr v0, v4

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_1

    :cond_b
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_d

    .line 66
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 67
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 68
    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, p1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    neg-float v8, v7

    cmpl-float v9, v2, v1

    if-nez v9, :cond_c

    move v2, v4

    :cond_c
    div-float/2addr v8, v2

    float-to-double v8, v8

    .line 69
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_1

    .line 71
    :cond_d
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 72
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 73
    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, p1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    neg-float v7, v7

    neg-float v8, v7

    cmpl-float v9, v2, v1

    if-nez v9, :cond_e

    move v2, v4

    :cond_e
    div-float/2addr v8, v2

    float-to-double v8, v8

    .line 74
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    .line 75
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 76
    :goto_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    cmpg-float p1, p1, v1

    if-gez p1, :cond_10

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_10

    .line 77
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 79
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v0, v0

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    :cond_f
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setStateDirectLoading(Z)V

    .line 81
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, p1, :cond_2

    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 15
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v1, p0, v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 19
    invoke-interface {v2, p0, v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 20
    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_3

    .line 23
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    :cond_3
    :goto_0
    return-void
.end method

.method public OooO00o()Z
    .locals 7

    .line 121
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    :cond_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 122
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v6, :cond_3

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FIZ)V

    .line 124
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setViceState(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    if-lez v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->run()V

    :goto_1
    move v1, v5

    :cond_3
    return v1
.end method

.method public OooO00o(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 11
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public OooO00o(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 25
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 24
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p1

    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12c

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    sub-long/2addr v0, v5

    long-to-int p1, v0

    rsub-int p1, p1, 0x12c

    .line 73
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v3, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    goto/16 :goto_0

    .line 74
    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    sub-long/2addr v0, v5

    long-to-int p1, v0

    rsub-int p1, p1, 0x12c

    .line 76
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1, v3, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    goto :goto_0

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eq v0, p1, :cond_3

    .line 78
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    .line 79
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v1, :cond_3

    .line 80
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    .line 82
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 83
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p1

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 84
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 87
    :cond_2
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    .line 88
    const-string p1, "Footer:"

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public OooO0O0()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 31
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0o:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    float-to-int v0, v3

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 32
    :goto_0
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    const/16 v4, -0x3e8

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    div-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_1

    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 34
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 37
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v1, :cond_11

    .line 38
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 39
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-nez v1, :cond_2

    .line 40
    invoke-virtual {v0, v2, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 41
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    goto/16 :goto_2

    .line 42
    :cond_2
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 43
    :cond_3
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 44
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v3, :cond_6

    .line 46
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    if-le v0, v1, :cond_5

    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    :cond_5
    if-gez v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 49
    :cond_6
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v4, :cond_7

    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_2

    .line 51
    :cond_7
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v4, :cond_8

    .line 52
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_2

    .line 53
    :cond_8
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v4, :cond_9

    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_2

    .line 55
    :cond_9
    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v3, :cond_a

    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_2

    .line 57
    :cond_a
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_b

    .line 58
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_2

    .line 59
    :cond_b
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_c

    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 62
    :cond_c
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_d

    .line 63
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    .line 64
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 65
    :cond_d
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_e

    goto :goto_2

    .line 66
    :cond_e
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 68
    :cond_f
    :goto_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    if-ge v0, v1, :cond_10

    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_10
    if-lez v0, :cond_11

    .line 70
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    :cond_11
    :goto_2
    return-void
.end method

.method public OooO0O0(F)Z
    .locals 12

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 2
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    int-to-float p1, p1

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 6
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    neg-float p1, p1

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0o:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_13

    .line 9
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    int-to-float v3, v1

    mul-float/2addr v3, p1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_d

    .line 10
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    sget-object v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v3, v6, :cond_3

    if-gez v1, :cond_2

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v6, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isReleaseToOpening:Z

    if-eqz v3, :cond_d

    return v5

    .line 12
    :cond_3
    :goto_0
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;F)V

    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 14
    :cond_4
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    const/16 v3, 0xa

    if-eqz v1, :cond_c

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    if-lt p1, v1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v4, :cond_c

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    if-le p1, v1, :cond_c

    .line 16
    :cond_8
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 17
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    move v4, p1

    :goto_1
    mul-int v6, p1, v4

    if-lez v6, :cond_c

    float-to-double v6, v1

    const v1, 0x3f7ae148    # 0.98f

    float-to-double v8, v1

    add-int/2addr v2, v5

    mul-int/lit8 v1, v2, 0xa

    int-to-float v1, v1

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v1, v10

    float-to-double v10, v1

    .line 18
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-float v1, v8

    int-to-float v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v6, v8

    mul-float/2addr v6, v1

    .line 19
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v8, v7

    if-gez v7, :cond_b

    .line 20
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v1, v2, :cond_9

    iget v6, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    if-gt v4, v6, :cond_a

    :cond_9
    if-eq v1, v2, :cond_c

    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int p1, p1

    if-ge v4, p1, :cond_c

    :cond_a
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    goto :goto_1

    .line 21
    :cond_c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0OO:J

    .line 22
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :goto_3
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    return v5

    :cond_d
    cmpg-float v3, p1, v0

    if-gez v3, :cond_10

    .line 24
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v3, :cond_12

    :cond_e
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v3, v4, :cond_f

    if-gez v1, :cond_12

    :cond_f
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez v0, :cond_12

    :cond_11
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gtz v0, :cond_13

    .line 25
    :cond_12
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    .line 26
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    neg-float p1, p1

    float-to-int v7, p1

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    return v2
.end method

.method public computeScroll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_c

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 32
    .line 33
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    :cond_1
    if-lez v0, :cond_b

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 48
    .line 49
    if-eqz v2, :cond_b

    .line 50
    .line 51
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 52
    .line 53
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_b

    .line 60
    .line 61
    :cond_3
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    .line 62
    .line 63
    if-eqz v2, :cond_a

    .line 64
    .line 65
    if-lez v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    neg-float v0, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    if-nez v2, :cond_a

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    cmpl-float v3, v0, v2

    .line 87
    .line 88
    if-lez v3, :cond_6

    .line 89
    .line 90
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 91
    .line 92
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 93
    .line 94
    if-eq v3, v4, :cond_5

    .line 95
    .line 96
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 97
    .line 98
    if-ne v3, v4, :cond_6

    .line 99
    .line 100
    :cond_5
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;

    .line 101
    .line 102
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 103
    .line 104
    invoke-direct {v2, p0, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V

    .line 105
    .line 106
    .line 107
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    cmpg-float v2, v0, v2

    .line 111
    .line 112
    if-gez v2, :cond_9

    .line 113
    .line 114
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 115
    .line 116
    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 117
    .line 118
    if-eq v2, v3, :cond_8

    .line 119
    .line 120
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 121
    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    .line 125
    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    .line 129
    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_8

    .line 139
    .line 140
    :cond_7
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    .line 141
    .line 142
    if-eqz v2, :cond_9

    .line 143
    .line 144
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    .line 145
    .line 146
    if-nez v2, :cond_9

    .line 147
    .line 148
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_9

    .line 155
    .line 156
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 157
    .line 158
    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 159
    .line 160
    if-eq v2, v3, :cond_9

    .line 161
    .line 162
    :cond_8
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;

    .line 163
    .line 164
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 165
    .line 166
    neg-int v3, v3

    .line 167
    invoke-direct {v2, p0, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V

    .line 168
    .line 169
    .line 170
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_9
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 174
    .line 175
    if-nez v2, :cond_a

    .line 176
    .line 177
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    .line 178
    .line 179
    if-eqz v2, :cond_a

    .line 180
    .line 181
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;

    .line 182
    .line 183
    const/4 v3, 0x0

    .line 184
    invoke-direct {v2, p0, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V

    .line 185
    .line 186
    .line 187
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 188
    .line 189
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_b
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 198
    .line 199
    .line 200
    :cond_c
    :goto_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x1

    .line 11
    const/4 v2, 0x6

    .line 12
    if-ne v6, v2, :cond_0

    .line 13
    .line 14
    move v3, v11

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v10

    .line 17
    :goto_0
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v4, -0x1

    .line 25
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v7, 0x0

    .line 30
    move v9, v7

    .line 31
    move v12, v9

    .line 32
    move v8, v10

    .line 33
    :goto_2
    if-ge v8, v5, :cond_3

    .line 34
    .line 35
    if-ne v4, v8, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    add-float/2addr v9, v13

    .line 43
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    add-float/2addr v12, v13

    .line 48
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    if-eqz v3, :cond_4

    .line 52
    .line 53
    add-int/lit8 v5, v5, -0x1

    .line 54
    .line 55
    :cond_4
    int-to-float v3, v5

    .line 56
    div-float/2addr v9, v3

    .line 57
    div-float v8, v12, v3

    .line 58
    .line 59
    if-eq v6, v2, :cond_5

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    if-ne v6, v2, :cond_6

    .line 63
    .line 64
    :cond_5
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 65
    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 69
    .line 70
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 71
    .line 72
    sub-float v3, v8, v3

    .line 73
    .line 74
    add-float/2addr v3, v2

    .line 75
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 76
    .line 77
    :cond_6
    iput v9, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 78
    .line 79
    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 80
    .line 81
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    if-eqz v2, :cond_a

    .line 85
    .line 86
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 87
    .line 88
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-ne v6, v3, :cond_9

    .line 93
    .line 94
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 95
    .line 96
    if-ne v2, v3, :cond_9

    .line 97
    .line 98
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 99
    .line 100
    float-to-int v2, v2

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 106
    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_7
    move v11, v3

    .line 111
    :goto_4
    int-to-float v5, v11

    .line 112
    div-float/2addr v4, v5

    .line 113
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 114
    .line 115
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_8

    .line 120
    .line 121
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 122
    .line 123
    if-lez v5, :cond_8

    .line 124
    .line 125
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 126
    .line 127
    if-eqz v5, :cond_8

    .line 128
    .line 129
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_8

    .line 134
    .line 135
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 136
    .line 137
    invoke-interface {v5, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(FII)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_9

    .line 148
    .line 149
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 150
    .line 151
    if-gez v5, :cond_9

    .line 152
    .line 153
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 154
    .line 155
    if-eqz v5, :cond_9

    .line 156
    .line 157
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_9

    .line 162
    .line 163
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 164
    .line 165
    invoke-interface {v5, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(FII)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_5
    return v1

    .line 169
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_36

    .line 174
    .line 175
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 176
    .line 177
    if-nez v2, :cond_b

    .line 178
    .line 179
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 180
    .line 181
    if-nez v2, :cond_b

    .line 182
    .line 183
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 184
    .line 185
    if-eqz v2, :cond_36

    .line 186
    .line 187
    :cond_b
    invoke-virtual {v0, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(I)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_35

    .line 192
    .line 193
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 194
    .line 195
    iget-boolean v4, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    .line 196
    .line 197
    if-nez v4, :cond_35

    .line 198
    .line 199
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 200
    .line 201
    if-ne v2, v4, :cond_c

    .line 202
    .line 203
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    .line 204
    .line 205
    if-nez v5, :cond_35

    .line 206
    .line 207
    :cond_c
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 208
    .line 209
    if-ne v2, v5, :cond_d

    .line 210
    .line 211
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    .line 212
    .line 213
    if-eqz v2, :cond_d

    .line 214
    .line 215
    goto/16 :goto_e

    .line 216
    .line 217
    :cond_d
    const/4 v2, 0x0

    .line 218
    const/16 v5, 0x68

    .line 219
    .line 220
    if-eqz v6, :cond_2f

    .line 221
    .line 222
    if-eq v6, v11, :cond_2b

    .line 223
    .line 224
    const/4 v12, 0x3

    .line 225
    if-eq v6, v3, :cond_e

    .line 226
    .line 227
    if-eq v6, v12, :cond_2c

    .line 228
    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_e
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    .line 232
    .line 233
    sub-float/2addr v9, v3

    .line 234
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 235
    .line 236
    sub-float v3, v8, v3

    .line 237
    .line 238
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 239
    .line 240
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 241
    .line 242
    .line 243
    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 244
    .line 245
    if-nez v6, :cond_1b

    .line 246
    .line 247
    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo:Z

    .line 248
    .line 249
    if-nez v6, :cond_1b

    .line 250
    .line 251
    iget-char v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 252
    .line 253
    if-eq v6, v5, :cond_1b

    .line 254
    .line 255
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 256
    .line 257
    if-eqz v13, :cond_1b

    .line 258
    .line 259
    const/16 v13, 0x76

    .line 260
    .line 261
    if-eq v6, v13, :cond_10

    .line 262
    .line 263
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    iget v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 268
    .line 269
    int-to-float v14, v14

    .line 270
    cmpl-float v6, v6, v14

    .line 271
    .line 272
    if-ltz v6, :cond_f

    .line 273
    .line 274
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    cmpg-float v6, v6, v14

    .line 283
    .line 284
    if-gez v6, :cond_f

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_f
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 292
    .line 293
    int-to-float v6, v6

    .line 294
    cmpl-float v4, v4, v6

    .line 295
    .line 296
    if-ltz v4, :cond_1b

    .line 297
    .line 298
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    cmpl-float v4, v4, v6

    .line 307
    .line 308
    if-lez v4, :cond_1b

    .line 309
    .line 310
    iget-char v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 311
    .line 312
    if-eq v4, v13, :cond_1b

    .line 313
    .line 314
    iput-char v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 315
    .line 316
    goto/16 :goto_a

    .line 317
    .line 318
    :cond_10
    :goto_6
    iput-char v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 319
    .line 320
    cmpl-float v5, v3, v7

    .line 321
    .line 322
    if-lez v5, :cond_13

    .line 323
    .line 324
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 325
    .line 326
    if-ltz v5, :cond_12

    .line 327
    .line 328
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 329
    .line 330
    if-nez v5, :cond_11

    .line 331
    .line 332
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 333
    .line 334
    if-eqz v5, :cond_13

    .line 335
    .line 336
    :cond_11
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 337
    .line 338
    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 339
    .line 340
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0()Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-eqz v5, :cond_13

    .line 345
    .line 346
    :cond_12
    iput-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 347
    .line 348
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 349
    .line 350
    int-to-float v4, v4

    .line 351
    sub-float v4, v8, v4

    .line 352
    .line 353
    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_13
    cmpg-float v5, v3, v7

    .line 357
    .line 358
    if-gez v5, :cond_17

    .line 359
    .line 360
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 361
    .line 362
    if-gtz v5, :cond_16

    .line 363
    .line 364
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 365
    .line 366
    if-nez v5, :cond_14

    .line 367
    .line 368
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 369
    .line 370
    if-eqz v5, :cond_17

    .line 371
    .line 372
    :cond_14
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 373
    .line 374
    if-ne v5, v4, :cond_15

    .line 375
    .line 376
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 377
    .line 378
    if-nez v4, :cond_16

    .line 379
    .line 380
    :cond_15
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 381
    .line 382
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 383
    .line 384
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_17

    .line 389
    .line 390
    :cond_16
    iput-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 391
    .line 392
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 393
    .line 394
    int-to-float v4, v4

    .line 395
    add-float/2addr v4, v8

    .line 396
    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 397
    .line 398
    :cond_17
    :goto_7
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 399
    .line 400
    if-eqz v4, :cond_1b

    .line 401
    .line 402
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 403
    .line 404
    sub-float v3, v8, v3

    .line 405
    .line 406
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    .line 407
    .line 408
    if-eqz v4, :cond_18

    .line 409
    .line 410
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 411
    .line 412
    .line 413
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    .line 415
    .line 416
    :cond_18
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 417
    .line 418
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 419
    .line 420
    if-gtz v5, :cond_1a

    .line 421
    .line 422
    if-nez v5, :cond_19

    .line 423
    .line 424
    cmpl-float v5, v3, v7

    .line 425
    .line 426
    if-lez v5, :cond_19

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_19
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_1a
    :goto_8
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 433
    .line 434
    :goto_9
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 435
    .line 436
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 437
    .line 438
    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 444
    .line 445
    if-eqz v5, :cond_1b

    .line 446
    .line 447
    check-cast v4, Landroid/view/ViewGroup;

    .line 448
    .line 449
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 450
    .line 451
    .line 452
    :cond_1b
    :goto_a
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 453
    .line 454
    if-eqz v4, :cond_2a

    .line 455
    .line 456
    float-to-int v4, v3

    .line 457
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 458
    .line 459
    add-int/2addr v4, v5

    .line 460
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 461
    .line 462
    iget-boolean v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 463
    .line 464
    if-eqz v6, :cond_1c

    .line 465
    .line 466
    if-ltz v4, :cond_1d

    .line 467
    .line 468
    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    .line 469
    .line 470
    if-ltz v6, :cond_1d

    .line 471
    .line 472
    :cond_1c
    iget-boolean v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    .line 473
    .line 474
    if-eqz v5, :cond_29

    .line 475
    .line 476
    if-gtz v4, :cond_1d

    .line 477
    .line 478
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    .line 479
    .line 480
    if-lez v5, :cond_29

    .line 481
    .line 482
    :cond_1d
    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    .line 483
    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 485
    .line 486
    .line 487
    move-result-wide v5

    .line 488
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 489
    .line 490
    if-nez v1, :cond_1e

    .line 491
    .line 492
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    .line 493
    .line 494
    add-float v18, v1, v9

    .line 495
    .line 496
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 497
    .line 498
    const/16 v17, 0x0

    .line 499
    .line 500
    const/16 v20, 0x0

    .line 501
    .line 502
    move-wide v13, v5

    .line 503
    move-wide v15, v5

    .line 504
    move/from16 v19, v1

    .line 505
    .line 506
    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 511
    .line 512
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 513
    .line 514
    .line 515
    :cond_1e
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    .line 516
    .line 517
    add-float v18, v1, v9

    .line 518
    .line 519
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 520
    .line 521
    int-to-float v9, v4

    .line 522
    add-float v19, v1, v9

    .line 523
    .line 524
    const/16 v17, 0x2

    .line 525
    .line 526
    const/16 v20, 0x0

    .line 527
    .line 528
    move-wide v13, v5

    .line 529
    move-wide v15, v5

    .line 530
    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 535
    .line 536
    .line 537
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 538
    .line 539
    if-eqz v5, :cond_1f

    .line 540
    .line 541
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 542
    .line 543
    int-to-float v5, v5

    .line 544
    cmpl-float v3, v3, v5

    .line 545
    .line 546
    if-lez v3, :cond_1f

    .line 547
    .line 548
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 549
    .line 550
    if-gez v3, :cond_1f

    .line 551
    .line 552
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 553
    .line 554
    :cond_1f
    if-lez v4, :cond_21

    .line 555
    .line 556
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 557
    .line 558
    if-nez v3, :cond_20

    .line 559
    .line 560
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 561
    .line 562
    if-eqz v3, :cond_21

    .line 563
    .line 564
    :cond_20
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 565
    .line 566
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 567
    .line 568
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0()Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-eqz v3, :cond_21

    .line 573
    .line 574
    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 575
    .line 576
    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 577
    .line 578
    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 579
    .line 580
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 581
    .line 582
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 583
    .line 584
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 585
    .line 586
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 587
    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_21
    if-gez v4, :cond_23

    .line 591
    .line 592
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 593
    .line 594
    if-nez v3, :cond_22

    .line 595
    .line 596
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 597
    .line 598
    if-eqz v3, :cond_23

    .line 599
    .line 600
    :cond_22
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 601
    .line 602
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 603
    .line 604
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    if-eqz v3, :cond_23

    .line 609
    .line 610
    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    .line 611
    .line 612
    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 613
    .line 614
    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 615
    .line 616
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 617
    .line 618
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 619
    .line 620
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 621
    .line 622
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 623
    .line 624
    .line 625
    goto :goto_b

    .line 626
    :cond_23
    move v10, v4

    .line 627
    :goto_b
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 628
    .line 629
    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 630
    .line 631
    if-eqz v4, :cond_24

    .line 632
    .line 633
    if-ltz v10, :cond_25

    .line 634
    .line 635
    :cond_24
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    .line 636
    .line 637
    if-eqz v3, :cond_27

    .line 638
    .line 639
    if-lez v10, :cond_27

    .line 640
    .line 641
    :cond_25
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 642
    .line 643
    if-eqz v1, :cond_26

    .line 644
    .line 645
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    .line 646
    .line 647
    .line 648
    :cond_26
    return v11

    .line 649
    :cond_27
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 650
    .line 651
    if-eqz v3, :cond_28

    .line 652
    .line 653
    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 654
    .line 655
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 656
    .line 657
    .line 658
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 659
    .line 660
    .line 661
    :cond_28
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 662
    .line 663
    .line 664
    move v4, v10

    .line 665
    :cond_29
    int-to-float v1, v4

    .line 666
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    .line 667
    .line 668
    .line 669
    return v11

    .line 670
    :cond_2a
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 671
    .line 672
    if-eqz v2, :cond_2e

    .line 673
    .line 674
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    .line 675
    .line 676
    int-to-float v2, v2

    .line 677
    cmpl-float v2, v3, v2

    .line 678
    .line 679
    if-lez v2, :cond_2e

    .line 680
    .line 681
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 682
    .line 683
    if-gez v2, :cond_2e

    .line 684
    .line 685
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 686
    .line 687
    goto :goto_c

    .line 688
    :cond_2b
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 689
    .line 690
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 691
    .line 692
    .line 693
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 694
    .line 695
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo:I

    .line 696
    .line 697
    int-to-float v4, v4

    .line 698
    const/16 v5, 0x3e8

    .line 699
    .line 700
    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 701
    .line 702
    .line 703
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 704
    .line 705
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 706
    .line 707
    .line 708
    move-result v3

    .line 709
    float-to-int v3, v3

    .line 710
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    .line 711
    .line 712
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(F)Z

    .line 713
    .line 714
    .line 715
    :cond_2c
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 716
    .line 717
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 718
    .line 719
    .line 720
    const/16 v3, 0x6e

    .line 721
    .line 722
    iput-char v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 723
    .line 724
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 725
    .line 726
    if-eqz v3, :cond_2d

    .line 727
    .line 728
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 729
    .line 730
    .line 731
    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    .line 732
    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 734
    .line 735
    .line 736
    move-result-wide v4

    .line 737
    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    .line 738
    .line 739
    const/4 v9, 0x0

    .line 740
    move-wide v2, v4

    .line 741
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 746
    .line 747
    .line 748
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 749
    .line 750
    .line 751
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0()V

    .line 752
    .line 753
    .line 754
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 755
    .line 756
    if-eqz v2, :cond_2e

    .line 757
    .line 758
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 759
    .line 760
    return v11

    .line 761
    :cond_2e
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    return v1

    .line 766
    :cond_2f
    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    .line 767
    .line 768
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    .line 769
    .line 770
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 771
    .line 772
    .line 773
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    .line 774
    .line 775
    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 776
    .line 777
    .line 778
    iput v9, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    .line 779
    .line 780
    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 781
    .line 782
    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    .line 783
    .line 784
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 785
    .line 786
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    .line 787
    .line 788
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    .line 789
    .line 790
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo:Z

    .line 791
    .line 792
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    iput-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    .line 797
    .line 798
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 799
    .line 800
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 801
    .line 802
    if-ne v3, v4, :cond_31

    .line 803
    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO0:F

    .line 809
    .line 810
    const/high16 v6, 0x3f800000    # 1.0f

    .line 811
    .line 812
    cmpg-float v7, v4, v6

    .line 813
    .line 814
    if-gtz v7, :cond_30

    .line 815
    .line 816
    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 817
    .line 818
    int-to-float v8, v3

    .line 819
    sub-float v9, v6, v4

    .line 820
    .line 821
    mul-float/2addr v9, v8

    .line 822
    cmpg-float v7, v7, v9

    .line 823
    .line 824
    if-gez v7, :cond_30

    .line 825
    .line 826
    iput-char v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 827
    .line 828
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    .line 829
    .line 830
    return v1

    .line 831
    :cond_30
    cmpl-float v6, v4, v6

    .line 832
    .line 833
    if-lez v6, :cond_31

    .line 834
    .line 835
    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    .line 836
    .line 837
    int-to-float v3, v3

    .line 838
    sub-float/2addr v3, v4

    .line 839
    cmpg-float v3, v6, v3

    .line 840
    .line 841
    if-gez v3, :cond_31

    .line 842
    .line 843
    iput-char v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    .line 844
    .line 845
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    .line 846
    .line 847
    return v1

    .line 848
    :cond_31
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 849
    .line 850
    if-eqz v3, :cond_34

    .line 851
    .line 852
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 853
    .line 854
    new-instance v4, Landroid/graphics/PointF;

    .line 855
    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 857
    .line 858
    .line 859
    move-result v5

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    invoke-direct {v4, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 865
    .line 866
    .line 867
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 868
    .line 869
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    neg-int v1, v1

    .line 874
    int-to-float v1, v1

    .line 875
    iget-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 876
    .line 877
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 878
    .line 879
    .line 880
    move-result v5

    .line 881
    neg-int v5, v5

    .line 882
    int-to-float v5, v5

    .line 883
    invoke-virtual {v4, v1, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 884
    .line 885
    .line 886
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 887
    .line 888
    iget-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 889
    .line 890
    if-eq v1, v5, :cond_32

    .line 891
    .line 892
    invoke-virtual {v3, v5, v4, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    iput-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 897
    .line 898
    :cond_32
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 899
    .line 900
    iget-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 901
    .line 902
    if-ne v1, v5, :cond_33

    .line 903
    .line 904
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 905
    .line 906
    iput-object v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    .line 907
    .line 908
    goto :goto_d

    .line 909
    :cond_33
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 910
    .line 911
    iput-object v4, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    .line 912
    .line 913
    :cond_34
    :goto_d
    return v11

    .line 914
    :cond_35
    :goto_e
    return v10

    .line 915
    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_8

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v1, p2, :cond_8

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    if-eqz v0, :cond_8

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v3, v1

    .line 53
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 54
    .line 55
    add-int/2addr v3, v1

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo0o0Oo:I

    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 76
    .line 77
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 91
    .line 92
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 97
    .line 98
    if-ne v3, v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 105
    .line 106
    add-int/2addr v1, v3

    .line 107
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    int-to-float v6, v3

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-float v7, v3

    .line 117
    int-to-float v8, v1

    .line 118
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    move-object v4, p1

    .line 122
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    .line 126
    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 130
    .line 131
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 136
    .line 137
    if-eq v3, v4, :cond_6

    .line 138
    .line 139
    :cond_5
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 140
    .line 141
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 146
    .line 147
    if-eqz v3, :cond_8

    .line 148
    .line 149
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 165
    .line 166
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    .line 173
    .line 174
    return p2

    .line 175
    :cond_7
    :goto_2
    return v2

    .line 176
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 177
    .line 178
    if-eqz v1, :cond_10

    .line 179
    .line 180
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-ne v1, p2, :cond_10

    .line 185
    .line 186
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 187
    .line 188
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_f

    .line 193
    .line 194
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 195
    .line 196
    if-nez v1, :cond_9

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :cond_9
    if-eqz v0, :cond_10

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    sub-int/2addr v1, v0

    .line 217
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 218
    .line 219
    add-int/2addr v1, v0

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0O0O00:I

    .line 229
    .line 230
    if-eqz v1, :cond_c

    .line 231
    .line 232
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    .line 233
    .line 234
    if-eqz v2, :cond_c

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 240
    .line 241
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 246
    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    goto :goto_3

    .line 254
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 255
    .line 256
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 261
    .line 262
    if-ne v1, v2, :cond_b

    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 269
    .line 270
    add-int/2addr v0, v1

    .line 271
    :cond_b
    :goto_3
    int-to-float v3, v0

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    int-to-float v4, v1

    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    int-to-float v5, v1

    .line 282
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    move-object v1, p1

    .line 286
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    .line 288
    .line 289
    :cond_c
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    .line 290
    .line 291
    if-eqz v1, :cond_d

    .line 292
    .line 293
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 294
    .line 295
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 300
    .line 301
    if-eq v1, v2, :cond_e

    .line 302
    .line 303
    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 304
    .line 305
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 310
    .line 311
    if-eqz v1, :cond_10

    .line 312
    .line 313
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 329
    .line 330
    .line 331
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 336
    .line 337
    .line 338
    return p2

    .line 339
    :cond_f
    :goto_4
    return v2

    .line 340
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRefreshFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getState()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 2
    .line 3
    return-object v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v1, v3, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v1, "DefaultRefreshHeaderCreator can not return null"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v1, v3, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    const-string v1, "DefaultRefreshFooterCreator can not return null"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 88
    .line 89
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-direct {v1, v4, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 99
    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 105
    .line 106
    if-nez v1, :cond_7

    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 109
    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    move v0, v3

    .line 114
    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 115
    .line 116
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 117
    .line 118
    if-nez v0, :cond_b

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    move v1, v3

    .line 125
    :goto_3
    if-ge v1, v0, :cond_b

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 132
    .line 133
    if-eqz v5, :cond_8

    .line 134
    .line 135
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-eq v4, v5, :cond_a

    .line 140
    .line 141
    :cond_8
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 142
    .line 143
    if-eqz v5, :cond_9

    .line 144
    .line 145
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-eq v4, v5, :cond_a

    .line 150
    .line 151
    :cond_9
    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 152
    .line 153
    invoke-direct {v5, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 157
    .line 158
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 162
    .line 163
    if-nez v0, :cond_c

    .line 164
    .line 165
    const/high16 v0, 0x41a00000    # 20.0f

    .line 166
    .line 167
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    new-instance v4, Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    const v5, -0x9a00

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    const/16 v5, 0x11

    .line 187
    .line 188
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 192
    .line 193
    .line 194
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->srl_content_empty:I

    .line 195
    .line 196
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    .line 203
    .line 204
    const/4 v5, -0x1

    .line 205
    invoke-direct {v0, v5, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 212
    .line 213
    invoke-direct {v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    .line 222
    .line 223
    :cond_c
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    .line 230
    .line 231
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 236
    .line 237
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 243
    .line 244
    iput-object v2, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 245
    .line 246
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 247
    .line 248
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    .line 249
    .line 250
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 251
    .line 252
    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 253
    .line 254
    iput-boolean v4, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    .line 255
    .line 256
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 257
    .line 258
    invoke-virtual {v2, v4, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;Landroid/view/View;Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 262
    .line 263
    if-eqz v0, :cond_d

    .line 264
    .line 265
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 266
    .line 267
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 271
    .line 272
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 273
    .line 274
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    .line 275
    .line 276
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    .line 277
    .line 278
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 279
    .line 280
    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(III)V

    .line 281
    .line 282
    .line 283
    :cond_d
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    .line 284
    .line 285
    if-eqz v0, :cond_f

    .line 286
    .line 287
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 288
    .line 289
    if-eqz v1, :cond_e

    .line 290
    .line 291
    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    .line 292
    .line 293
    .line 294
    :cond_e
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 295
    .line 296
    if-eqz v0, :cond_f

    .line 297
    .line 298
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    .line 299
    .line 300
    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    .line 301
    .line 302
    .line 303
    :cond_f
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 304
    .line 305
    if-eqz v0, :cond_10

    .line 306
    .line 307
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 308
    .line 309
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 310
    .line 311
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 315
    .line 316
    if-eqz v0, :cond_11

    .line 317
    .line 318
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    .line 323
    .line 324
    if-eqz v0, :cond_11

    .line 325
    .line 326
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 327
    .line 328
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 333
    .line 334
    .line 335
    :cond_11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 336
    .line 337
    if-eqz v0, :cond_12

    .line 338
    .line 339
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    .line 344
    .line 345
    if-eqz v0, :cond_12

    .line 346
    .line 347
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 348
    .line 349
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    :cond_12
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    :cond_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 44
    .line 45
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-interface {v3, p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 59
    .line 60
    if-ne v4, v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v3, p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    .line 63
    .line 64
    .line 65
    :cond_2
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 70
    .line 71
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 72
    .line 73
    invoke-virtual {v3, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 77
    .line 78
    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 79
    .line 80
    if-eq v1, v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 93
    .line 94
    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-gt v0, v1, :cond_11

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v5, v2

    .line 14
    move v4, v3

    .line 15
    move v6, v4

    .line 16
    :goto_0
    const/4 v7, 0x2

    .line 17
    const/4 v8, 0x1

    .line 18
    if-ge v4, v0, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-static {v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    if-lt v6, v7, :cond_0

    .line 31
    .line 32
    if-ne v4, v8, :cond_1

    .line 33
    .line 34
    :cond_0
    move v5, v4

    .line 35
    move v6, v7

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    instance-of v7, v9, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 38
    .line 39
    if-nez v7, :cond_3

    .line 40
    .line 41
    if-ge v6, v8, :cond_3

    .line 42
    .line 43
    if-lez v4, :cond_2

    .line 44
    .line 45
    move v6, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v6, v3

    .line 48
    :goto_1
    move v5, v4

    .line 49
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    if-ltz v5, :cond_7

    .line 53
    .line 54
    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-direct {v4, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 64
    .line 65
    if-ne v5, v8, :cond_6

    .line 66
    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    :goto_3
    move v1, v3

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    move v7, v2

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    if-ne v0, v7, :cond_7

    .line 74
    .line 75
    move v1, v2

    .line 76
    move v7, v8

    .line 77
    goto :goto_4

    .line 78
    :cond_7
    move v1, v2

    .line 79
    move v7, v1

    .line 80
    :goto_4
    move v4, v3

    .line 81
    :goto_5
    if-ge v4, v0, :cond_10

    .line 82
    .line 83
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eq v4, v1, :cond_d

    .line 88
    .line 89
    if-eq v4, v7, :cond_8

    .line 90
    .line 91
    if-ne v1, v2, :cond_8

    .line 92
    .line 93
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 94
    .line 95
    if-nez v6, :cond_8

    .line 96
    .line 97
    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    .line 98
    .line 99
    if-eqz v6, :cond_8

    .line 100
    .line 101
    goto :goto_9

    .line 102
    :cond_8
    if-eq v4, v7, :cond_9

    .line 103
    .line 104
    if-ne v7, v2, :cond_f

    .line 105
    .line 106
    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    .line 107
    .line 108
    if-eqz v6, :cond_f

    .line 109
    .line 110
    :cond_9
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 111
    .line 112
    if-nez v6, :cond_b

    .line 113
    .line 114
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    .line 115
    .line 116
    if-nez v6, :cond_a

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_a
    move v6, v3

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    :goto_6
    move v6, v8

    .line 122
    :goto_7
    iput-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 123
    .line 124
    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    .line 125
    .line 126
    if-eqz v6, :cond_c

    .line 127
    .line 128
    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_c
    new-instance v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0O0;

    .line 132
    .line 133
    invoke-direct {v6, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0O0;-><init>(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    move-object v5, v6

    .line 137
    :goto_8
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 138
    .line 139
    goto :goto_b

    .line 140
    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    .line 141
    .line 142
    if-eqz v6, :cond_e

    .line 143
    .line 144
    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    .line 145
    .line 146
    goto :goto_a

    .line 147
    :cond_e
    new-instance v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0OO;

    .line 148
    .line 149
    invoke-direct {v6, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0OO;-><init>(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    move-object v5, v6

    .line 153
    :goto_a
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 154
    .line 155
    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_10
    return-void

    .line 159
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    const/4 p4, 0x0

    .line 17
    move p5, p4

    .line 18
    :goto_0
    if-ge p5, p3, :cond_13

    .line 19
    .line 20
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    if-eq v1, v2, :cond_12

    .line 31
    .line 32
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->srl_component_falsify:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-ne v1, v0, :cond_0

    .line 39
    .line 40
    goto/16 :goto_c

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 50
    .line 51
    if-ne v1, v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    move v1, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v1, p4

    .line 78
    :goto_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 79
    .line 80
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .line 97
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 98
    .line 99
    add-int/2addr v5, p1

    .line 100
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    .line 102
    add-int/2addr v4, p2

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    add-int/2addr v6, v5

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    add-int/2addr v7, v4

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    .line 116
    .line 117
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 118
    .line 119
    invoke-virtual {p0, v1, v8}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 126
    .line 127
    add-int/2addr v4, v1

    .line 128
    add-int/2addr v7, v1

    .line 129
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 133
    .line 134
    if-eqz v1, :cond_8

    .line 135
    .line 136
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-ne v1, v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    move v1, v2

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move v1, p4

    .line 163
    :goto_3
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 164
    .line 165
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    .line 175
    if-eqz v5, :cond_6

    .line 176
    .line 177
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    .line 182
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 183
    .line 184
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 185
    .line 186
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    .line 187
    .line 188
    add-int/2addr v4, v6

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    add-int/2addr v6, v5

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    add-int/2addr v7, v4

    .line 199
    if-nez v1, :cond_7

    .line 200
    .line 201
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 202
    .line 203
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 208
    .line 209
    if-ne v1, v8, :cond_7

    .line 210
    .line 211
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 212
    .line 213
    sub-int/2addr v4, v1

    .line 214
    sub-int/2addr v7, v1

    .line 215
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 216
    .line 217
    .line 218
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 219
    .line 220
    if-eqz v1, :cond_12

    .line 221
    .line 222
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-ne v1, v0, :cond_12

    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 235
    .line 236
    if-eqz v0, :cond_9

    .line 237
    .line 238
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_9

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_9
    move v2, p4

    .line 248
    :goto_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 249
    .line 250
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 259
    .line 260
    if-eqz v3, :cond_a

    .line 261
    .line 262
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_a
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 266
    .line 267
    :goto_6
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 268
    .line 269
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 274
    .line 275
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    add-int/2addr v6, v5

    .line 282
    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    .line 283
    .line 284
    sub-int/2addr v6, v5

    .line 285
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    .line 286
    .line 287
    if-eqz v5, :cond_c

    .line 288
    .line 289
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    .line 290
    .line 291
    if-eqz v5, :cond_c

    .line 292
    .line 293
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 294
    .line 295
    if-eqz v5, :cond_c

    .line 296
    .line 297
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 298
    .line 299
    if-eqz v5, :cond_c

    .line 300
    .line 301
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 302
    .line 303
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    sget-object v7, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 308
    .line 309
    if-ne v5, v7, :cond_c

    .line 310
    .line 311
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 312
    .line 313
    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_c

    .line 318
    .line 319
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 320
    .line 321
    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 322
    .line 323
    iget-object v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 324
    .line 325
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 330
    .line 331
    if-eqz v7, :cond_b

    .line 332
    .line 333
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 334
    .line 335
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_b
    move v6, p4

    .line 339
    :goto_7
    add-int v7, p2, p2

    .line 340
    .line 341
    add-int/2addr v7, v6

    .line 342
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    add-int v6, v5, v7

    .line 347
    .line 348
    :cond_c
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 349
    .line 350
    if-ne v3, v5, :cond_d

    .line 351
    .line 352
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 353
    .line 354
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    .line 355
    .line 356
    sub-int v6, v1, v2

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_d
    if-nez v2, :cond_10

    .line 360
    .line 361
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 362
    .line 363
    if-eq v3, v1, :cond_10

    .line 364
    .line 365
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 366
    .line 367
    if-ne v3, v1, :cond_e

    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_e
    iget-boolean v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 371
    .line 372
    if-eqz v1, :cond_11

    .line 373
    .line 374
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 375
    .line 376
    if-gez v1, :cond_11

    .line 377
    .line 378
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 379
    .line 380
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_f

    .line 385
    .line 386
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 387
    .line 388
    neg-int v1, v1

    .line 389
    goto :goto_8

    .line 390
    :cond_f
    move v1, p4

    .line 391
    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    :goto_9
    sub-int/2addr v6, v1

    .line 396
    goto :goto_b

    .line 397
    :cond_10
    :goto_a
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    add-int/2addr v1, v4

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    add-int/2addr v2, v6

    .line 410
    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 411
    .line 412
    .line 413
    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_13
    return-void
.end method

.method public onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_1
    if-ge v7, v6, :cond_23

    .line 27
    .line 28
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    const/16 v11, 0x8

    .line 37
    .line 38
    if-eq v10, v11, :cond_1

    .line 39
    .line 40
    sget v10, Lcom/cloud/tmc/miniapp/R$string;->srl_component_falsify:I

    .line 41
    .line 42
    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    if-ne v10, v9, :cond_2

    .line 47
    .line 48
    :cond_1
    const/4 v5, 0x0

    .line 49
    const/4 v12, 0x1

    .line 50
    goto/16 :goto_15

    .line 51
    .line 52
    :cond_2
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 53
    .line 54
    const/4 v14, 0x6

    .line 55
    if-eqz v10, :cond_f

    .line 56
    .line 57
    invoke-interface {v10}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    if-ne v10, v9, :cond_f

    .line 62
    .line 63
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 64
    .line 65
    invoke-interface {v10}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    instance-of v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 74
    .line 75
    if-eqz v11, :cond_3

    .line 76
    .line 77
    move-object v11, v4

    .line 78
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    sget-object v11, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    .line 83
    :goto_2
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 84
    .line 85
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 86
    .line 87
    add-int/2addr v15, v12

    .line 88
    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    .line 90
    invoke-static {v1, v15, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    iget v15, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 95
    .line 96
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 97
    .line 98
    iget v13, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    .line 99
    .line 100
    if-ge v13, v14, :cond_7

    .line 101
    .line 102
    iget v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    .line 104
    if-lez v13, :cond_4

    .line 105
    .line 106
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 107
    .line 108
    add-int/2addr v13, v15

    .line 109
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    .line 111
    add-int/2addr v13, v15

    .line 112
    sget-object v15, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 113
    .line 114
    invoke-virtual {v5, v15}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_8

    .line 119
    .line 120
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    .line 122
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 123
    .line 124
    add-int/2addr v4, v5

    .line 125
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 126
    .line 127
    add-int/2addr v4, v5

    .line 128
    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 129
    .line 130
    iput-object v15, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    const/4 v4, -0x2

    .line 134
    if-ne v13, v4, :cond_7

    .line 135
    .line 136
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 137
    .line 138
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 143
    .line 144
    if-ne v4, v5, :cond_5

    .line 145
    .line 146
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 147
    .line 148
    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    .line 149
    .line 150
    if-nez v4, :cond_7

    .line 151
    .line 152
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 157
    .line 158
    sub-int/2addr v4, v5

    .line 159
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 160
    .line 161
    sub-int/2addr v4, v5

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    const/high16 v5, -0x80000000

    .line 168
    .line 169
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    invoke-virtual {v10, v12, v13}, Landroid/view/View;->measure(II)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-lez v5, :cond_7

    .line 181
    .line 182
    if-eq v5, v4, :cond_6

    .line 183
    .line 184
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 185
    .line 186
    sget-object v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 187
    .line 188
    invoke-virtual {v4, v13}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_6

    .line 193
    .line 194
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 195
    .line 196
    add-int/2addr v5, v4

    .line 197
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 198
    .line 199
    add-int/2addr v5, v4

    .line 200
    iput v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 201
    .line 202
    iput-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 203
    .line 204
    :cond_6
    const/4 v13, -0x1

    .line 205
    goto :goto_3

    .line 206
    :cond_7
    move v13, v15

    .line 207
    :cond_8
    :goto_3
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 208
    .line 209
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 214
    .line 215
    if-ne v4, v5, :cond_9

    .line 216
    .line 217
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    const/4 v4, -0x1

    .line 222
    const/4 v5, 0x0

    .line 223
    goto :goto_7

    .line 224
    :cond_9
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 225
    .line 226
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 231
    .line 232
    if-eqz v4, :cond_b

    .line 233
    .line 234
    if-nez v3, :cond_b

    .line 235
    .line 236
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_a

    .line 243
    .line 244
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 245
    .line 246
    :goto_4
    const/4 v5, 0x0

    .line 247
    goto :goto_5

    .line 248
    :cond_a
    const/4 v4, 0x0

    .line 249
    goto :goto_4

    .line 250
    :goto_5
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    :goto_6
    const/4 v4, -0x1

    .line 255
    goto :goto_7

    .line 256
    :cond_b
    const/4 v5, 0x0

    .line 257
    goto :goto_6

    .line 258
    :goto_7
    if-eq v13, v4, :cond_c

    .line 259
    .line 260
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 261
    .line 262
    sub-int/2addr v13, v4

    .line 263
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 264
    .line 265
    sub-int/2addr v13, v4

    .line 266
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    const/high16 v5, 0x40000000    # 2.0f

    .line 271
    .line 272
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    .line 277
    .line 278
    .line 279
    :cond_c
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 280
    .line 281
    iget-boolean v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    .line 282
    .line 283
    if-nez v5, :cond_e

    .line 284
    .line 285
    if-nez v5, :cond_d

    .line 286
    .line 287
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 288
    .line 289
    iget v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    .line 290
    .line 291
    const/4 v11, 0x1

    .line 292
    add-int/2addr v4, v11

    .line 293
    aget-object v4, v5, v4

    .line 294
    .line 295
    :cond_d
    iput-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 296
    .line 297
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 298
    .line 299
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 300
    .line 301
    iget v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 302
    .line 303
    iget v12, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    .line 304
    .line 305
    int-to-float v13, v11

    .line 306
    mul-float/2addr v12, v13

    .line 307
    float-to-int v12, v12

    .line 308
    invoke-interface {v4, v5, v11, v12}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V

    .line 309
    .line 310
    .line 311
    :cond_e
    if-eqz v3, :cond_f

    .line 312
    .line 313
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 314
    .line 315
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_f

    .line 320
    .line 321
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    add-int/2addr v8, v4

    .line 326
    :cond_f
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 327
    .line 328
    if-eqz v4, :cond_1b

    .line 329
    .line 330
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    if-ne v4, v9, :cond_1b

    .line 335
    .line 336
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 337
    .line 338
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 347
    .line 348
    if-eqz v10, :cond_10

    .line 349
    .line 350
    move-object v10, v5

    .line 351
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_10
    sget-object v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 355
    .line 356
    :goto_8
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 357
    .line 358
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 359
    .line 360
    add-int/2addr v11, v12

    .line 361
    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 362
    .line 363
    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    iget v12, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 368
    .line 369
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 370
    .line 371
    iget v15, v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    .line 372
    .line 373
    if-ge v15, v14, :cond_14

    .line 374
    .line 375
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    .line 377
    if-lez v14, :cond_11

    .line 378
    .line 379
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 380
    .line 381
    add-int/2addr v14, v12

    .line 382
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 383
    .line 384
    add-int/2addr v12, v14

    .line 385
    sget-object v14, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 386
    .line 387
    invoke-virtual {v13, v14}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-eqz v13, :cond_14

    .line 392
    .line 393
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 394
    .line 395
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 396
    .line 397
    add-int/2addr v5, v13

    .line 398
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 399
    .line 400
    add-int/2addr v5, v13

    .line 401
    iput v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 402
    .line 403
    iput-object v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_11
    const/4 v5, -0x2

    .line 407
    if-ne v14, v5, :cond_14

    .line 408
    .line 409
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 410
    .line 411
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    sget-object v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 416
    .line 417
    if-ne v5, v13, :cond_12

    .line 418
    .line 419
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 420
    .line 421
    iget-boolean v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    .line 422
    .line 423
    if-nez v5, :cond_14

    .line 424
    .line 425
    :cond_12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 430
    .line 431
    sub-int/2addr v5, v13

    .line 432
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 433
    .line 434
    sub-int/2addr v5, v13

    .line 435
    const/4 v13, 0x0

    .line 436
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    const/high16 v13, -0x80000000

    .line 441
    .line 442
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    invoke-virtual {v4, v11, v13}, Landroid/view/View;->measure(II)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 450
    .line 451
    .line 452
    move-result v13

    .line 453
    if-lez v13, :cond_14

    .line 454
    .line 455
    if-eq v13, v5, :cond_13

    .line 456
    .line 457
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 458
    .line 459
    sget-object v12, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 460
    .line 461
    invoke-virtual {v5, v12}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-eqz v5, :cond_13

    .line 466
    .line 467
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 468
    .line 469
    add-int/2addr v13, v5

    .line 470
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 471
    .line 472
    add-int/2addr v13, v5

    .line 473
    iput v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 474
    .line 475
    iput-object v12, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 476
    .line 477
    :cond_13
    const/4 v12, -0x1

    .line 478
    :cond_14
    :goto_9
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 479
    .line 480
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    sget-object v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 485
    .line 486
    if-ne v5, v13, :cond_16

    .line 487
    .line 488
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 489
    .line 490
    .line 491
    move-result v12

    .line 492
    :cond_15
    const/4 v5, 0x0

    .line 493
    :goto_a
    const/4 v13, -0x1

    .line 494
    goto :goto_c

    .line 495
    :cond_16
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 496
    .line 497
    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    iget-boolean v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 502
    .line 503
    if-eqz v5, :cond_15

    .line 504
    .line 505
    if-nez v3, :cond_15

    .line 506
    .line 507
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 508
    .line 509
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_17

    .line 514
    .line 515
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 516
    .line 517
    neg-int v5, v5

    .line 518
    move v12, v5

    .line 519
    const/4 v5, 0x0

    .line 520
    goto :goto_b

    .line 521
    :cond_17
    const/4 v5, 0x0

    .line 522
    const/4 v12, 0x0

    .line 523
    :goto_b
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 524
    .line 525
    .line 526
    move-result v12

    .line 527
    goto :goto_a

    .line 528
    :goto_c
    if-eq v12, v13, :cond_18

    .line 529
    .line 530
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 531
    .line 532
    sub-int/2addr v12, v13

    .line 533
    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 534
    .line 535
    sub-int/2addr v12, v10

    .line 536
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    const/high16 v12, 0x40000000    # 2.0f

    .line 541
    .line 542
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    invoke-virtual {v4, v11, v10}, Landroid/view/View;->measure(II)V

    .line 547
    .line 548
    .line 549
    :cond_18
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 550
    .line 551
    iget-boolean v11, v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    .line 552
    .line 553
    if-nez v11, :cond_1a

    .line 554
    .line 555
    if-nez v11, :cond_19

    .line 556
    .line 557
    sget-object v11, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 558
    .line 559
    iget v10, v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    .line 560
    .line 561
    const/4 v12, 0x1

    .line 562
    add-int/2addr v10, v12

    .line 563
    aget-object v10, v11, v10

    .line 564
    .line 565
    goto :goto_d

    .line 566
    :cond_19
    const/4 v12, 0x1

    .line 567
    :goto_d
    iput-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    .line 568
    .line 569
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 570
    .line 571
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 572
    .line 573
    iget v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 574
    .line 575
    iget v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    .line 576
    .line 577
    int-to-float v15, v13

    .line 578
    mul-float/2addr v14, v15

    .line 579
    float-to-int v14, v14

    .line 580
    invoke-interface {v10, v11, v13, v14}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V

    .line 581
    .line 582
    .line 583
    goto :goto_e

    .line 584
    :cond_1a
    const/4 v12, 0x1

    .line 585
    :goto_e
    if-eqz v3, :cond_1c

    .line 586
    .line 587
    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 588
    .line 589
    invoke-virtual {v0, v10}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    if-eqz v10, :cond_1c

    .line 594
    .line 595
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    add-int/2addr v4, v8

    .line 600
    move v8, v4

    .line 601
    goto :goto_f

    .line 602
    :cond_1b
    const/4 v5, 0x0

    .line 603
    const/4 v12, 0x1

    .line 604
    :cond_1c
    :goto_f
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 605
    .line 606
    if-eqz v4, :cond_22

    .line 607
    .line 608
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 609
    .line 610
    iget-object v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 611
    .line 612
    if-ne v4, v9, :cond_22

    .line 613
    .line 614
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 619
    .line 620
    if-eqz v10, :cond_1d

    .line 621
    .line 622
    move-object v10, v9

    .line 623
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 624
    .line 625
    goto :goto_10

    .line 626
    :cond_1d
    sget-object v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 627
    .line 628
    :goto_10
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 629
    .line 630
    if-eqz v11, :cond_1e

    .line 631
    .line 632
    iget-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 633
    .line 634
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 635
    .line 636
    .line 637
    move-result v11

    .line 638
    if-eqz v11, :cond_1e

    .line 639
    .line 640
    iget-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    .line 641
    .line 642
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 643
    .line 644
    invoke-virtual {v0, v11, v13}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    .line 645
    .line 646
    .line 647
    move-result v11

    .line 648
    if-eqz v11, :cond_1e

    .line 649
    .line 650
    move v11, v12

    .line 651
    goto :goto_11

    .line 652
    :cond_1e
    move v11, v5

    .line 653
    :goto_11
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 654
    .line 655
    if-eqz v13, :cond_1f

    .line 656
    .line 657
    iget-boolean v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 658
    .line 659
    invoke-virtual {v0, v13}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    .line 660
    .line 661
    .line 662
    move-result v13

    .line 663
    if-eqz v13, :cond_1f

    .line 664
    .line 665
    iget-boolean v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    .line 666
    .line 667
    iget-object v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 668
    .line 669
    invoke-virtual {v0, v13, v14}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    .line 670
    .line 671
    .line 672
    move-result v13

    .line 673
    if-eqz v13, :cond_1f

    .line 674
    .line 675
    move v13, v12

    .line 676
    goto :goto_12

    .line 677
    :cond_1f
    move v13, v5

    .line 678
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 679
    .line 680
    .line 681
    move-result v14

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 683
    .line 684
    .line 685
    move-result v15

    .line 686
    add-int/2addr v15, v14

    .line 687
    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 688
    .line 689
    add-int/2addr v15, v14

    .line 690
    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 691
    .line 692
    add-int/2addr v15, v14

    .line 693
    iget v14, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 694
    .line 695
    invoke-static {v1, v15, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 696
    .line 697
    .line 698
    move-result v14

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 700
    .line 701
    .line 702
    move-result v15

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 704
    .line 705
    .line 706
    move-result v16

    .line 707
    add-int v16, v16, v15

    .line 708
    .line 709
    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 710
    .line 711
    add-int v16, v16, v15

    .line 712
    .line 713
    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 714
    .line 715
    add-int v16, v16, v10

    .line 716
    .line 717
    if-eqz v3, :cond_20

    .line 718
    .line 719
    if-eqz v11, :cond_20

    .line 720
    .line 721
    iget v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 722
    .line 723
    goto :goto_13

    .line 724
    :cond_20
    move v10, v5

    .line 725
    :goto_13
    add-int v16, v16, v10

    .line 726
    .line 727
    if-eqz v3, :cond_21

    .line 728
    .line 729
    if-eqz v13, :cond_21

    .line 730
    .line 731
    iget v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 732
    .line 733
    goto :goto_14

    .line 734
    :cond_21
    move v10, v5

    .line 735
    :goto_14
    add-int v10, v16, v10

    .line 736
    .line 737
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 738
    .line 739
    invoke-static {v2, v10, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 740
    .line 741
    .line 742
    move-result v9

    .line 743
    invoke-virtual {v4, v14, v9}, Landroid/view/View;->measure(II)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    add-int/2addr v8, v4

    .line 751
    :cond_22
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 752
    .line 753
    goto/16 :goto_1

    .line 754
    .line 755
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 768
    .line 769
    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    int-to-float v1, v1

    .line 775
    const/high16 v2, 0x40000000    # 2.0f

    .line 776
    .line 777
    div-float/2addr v1, v2

    .line 778
    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 779
    .line 780
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    cmpl-float p1, p3, p1

    .line 7
    .line 8
    if-gtz p1, :cond_2

    .line 9
    .line 10
    :cond_0
    neg-float p1, p3

    .line 11
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(F)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 2
    .line 3
    mul-int v0, p3, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le p1, v0, :cond_0

    .line 19
    .line 20
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 21
    .line 22
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 23
    .line 24
    move v1, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 27
    .line 28
    sub-int/2addr p1, p3

    .line 29
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 30
    .line 31
    move v1, p3

    .line 32
    :goto_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-lez p3, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sub-int/2addr p1, p3

    .line 46
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 47
    .line 48
    int-to-float p1, p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    .line 50
    .line 51
    .line 52
    move v1, p3

    .line 53
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 54
    .line 55
    sub-int/2addr p3, v1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    aget p2, p4, p1

    .line 62
    .line 63
    add-int/2addr p2, v1

    .line 64
    aput p2, p4, p1

    .line 65
    .line 66
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOO:[I

    .line 4
    .line 5
    move v1, p2

    .line 6
    move v2, p3

    .line 7
    move v3, p4

    .line 8
    move v4, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOO:[I

    .line 14
    .line 15
    const/4 p4, 0x1

    .line 16
    aget p2, p2, p4

    .line 17
    .line 18
    add-int/2addr p5, p2

    .line 19
    if-gez p5, :cond_0

    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-lez p5, :cond_5

    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 37
    .line 38
    if-eqz p2, :cond_5

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 41
    .line 42
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 43
    .line 44
    if-eq p2, v0, :cond_2

    .line 45
    .line 46
    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    .line 47
    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 51
    .line 52
    if-lez p5, :cond_3

    .line 53
    .line 54
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 58
    .line 59
    :goto_1
    check-cast p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 62
    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    check-cast p1, Landroid/view/ViewGroup;

    .line 75
    .line 76
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 80
    .line 81
    sub-int/2addr p1, p5

    .line 82
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 83
    .line 84
    int-to-float p1, p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    if-gez p3, :cond_6

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 96
    .line 97
    :cond_6
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    and-int/lit8 p2, p3, 0x2

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 11
    .line 12
    .line 13
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 14
    .line 15
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(I)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->isNestedScrollingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    and-int/lit8 p1, p3, 0x2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    .line 8
    .line 9
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 2
    .line 3
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo:Z

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setStateDirectLoading(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iput-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo00:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 p1, 0x7d0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 40
    .line 41
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    .line 42
    .line 43
    int-to-float v2, v0

    .line 44
    mul-float/2addr v1, v2

    .line 45
    float-to-int v1, v1

    .line 46
    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public setStateLoading(Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Z)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 12
    .line 13
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 14
    .line 15
    neg-int v1, v1

    .line 16
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 32
    .line 33
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    .line 34
    .line 35
    int-to-float v4, v2

    .line 36
    mul-float/2addr v3, v4

    .line 37
    float-to-int v3, v3

    .line 38
    invoke-interface {v1, p0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    if-nez p1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public setStateRefreshing(Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Z)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 12
    .line 13
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 14
    .line 15
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 31
    .line 32
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    .line 33
    .line 34
    int-to-float v4, v2

    .line 35
    mul-float/2addr v3, v4

    .line 36
    float-to-int v3, v3

    .line 37
    invoke-interface {v1, p0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    if-nez p1, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public setViceState(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 8
    .line 9
    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 19
    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 23
    .line 24
    :cond_1
    return-void
.end method
