.class public final Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# instance fields
.field public OooO:Landroid/view/animation/TranslateAnimation;

.field public OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

.field public OooO0O0:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public OooO0OO:Ljava/lang/Integer;

.field public final OooO0Oo:Ljava/lang/String;

.field public OooO0o:Z

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Landroid/view/animation/AnimationSet;

.field public final OooOO0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    .line 7
    const-string p2, "MiniappLaunchLoadingView"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    .line 8
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    .line 9
    new-instance p1, Lcom/cloud/tmc/miniapp/widget/i;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/i;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooOO0:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o()V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V
    .locals 14

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    .line 7
    .line 8
    const-string v1, "mLoadingImg"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v3

    .line 23
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotation(F)V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    .line 27
    .line 28
    :cond_1
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 31
    .line 32
    const-wide/16 v5, 0x1f4

    .line 33
    .line 34
    if-nez v0, :cond_c

    .line 35
    .line 36
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 51
    .line 52
    :goto_0
    move v9, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    move v11, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    .line 67
    move v11, v0

    .line 68
    :goto_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .line 69
    .line 70
    const/4 v12, 0x1

    .line 71
    const/high16 v13, 0x3f800000    # 1.0f

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v10, 0x1

    .line 75
    move-object v7, v0

    .line 76
    invoke-direct/range {v7 .. v13}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 77
    .line 78
    .line 79
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    if-nez v7, :cond_4

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move-object v7, v3

    .line 87
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    int-to-float v7, v7

    .line 92
    cmpg-float v8, v7, v4

    .line 93
    .line 94
    if-nez v8, :cond_5

    .line 95
    .line 96
    const/high16 v8, 0x42900000    # 72.0f

    .line 97
    .line 98
    :try_start_0
    invoke-static {v8}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 99
    .line 100
    .line 101
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    int-to-float v8, v8

    .line 103
    goto :goto_3

    .line 104
    :catchall_0
    move v8, v4

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    move v8, v7

    .line 107
    :goto_3
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v11, "img width "

    .line 115
    .line 116
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v7, " is "

    .line 123
    .line 124
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-static {v9, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_6

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    neg-float v8, v8

    .line 145
    :goto_4
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    .line 146
    .line 147
    invoke-direct {v7, v4, v8, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 148
    .line 149
    .line 150
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 151
    .line 152
    if-nez v8, :cond_7

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_7
    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 156
    .line 157
    .line 158
    :goto_5
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 159
    .line 160
    if-nez v8, :cond_8

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    invoke-virtual {v8, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 164
    .line 165
    .line 166
    :goto_6
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 167
    .line 168
    if-nez v8, :cond_9

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_9
    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 172
    .line 173
    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 177
    .line 178
    .line 179
    :goto_7
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 180
    .line 181
    if-eqz v8, :cond_a

    .line 182
    .line 183
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    .line 185
    .line 186
    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 187
    .line 188
    if-eqz v0, :cond_b

    .line 189
    .line 190
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 191
    .line 192
    .line 193
    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 194
    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    new-instance v7, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;

    .line 198
    .line 199
    invoke-direct {v7, p0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    .line 204
    .line 205
    :cond_c
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 206
    .line 207
    if-nez v0, :cond_d

    .line 208
    .line 209
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    move-object v0, v3

    .line 213
    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    .line 217
    .line 218
    const/high16 v0, 0x42880000    # 68.0f

    .line 219
    .line 220
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(F)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    int-to-float v0, v0

    .line 225
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 226
    .line 227
    if-nez v1, :cond_11

    .line 228
    .line 229
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_e

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_e
    neg-float v0, v0

    .line 237
    :goto_8
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 238
    .line 239
    invoke-direct {v1, v4, v0, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 240
    .line 241
    .line 242
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 243
    .line 244
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 245
    .line 246
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 253
    .line 254
    if-nez v0, :cond_f

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_f
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    .line 259
    .line 260
    :goto_9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 261
    .line 262
    if-nez v0, :cond_10

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_10
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 266
    .line 267
    .line 268
    :cond_11
    :goto_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 269
    .line 270
    if-eqz v0, :cond_12

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 273
    .line 274
    .line 275
    :cond_12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0O0:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 276
    .line 277
    if-nez v0, :cond_13

    .line 278
    .line 279
    const-string v0, "llBottom"

    .line 280
    .line 281
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_13
    move-object v3, v0

    .line 286
    :goto_b
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 287
    .line 288
    invoke-virtual {v3, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    const-string v0, "mLoadingImg"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/j;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/j;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final getAnimationRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooOO0:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAnimationRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRepeatAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSquareTranslate()Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAnimationRunning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setAnimationSet(Landroid/view/animation/AnimationSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setRepeatAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRepeatCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSquareTranslate(Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 2
    .line 3
    return-void
.end method
