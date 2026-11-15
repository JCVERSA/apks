.class public Lcom/noober/background/drawable/SelectorDrawableCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private selectorTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 7
    .line 8
    return-void
.end method

.method private setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    if-nez p2, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 28
    .line 29
    .line 30
    filled-new-array {p5}, [I

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p3, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    filled-new-array {p5}, [I

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v7, v0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge v7, v0, :cond_10

    .line 15
    .line 16
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 17
    .line 18
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_checkable_drawable:I

    .line 23
    .line 24
    if-ne v4, v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 29
    .line 30
    const v5, 0x101009f

    .line 31
    .line 32
    .line 33
    move-object v0, p0

    .line 34
    move-object v3, v6

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unCheckable_drawable:I

    .line 41
    .line 42
    if-ne v4, v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 47
    .line 48
    const v5, -0x101009f

    .line 49
    .line 50
    .line 51
    move-object v0, p0

    .line 52
    move-object v3, v6

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_1
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_checked_drawable:I

    .line 59
    .line 60
    if-ne v4, v0, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 65
    .line 66
    const v5, 0x10100a0

    .line 67
    .line 68
    .line 69
    move-object v0, p0

    .line 70
    move-object v3, v6

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unChecked_drawable:I

    .line 77
    .line 78
    if-ne v4, v0, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 83
    .line 84
    const v5, -0x10100a0

    .line 85
    .line 86
    .line 87
    move-object v0, p0

    .line 88
    move-object v3, v6

    .line 89
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_3
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_enabled_drawable:I

    .line 95
    .line 96
    if-ne v4, v0, :cond_4

    .line 97
    .line 98
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 101
    .line 102
    const v5, 0x101009e

    .line 103
    .line 104
    .line 105
    move-object v0, p0

    .line 106
    move-object v3, v6

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_4
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unEnabled_drawable:I

    .line 113
    .line 114
    if-ne v4, v0, :cond_5

    .line 115
    .line 116
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 119
    .line 120
    const v5, -0x101009e

    .line 121
    .line 122
    .line 123
    move-object v0, p0

    .line 124
    move-object v3, v6

    .line 125
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_5
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_selected_drawable:I

    .line 131
    .line 132
    if-ne v4, v0, :cond_6

    .line 133
    .line 134
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 137
    .line 138
    const v5, 0x10100a1

    .line 139
    .line 140
    .line 141
    move-object v0, p0

    .line 142
    move-object v3, v6

    .line 143
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_6
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unSelected_drawable:I

    .line 149
    .line 150
    if-ne v4, v0, :cond_7

    .line 151
    .line 152
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 155
    .line 156
    const v5, -0x10100a1

    .line 157
    .line 158
    .line 159
    move-object v0, p0

    .line 160
    move-object v3, v6

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_7
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_pressed_drawable:I

    .line 167
    .line 168
    if-ne v4, v0, :cond_8

    .line 169
    .line 170
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 173
    .line 174
    const v5, 0x10100a7

    .line 175
    .line 176
    .line 177
    move-object v0, p0

    .line 178
    move-object v3, v6

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_8
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unPressed_drawable:I

    .line 185
    .line 186
    if-ne v4, v0, :cond_9

    .line 187
    .line 188
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 191
    .line 192
    const v5, -0x10100a7

    .line 193
    .line 194
    .line 195
    move-object v0, p0

    .line 196
    move-object v3, v6

    .line 197
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_9
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_drawable:I

    .line 203
    .line 204
    if-ne v4, v0, :cond_a

    .line 205
    .line 206
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 207
    .line 208
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 209
    .line 210
    const v5, 0x101009c

    .line 211
    .line 212
    .line 213
    move-object v0, p0

    .line 214
    move-object v3, v6

    .line 215
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_a
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_drawable:I

    .line 220
    .line 221
    if-ne v4, v0, :cond_b

    .line 222
    .line 223
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 224
    .line 225
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 226
    .line 227
    const v5, -0x101009c

    .line 228
    .line 229
    .line 230
    move-object v0, p0

    .line 231
    move-object v3, v6

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_b
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_hovered:I

    .line 237
    .line 238
    if-ne v4, v0, :cond_c

    .line 239
    .line 240
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 241
    .line 242
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 243
    .line 244
    const v5, 0x1010367

    .line 245
    .line 246
    .line 247
    move-object v0, p0

    .line 248
    move-object v3, v6

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_c
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_hovered:I

    .line 254
    .line 255
    if-ne v4, v0, :cond_d

    .line 256
    .line 257
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 258
    .line 259
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 260
    .line 261
    const v5, -0x1010367

    .line 262
    .line 263
    .line 264
    move-object v0, p0

    .line 265
    move-object v3, v6

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_d
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_activated:I

    .line 271
    .line 272
    if-ne v4, v0, :cond_e

    .line 273
    .line 274
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 275
    .line 276
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 277
    .line 278
    const v5, 0x10102fe

    .line 279
    .line 280
    .line 281
    move-object v0, p0

    .line 282
    move-object v3, v6

    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_e
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_activated:I

    .line 288
    .line 289
    if-ne v4, v0, :cond_f

    .line 290
    .line 291
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 292
    .line 293
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 294
    .line 295
    const v5, -0x10102fe

    .line 296
    .line 297
    .line 298
    move-object v0, p0

    .line 299
    move-object v3, v6

    .line 300
    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    .line 301
    .line 302
    .line 303
    :cond_f
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_10
    return-object v6
.end method
