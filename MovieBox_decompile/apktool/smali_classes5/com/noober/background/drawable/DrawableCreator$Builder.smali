.class public Lcom/noober/background/drawable/DrawableCreator$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noober/background/drawable/DrawableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alpha:F

.field private baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private checkableDrawable:Landroid/graphics/drawable/Drawable;

.field private checkableSolidColor:Ljava/lang/Integer;

.field private checkableStrokeColor:Ljava/lang/Integer;

.field private checkableTextColor:Ljava/lang/Integer;

.field private checkedDrawable:Landroid/graphics/drawable/Drawable;

.field private checkedSolidColor:Ljava/lang/Integer;

.field private checkedStrokeColor:Ljava/lang/Integer;

.field private checkedTextColor:Ljava/lang/Integer;

.field private cornersBottomLeftRadius:Ljava/lang/Float;

.field private cornersBottomRightRadius:Ljava/lang/Float;

.field private cornersRadius:Ljava/lang/Float;

.field private cornersTopLeftRadius:Ljava/lang/Float;

.field private cornersTopRightRadius:Ljava/lang/Float;

.field private enabledDrawable:Landroid/graphics/drawable/Drawable;

.field private enabledSolidColor:Ljava/lang/Integer;

.field private enabledStrokeColor:Ljava/lang/Integer;

.field private enabledTextColor:Ljava/lang/Integer;

.field private focusedActivated:Landroid/graphics/drawable/Drawable;

.field private focusedDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedHovered:Landroid/graphics/drawable/Drawable;

.field private focusedSolidColor:Ljava/lang/Integer;

.field private focusedStrokeColor:Ljava/lang/Integer;

.field private focusedTextColor:Ljava/lang/Integer;

.field private gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

.field private gradientAngle:I

.field private gradientCenterColor:Ljava/lang/Integer;

.field private gradientCenterX:Ljava/lang/Float;

.field private gradientCenterY:Ljava/lang/Float;

.field private gradientEndColor:Ljava/lang/Integer;

.field private gradientRadius:Ljava/lang/Float;

.field private gradientStartColor:Ljava/lang/Integer;

.field private hasSelectDrawable:Z

.field private hasSetPadding:Z

.field private padding:Landroid/graphics/Rect;

.field private pressedDrawable:Landroid/graphics/drawable/Drawable;

.field private pressedSolidColor:Ljava/lang/Integer;

.field private pressedStrokeColor:Ljava/lang/Integer;

.field private pressedTextColor:Ljava/lang/Integer;

.field private rippleColor:Ljava/lang/Integer;

.field private rippleEnable:Z

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedSolidColor:Ljava/lang/Integer;

.field private selectedStrokeColor:Ljava/lang/Integer;

.field private selectedTextColor:Ljava/lang/Integer;

.field private shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

.field private sizeHeight:Ljava/lang/Float;

.field private sizeWidth:Ljava/lang/Float;

.field private solidColor:Ljava/lang/Integer;

.field private strokeColor:Ljava/lang/Integer;

.field private strokeDashGap:F

.field private strokeDashWidth:F

.field private strokeWidth:Ljava/lang/Float;

.field private textColorCount:I

.field private unCheckableDrawable:Landroid/graphics/drawable/Drawable;

.field private unCheckableSolidColor:Ljava/lang/Integer;

.field private unCheckableStrokeColor:Ljava/lang/Integer;

.field private unCheckableTextColor:Ljava/lang/Integer;

.field private unCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private unCheckedSolidColor:Ljava/lang/Integer;

.field private unCheckedStrokeColor:Ljava/lang/Integer;

.field private unCheckedTextColor:Ljava/lang/Integer;

.field private unEnabledDrawable:Landroid/graphics/drawable/Drawable;

.field private unEnabledSolidColor:Ljava/lang/Integer;

.field private unEnabledStrokeColor:Ljava/lang/Integer;

.field private unEnabledTextColor:Ljava/lang/Integer;

.field private unFocusedActivated:Landroid/graphics/drawable/Drawable;

.field private unFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private unFocusedHovered:Landroid/graphics/drawable/Drawable;

.field private unFocusedSolidColor:Ljava/lang/Integer;

.field private unFocusedStrokeColor:Ljava/lang/Integer;

.field private unFocusedTextColor:Ljava/lang/Integer;

.field private unPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private unPressedSolidColor:Ljava/lang/Integer;

.field private unPressedStrokeColor:Ljava/lang/Integer;

.field private unPressedTextColor:Ljava/lang/Integer;

.field private unSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private unSelectedSolidColor:Ljava/lang/Integer;

.field private unSelectedStrokeColor:Ljava/lang/Integer;

.field private unSelectedTextColor:Ljava/lang/Integer;

.field private useLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$Shape;->Rectangle:Lcom/noober/background/drawable/DrawableCreator$Shape;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    .line 10
    .line 11
    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Linear:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->useLevel:Z

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSetPadding:Z

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    .line 29
    .line 30
    iput v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleEnable:Z

    .line 33
    .line 34
    const/high16 v1, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 44
    .line 45
    return-void
.end method

.method private getColorStateList()Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 2
    .line 3
    new-array v1, v0, [[I

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableTextColor:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const v4, 0x101009f

    .line 13
    .line 14
    .line 15
    filled-new-array {v4}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    aput-object v4, v1, v3

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aput v2, v0, v3

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableTextColor:Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const v4, -0x101009f

    .line 33
    .line 34
    .line 35
    filled-new-array {v4}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v1, v3

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aput v2, v0, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    :cond_1
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedTextColor:Ljava/lang/Integer;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    const v4, 0x10100a0

    .line 54
    .line 55
    .line 56
    filled-new-array {v4}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    aput-object v4, v1, v3

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aput v2, v0, v3

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    :cond_2
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedTextColor:Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    const v4, -0x10100a0

    .line 75
    .line 76
    .line 77
    filled-new-array {v4}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    aput-object v4, v1, v3

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    aput v2, v0, v3

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    :cond_3
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledTextColor:Ljava/lang/Integer;

    .line 92
    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    const v4, 0x101009e

    .line 96
    .line 97
    .line 98
    filled-new-array {v4}, [I

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    aput-object v4, v1, v3

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    aput v2, v0, v3

    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    :cond_4
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledTextColor:Ljava/lang/Integer;

    .line 113
    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    const v4, -0x101009e

    .line 117
    .line 118
    .line 119
    filled-new-array {v4}, [I

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    aput-object v4, v1, v3

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    aput v2, v0, v3

    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    :cond_5
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedTextColor:Ljava/lang/Integer;

    .line 134
    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    const v4, 0x10100a1

    .line 138
    .line 139
    .line 140
    filled-new-array {v4}, [I

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    aput-object v4, v1, v3

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    aput v2, v0, v3

    .line 151
    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    :cond_6
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedTextColor:Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz v2, :cond_7

    .line 157
    .line 158
    const v4, -0x10100a1

    .line 159
    .line 160
    .line 161
    filled-new-array {v4}, [I

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    aput-object v4, v1, v3

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    aput v2, v0, v3

    .line 172
    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    :cond_7
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedTextColor:Ljava/lang/Integer;

    .line 176
    .line 177
    if-eqz v2, :cond_8

    .line 178
    .line 179
    const v4, 0x10100a7

    .line 180
    .line 181
    .line 182
    filled-new-array {v4}, [I

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    aput-object v4, v1, v3

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    aput v2, v0, v3

    .line 193
    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    :cond_8
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedTextColor:Ljava/lang/Integer;

    .line 197
    .line 198
    if-eqz v2, :cond_9

    .line 199
    .line 200
    const v4, -0x10100a7

    .line 201
    .line 202
    .line 203
    filled-new-array {v4}, [I

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    aput-object v4, v1, v3

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    aput v2, v0, v3

    .line 214
    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 216
    .line 217
    :cond_9
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedTextColor:Ljava/lang/Integer;

    .line 218
    .line 219
    if-eqz v2, :cond_a

    .line 220
    .line 221
    const v4, 0x101009c

    .line 222
    .line 223
    .line 224
    filled-new-array {v4}, [I

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    aput-object v4, v1, v3

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    aput v2, v0, v3

    .line 235
    .line 236
    add-int/lit8 v3, v3, 0x1

    .line 237
    .line 238
    :cond_a
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedTextColor:Ljava/lang/Integer;

    .line 239
    .line 240
    if-eqz v2, :cond_b

    .line 241
    .line 242
    const v4, -0x101009c

    .line 243
    .line 244
    .line 245
    filled-new-array {v4}, [I

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    aput-object v4, v1, v3

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    aput v2, v0, v3

    .line 256
    .line 257
    :cond_b
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 258
    .line 259
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 260
    .line 261
    .line 262
    return-object v2
.end method

.method private getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x2d

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

    .line 19
    .line 20
    iget v7, v7, Lcom/noober/background/drawable/DrawableCreator$Shape;->value:I

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 23
    .line 24
    .line 25
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersRadius:Ljava/lang/Float;

    .line 26
    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    .line 37
    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopLeftRadius:Ljava/lang/Float;

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    iget-object v8, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    .line 49
    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v8, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopLeftRadius:Ljava/lang/Float;

    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    iget-object v9, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    iget-object v10, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    iget-object v11, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    .line 75
    .line 76
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    iget-object v12, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    .line 81
    .line 82
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    iget-object v13, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    .line 87
    .line 88
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    iget-object v14, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    .line 93
    .line 94
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    const/16 v15, 0x8

    .line 99
    .line 100
    new-array v15, v15, [F

    .line 101
    .line 102
    aput v7, v15, v5

    .line 103
    .line 104
    aput v8, v15, v4

    .line 105
    .line 106
    aput v9, v15, v3

    .line 107
    .line 108
    aput v10, v15, v2

    .line 109
    .line 110
    const/4 v7, 0x4

    .line 111
    aput v11, v15, v7

    .line 112
    .line 113
    const/4 v7, 0x5

    .line 114
    aput v12, v15, v7

    .line 115
    .line 116
    const/4 v7, 0x6

    .line 117
    aput v13, v15, v7

    .line 118
    .line 119
    const/4 v7, 0x7

    .line 120
    aput v14, v15, v7

    .line 121
    .line 122
    invoke-virtual {v6, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    .line 126
    .line 127
    sget-object v8, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Linear:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    .line 128
    .line 129
    if-ne v7, v8, :cond_b

    .line 130
    .line 131
    iget v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    .line 132
    .line 133
    const/4 v8, -0x1

    .line 134
    if-eq v7, v8, :cond_b

    .line 135
    .line 136
    rem-int/lit16 v7, v7, 0x168

    .line 137
    .line 138
    iput v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    .line 139
    .line 140
    rem-int/lit8 v8, v7, 0x2d

    .line 141
    .line 142
    if-nez v8, :cond_b

    .line 143
    .line 144
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 145
    .line 146
    if-eqz v7, :cond_a

    .line 147
    .line 148
    if-eq v7, v0, :cond_9

    .line 149
    .line 150
    const/16 v0, 0x5a

    .line 151
    .line 152
    if-eq v7, v0, :cond_8

    .line 153
    .line 154
    const/16 v0, 0x87

    .line 155
    .line 156
    if-eq v7, v0, :cond_7

    .line 157
    .line 158
    const/16 v0, 0xb4

    .line 159
    .line 160
    if-eq v7, v0, :cond_6

    .line 161
    .line 162
    const/16 v0, 0xe1

    .line 163
    .line 164
    if-eq v7, v0, :cond_5

    .line 165
    .line 166
    const/16 v0, 0x10e

    .line 167
    .line 168
    if-eq v7, v0, :cond_4

    .line 169
    .line 170
    const/16 v0, 0x13b

    .line 171
    .line 172
    if-eq v7, v0, :cond_3

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_4
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_6
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_7
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_8
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_9
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 194
    .line 195
    :cond_a
    :goto_0
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 196
    .line 197
    .line 198
    :cond_b
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterX:Ljava/lang/Float;

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterY:Ljava/lang/Float;

    .line 203
    .line 204
    if-eqz v7, :cond_c

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterY:Ljava/lang/Float;

    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 217
    .line 218
    .line 219
    :cond_c
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientStartColor:Ljava/lang/Integer;

    .line 220
    .line 221
    if-eqz v0, :cond_e

    .line 222
    .line 223
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    .line 224
    .line 225
    if-eqz v7, :cond_e

    .line 226
    .line 227
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterColor:Ljava/lang/Integer;

    .line 228
    .line 229
    if-eqz v7, :cond_d

    .line 230
    .line 231
    new-array v2, v2, [I

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    aput v0, v2, v5

    .line 238
    .line 239
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterColor:Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    aput v0, v2, v4

    .line 246
    .line 247
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    aput v0, v2, v3

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_d
    new-array v2, v3, [I

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    aput v0, v2, v5

    .line 263
    .line 264
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    aput v0, v2, v4

    .line 271
    .line 272
    :goto_1
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 273
    .line 274
    .line 275
    :cond_e
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientRadius:Ljava/lang/Float;

    .line 276
    .line 277
    if-eqz v0, :cond_f

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 284
    .line 285
    .line 286
    :cond_f
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    .line 287
    .line 288
    iget v0, v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->value:I

    .line 289
    .line 290
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 291
    .line 292
    .line 293
    iget-boolean v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->useLevel:Z

    .line 294
    .line 295
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    .line 296
    .line 297
    .line 298
    iget-boolean v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSetPadding:Z

    .line 299
    .line 300
    if-eqz v0, :cond_11

    .line 301
    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 303
    .line 304
    const/16 v2, 0x1d

    .line 305
    .line 306
    if-lt v0, v2, :cond_10

    .line 307
    .line 308
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    .line 309
    .line 310
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 311
    .line 312
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 313
    .line 314
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 315
    .line 316
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 317
    .line 318
    invoke-static {v6, v2, v3, v7, v0}, Lcom/noober/background/drawable/a;->a(Landroid/graphics/drawable/GradientDrawable;IIII)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_10
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const-string v2, "mPadding"

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    .line 336
    .line 337
    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :catch_0
    move-exception v0

    .line 342
    goto :goto_2

    .line 343
    :catch_1
    move-exception v0

    .line 344
    goto :goto_3

    .line 345
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    .line 351
    .line 352
    :cond_11
    :goto_4
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeWidth:Ljava/lang/Float;

    .line 353
    .line 354
    if-eqz v0, :cond_12

    .line 355
    .line 356
    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeHeight:Ljava/lang/Float;

    .line 357
    .line 358
    if-eqz v2, :cond_12

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeHeight:Ljava/lang/Float;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    invoke-virtual {v6, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 371
    .line 372
    .line 373
    :cond_12
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    .line 374
    .line 375
    const v2, -0x101009c

    .line 376
    .line 377
    .line 378
    const v3, 0x101009c

    .line 379
    .line 380
    .line 381
    const v7, -0x10100a1

    .line 382
    .line 383
    .line 384
    const v8, 0x10100a1

    .line 385
    .line 386
    .line 387
    const v9, -0x101009e

    .line 388
    .line 389
    .line 390
    const v10, 0x101009e

    .line 391
    .line 392
    .line 393
    const v11, -0x10100a0

    .line 394
    .line 395
    .line 396
    const v12, 0x10100a0

    .line 397
    .line 398
    .line 399
    const v13, -0x101009f

    .line 400
    .line 401
    .line 402
    const v14, 0x101009f

    .line 403
    .line 404
    .line 405
    const v15, -0x10100a7

    .line 406
    .line 407
    .line 408
    const v16, 0x10100a7

    .line 409
    .line 410
    .line 411
    if-eqz v0, :cond_1b

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    const/16 v17, 0x0

    .line 418
    .line 419
    cmpl-float v0, v0, v17

    .line 420
    .line 421
    if-lez v0, :cond_1b

    .line 422
    .line 423
    new-instance v0, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    new-instance v5, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .line 432
    .line 433
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedStrokeColor:Ljava/lang/Integer;

    .line 434
    .line 435
    if-eqz v4, :cond_13

    .line 436
    .line 437
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedStrokeColor:Ljava/lang/Integer;

    .line 438
    .line 439
    if-eqz v4, :cond_13

    .line 440
    .line 441
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedStrokeColor:Ljava/lang/Integer;

    .line 456
    .line 457
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedStrokeColor:Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    :cond_13
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableStrokeColor:Ljava/lang/Integer;

    .line 466
    .line 467
    if-eqz v4, :cond_14

    .line 468
    .line 469
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableStrokeColor:Ljava/lang/Integer;

    .line 470
    .line 471
    if-eqz v4, :cond_14

    .line 472
    .line 473
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableStrokeColor:Ljava/lang/Integer;

    .line 488
    .line 489
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableStrokeColor:Ljava/lang/Integer;

    .line 493
    .line 494
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    :cond_14
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedStrokeColor:Ljava/lang/Integer;

    .line 498
    .line 499
    if-eqz v4, :cond_15

    .line 500
    .line 501
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedStrokeColor:Ljava/lang/Integer;

    .line 502
    .line 503
    if-eqz v4, :cond_15

    .line 504
    .line 505
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedStrokeColor:Ljava/lang/Integer;

    .line 520
    .line 521
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedStrokeColor:Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    :cond_15
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledStrokeColor:Ljava/lang/Integer;

    .line 530
    .line 531
    if-eqz v4, :cond_16

    .line 532
    .line 533
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledStrokeColor:Ljava/lang/Integer;

    .line 534
    .line 535
    if-eqz v4, :cond_16

    .line 536
    .line 537
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledStrokeColor:Ljava/lang/Integer;

    .line 552
    .line 553
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledStrokeColor:Ljava/lang/Integer;

    .line 557
    .line 558
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    :cond_16
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedStrokeColor:Ljava/lang/Integer;

    .line 562
    .line 563
    if-eqz v4, :cond_17

    .line 564
    .line 565
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedStrokeColor:Ljava/lang/Integer;

    .line 566
    .line 567
    if-eqz v4, :cond_17

    .line 568
    .line 569
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedStrokeColor:Ljava/lang/Integer;

    .line 584
    .line 585
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedStrokeColor:Ljava/lang/Integer;

    .line 589
    .line 590
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    :cond_17
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedStrokeColor:Ljava/lang/Integer;

    .line 594
    .line 595
    if-eqz v4, :cond_18

    .line 596
    .line 597
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedStrokeColor:Ljava/lang/Integer;

    .line 598
    .line 599
    if-eqz v4, :cond_18

    .line 600
    .line 601
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedStrokeColor:Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedStrokeColor:Ljava/lang/Integer;

    .line 621
    .line 622
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    if-lez v4, :cond_1a

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    new-array v4, v4, [[I

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    new-array v2, v2, [I

    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    const/4 v3, 0x0

    .line 648
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 649
    .line 650
    .line 651
    move-result v19

    .line 652
    if-eqz v19, :cond_19

    .line 653
    .line 654
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v19

    .line 658
    check-cast v19, Ljava/lang/Integer;

    .line 659
    .line 660
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    .line 661
    .line 662
    .line 663
    move-result v19

    .line 664
    filled-new-array/range {v19 .. v19}, [I

    .line 665
    .line 666
    .line 667
    move-result-object v19

    .line 668
    aput-object v19, v4, v3

    .line 669
    .line 670
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v19

    .line 674
    check-cast v19, Ljava/lang/Integer;

    .line 675
    .line 676
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    .line 677
    .line 678
    .line 679
    move-result v19

    .line 680
    aput v19, v2, v3

    .line 681
    .line 682
    const/16 v18, 0x1

    .line 683
    .line 684
    add-int/lit8 v3, v3, 0x1

    .line 685
    .line 686
    goto :goto_5

    .line 687
    :cond_19
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 688
    .line 689
    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 690
    .line 691
    .line 692
    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    .line 693
    .line 694
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    iget v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    .line 699
    .line 700
    iget v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    .line 701
    .line 702
    invoke-virtual {v6, v2, v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 703
    .line 704
    .line 705
    goto :goto_6

    .line 706
    :cond_1a
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeColor:Ljava/lang/Integer;

    .line 707
    .line 708
    if-eqz v0, :cond_1b

    .line 709
    .line 710
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeColor:Ljava/lang/Integer;

    .line 717
    .line 718
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    iget v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    .line 723
    .line 724
    iget v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    .line 725
    .line 726
    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 727
    .line 728
    .line 729
    :cond_1b
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    .line 730
    .line 731
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .line 733
    .line 734
    new-instance v2, Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .line 738
    .line 739
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedSolidColor:Ljava/lang/Integer;

    .line 740
    .line 741
    if-eqz v3, :cond_1c

    .line 742
    .line 743
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedSolidColor:Ljava/lang/Integer;

    .line 744
    .line 745
    if-eqz v3, :cond_1c

    .line 746
    .line 747
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedSolidColor:Ljava/lang/Integer;

    .line 762
    .line 763
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedSolidColor:Ljava/lang/Integer;

    .line 767
    .line 768
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    :cond_1c
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableSolidColor:Ljava/lang/Integer;

    .line 772
    .line 773
    if-eqz v3, :cond_1d

    .line 774
    .line 775
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableSolidColor:Ljava/lang/Integer;

    .line 776
    .line 777
    if-eqz v3, :cond_1d

    .line 778
    .line 779
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableSolidColor:Ljava/lang/Integer;

    .line 794
    .line 795
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableSolidColor:Ljava/lang/Integer;

    .line 799
    .line 800
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    :cond_1d
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedSolidColor:Ljava/lang/Integer;

    .line 804
    .line 805
    if-eqz v3, :cond_1e

    .line 806
    .line 807
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedSolidColor:Ljava/lang/Integer;

    .line 808
    .line 809
    if-eqz v3, :cond_1e

    .line 810
    .line 811
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedSolidColor:Ljava/lang/Integer;

    .line 826
    .line 827
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedSolidColor:Ljava/lang/Integer;

    .line 831
    .line 832
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    :cond_1e
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledSolidColor:Ljava/lang/Integer;

    .line 836
    .line 837
    if-eqz v3, :cond_1f

    .line 838
    .line 839
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledSolidColor:Ljava/lang/Integer;

    .line 840
    .line 841
    if-eqz v3, :cond_1f

    .line 842
    .line 843
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledSolidColor:Ljava/lang/Integer;

    .line 858
    .line 859
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledSolidColor:Ljava/lang/Integer;

    .line 863
    .line 864
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    :cond_1f
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedSolidColor:Ljava/lang/Integer;

    .line 868
    .line 869
    if-eqz v3, :cond_20

    .line 870
    .line 871
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedSolidColor:Ljava/lang/Integer;

    .line 872
    .line 873
    if-eqz v3, :cond_20

    .line 874
    .line 875
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedSolidColor:Ljava/lang/Integer;

    .line 890
    .line 891
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedSolidColor:Ljava/lang/Integer;

    .line 895
    .line 896
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    :cond_20
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedSolidColor:Ljava/lang/Integer;

    .line 900
    .line 901
    if-eqz v3, :cond_21

    .line 902
    .line 903
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedSolidColor:Ljava/lang/Integer;

    .line 904
    .line 905
    if-eqz v3, :cond_21

    .line 906
    .line 907
    const v3, 0x101009c

    .line 908
    .line 909
    .line 910
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    const v3, -0x101009c

    .line 918
    .line 919
    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedSolidColor:Ljava/lang/Integer;

    .line 928
    .line 929
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedSolidColor:Ljava/lang/Integer;

    .line 933
    .line 934
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    if-lez v3, :cond_23

    .line 942
    .line 943
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    new-array v3, v3, [[I

    .line 948
    .line 949
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 950
    .line 951
    .line 952
    move-result v4

    .line 953
    new-array v4, v4, [I

    .line 954
    .line 955
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    const/4 v5, 0x0

    .line 960
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 961
    .line 962
    .line 963
    move-result v7

    .line 964
    if-eqz v7, :cond_22

    .line 965
    .line 966
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v7

    .line 970
    check-cast v7, Ljava/lang/Integer;

    .line 971
    .line 972
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 973
    .line 974
    .line 975
    move-result v7

    .line 976
    filled-new-array {v7}, [I

    .line 977
    .line 978
    .line 979
    move-result-object v7

    .line 980
    aput-object v7, v3, v5

    .line 981
    .line 982
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v7

    .line 986
    check-cast v7, Ljava/lang/Integer;

    .line 987
    .line 988
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 989
    .line 990
    .line 991
    move-result v7

    .line 992
    aput v7, v4, v5

    .line 993
    .line 994
    const/4 v7, 0x1

    .line 995
    add-int/2addr v5, v7

    .line 996
    goto :goto_7

    .line 997
    :cond_22
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 998
    .line 999
    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_8

    .line 1006
    :cond_23
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->solidColor:Ljava/lang/Integer;

    .line 1007
    .line 1008
    if-eqz v0, :cond_24

    .line 1009
    .line 1010
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1015
    .line 1016
    .line 1017
    :cond_24
    :goto_8
    return-object v6
.end method

.method private getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 2
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x101009f

    .line 4
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x101009f

    .line 7
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10100a0

    .line 10
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10100a0

    .line 13
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x101009e

    .line 16
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x101009e

    .line 19
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10100a1

    .line 22
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10100a1

    .line 25
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_7
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10100a7

    .line 28
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_8
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    .line 30
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10100a7

    .line 31
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_9
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 33
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x101009c

    .line 34
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_a
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 36
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x101009c

    .line 37
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_b
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedHovered:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 39
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x1010367

    .line 40
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedHovered:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_c
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedHovered:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 42
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x1010367

    .line 43
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedHovered:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_d
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedActivated:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 45
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10102fe

    .line 46
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedActivated:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_e
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedActivated:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 48
    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10102fe

    .line 49
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedActivated:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_f
    return-object v0
.end method


# virtual methods
.method public build()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v5, v1

    .line 16
    move-object v1, v0

    .line 17
    move-object v0, v5

    .line 18
    :goto_0
    iget-boolean v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleEnable:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleColor:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v1, v0

    .line 30
    :goto_1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleColor:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    :cond_3
    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 50
    .line 51
    const/high16 v2, -0x40800000    # -1.0f

    .line 52
    .line 53
    cmpl-float v2, v0, v2

    .line 54
    .line 55
    if-eqz v2, :cond_6

    .line 56
    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    .line 59
    cmpl-float v2, v0, v2

    .line 60
    .line 61
    const/high16 v3, 0x437f0000    # 255.0f

    .line 62
    .line 63
    if-ltz v2, :cond_4

    .line 64
    .line 65
    iput v3, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v2, 0x0

    .line 69
    cmpg-float v4, v0, v2

    .line 70
    .line 71
    if-gtz v4, :cond_5

    .line 72
    .line 73
    iput v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    mul-float/2addr v0, v3

    .line 77
    iput v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 78
    .line 79
    :goto_2
    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 80
    .line 81
    float-to-int v0, v0

    .line 82
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    .line 84
    .line 85
    :cond_6
    return-object v1
.end method

.method public buildTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getColorStateList()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    :cond_0
    return-object p1
.end method

.method public setBaseGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBaseStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCheckableDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setCheckableSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableSolidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableSolidColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setCheckableStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableStrokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableStrokeColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setCheckableTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setCheckedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedSolidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedSolidColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setCheckedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedStrokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedStrokeColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setCheckedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public setCornersRadius(FFFF)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    .line 4
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopLeftRadius:Ljava/lang/Float;

    .line 5
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public setEnabledDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setEnabledSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledSolidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledSolidColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setEnabledStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledStrokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledStrokeColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setEnabledTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setFocusedActivated(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedActivated:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setFocusedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setFocusedHovered(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedHovered:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setFocusedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedSolidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedSolidColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setFocusedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedStrokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedStrokeColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setFocusedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setGradient(Lcom/noober/background/drawable/DrawableCreator$Gradient;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGradientAngle(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setGradientCenterXY(FF)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterX:Ljava/lang/Float;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterY:Ljava/lang/Float;

    .line 12
    .line 13
    return-object p0
.end method

.method public setGradientColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientStartColor:Ljava/lang/Integer;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGradientColor(III)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientStartColor:Ljava/lang/Integer;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterColor:Ljava/lang/Integer;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGradientRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientRadius:Ljava/lang/Float;

    .line 6
    .line 7
    return-object p0
.end method

.method public setPadding(FFFF)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSetPadding:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    .line 5
    .line 6
    float-to-int p1, p1

    .line 7
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    float-to-int p1, p2

    .line 10
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    float-to-int p1, p3

    .line 13
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    float-to-int p1, p4

    .line 16
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    return-object p0
.end method

.method public setPressedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setPressedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedSolidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedSolidColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setPressedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedStrokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedStrokeColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setPressedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setRipple(ZI)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleEnable:Z

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleColor:Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p0
.end method

.method public setSelectedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setSelectedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedSolidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedSolidColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setSelectedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedStrokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedStrokeColor:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method

.method public setSelectedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setShape(Lcom/noober/background/drawable/DrawableCreator$Shape;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

    .line 2
    .line 3
    return-object p0
.end method

.method public setShapeAlpha(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSizeHeight(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeHeight:Ljava/lang/Float;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSizeWidth(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeWidth:Ljava/lang/Float;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->solidColor:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setStrokeColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeColor:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setStrokeDashGap(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setStrokeDashWidth(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setStrokeWidth(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    .line 6
    .line 7
    return-object p0
.end method

.method public setUnCheckableDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnCheckableTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setUnCheckedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnCheckedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setUnEnabledDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnEnabledTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setUnFocusedActivated(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedActivated:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnFocusedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnFocusedHovered(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedHovered:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnFocusedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setUnPressedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnPressedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setUnSelectedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public setUnSelectedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedTextColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setUseLevel(Z)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->useLevel:Z

    .line 2
    .line 3
    return-object p0
.end method
