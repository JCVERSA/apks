.class public Lcom/noober/background/drawable/ColorStateCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateColorState;


# instance fields
.field private colors:[I

.field private index:I

.field private states:[[I

.field private textTa:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [[I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 14
    .line 15
    return-void
.end method

.method private setStateColor(Landroid/content/res/TypedArray;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    .line 2
    .line 3
    iget v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    .line 4
    .line 5
    filled-new-array {p3}, [I

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    aput-object p3, v0, v1

    .line 10
    .line 11
    iget-object p3, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aput p1, p3, v1

    .line 19
    .line 20
    iget p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public create()Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [[I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ge v0, v1, :cond_12

    .line 29
    .line 30
    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_checkable_textColor:I

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 41
    .line 42
    const v3, 0x101009f

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unCheckable_textColor:I

    .line 51
    .line 52
    if-ne v1, v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 55
    .line 56
    const v3, -0x101009f

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_1
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_checked_textColor:I

    .line 65
    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 69
    .line 70
    const v3, 0x10100a0

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_2
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unChecked_textColor:I

    .line 79
    .line 80
    if-ne v1, v2, :cond_3

    .line 81
    .line 82
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 83
    .line 84
    const v3, -0x10100a0

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_enabled_textColor:I

    .line 93
    .line 94
    if-ne v1, v2, :cond_4

    .line 95
    .line 96
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 97
    .line 98
    const v3, 0x101009e

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_4
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unEnabled_textColor:I

    .line 107
    .line 108
    if-ne v1, v2, :cond_5

    .line 109
    .line 110
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 111
    .line 112
    const v3, -0x101009e

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_5
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_selected_textColor:I

    .line 121
    .line 122
    if-ne v1, v2, :cond_6

    .line 123
    .line 124
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 125
    .line 126
    const v3, 0x10100a1

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_6
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unSelected_textColor:I

    .line 135
    .line 136
    if-ne v1, v2, :cond_7

    .line 137
    .line 138
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 139
    .line 140
    const v3, -0x10100a1

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_7
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_pressed_textColor:I

    .line 149
    .line 150
    if-ne v1, v2, :cond_8

    .line 151
    .line 152
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 153
    .line 154
    const v3, 0x10100a7

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_8
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unPressed_textColor:I

    .line 163
    .line 164
    if-ne v1, v2, :cond_9

    .line 165
    .line 166
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 167
    .line 168
    const v3, -0x10100a7

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_9
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_focused_textColor:I

    .line 177
    .line 178
    if-ne v1, v2, :cond_a

    .line 179
    .line 180
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 181
    .line 182
    const v3, 0x101009c

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_a
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unFocused_textColor:I

    .line 190
    .line 191
    if-ne v1, v2, :cond_b

    .line 192
    .line 193
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 194
    .line 195
    const v3, -0x101009c

    .line 196
    .line 197
    .line 198
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_b
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_activated_textColor:I

    .line 203
    .line 204
    if-ne v1, v2, :cond_c

    .line 205
    .line 206
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 207
    .line 208
    const v3, 0x10102fe

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_c
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unActivated_textColor:I

    .line 216
    .line 217
    if-ne v1, v2, :cond_d

    .line 218
    .line 219
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 220
    .line 221
    const v3, -0x10100a2

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_d
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_active_textColor:I

    .line 229
    .line 230
    if-ne v1, v2, :cond_e

    .line 231
    .line 232
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 233
    .line 234
    const v3, 0x10100a2

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_e
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unActive_textColor:I

    .line 242
    .line 243
    if-ne v1, v2, :cond_f

    .line 244
    .line 245
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 246
    .line 247
    const v3, -0x10102fe

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_f
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_expanded_textColor:I

    .line 255
    .line 256
    if-ne v1, v2, :cond_10

    .line 257
    .line 258
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 259
    .line 260
    const v3, 0x10100a8

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_10
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unExpanded_textColor:I

    .line 268
    .line 269
    if-ne v1, v2, :cond_11

    .line 270
    .line 271
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    .line 272
    .line 273
    const v3, -0x10100a8

    .line 274
    .line 275
    .line 276
    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    .line 277
    .line 278
    .line 279
    :cond_11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_12
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    .line 286
    .line 287
    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    .line 288
    .line 289
    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 290
    .line 291
    .line 292
    return-object v0
.end method
