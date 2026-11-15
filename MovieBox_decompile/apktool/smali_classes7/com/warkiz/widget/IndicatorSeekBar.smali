.class public Lcom/warkiz/widget/IndicatorSeekBar;
.super Landroid/view/View;
.source "source.java"


# instance fields
.field private A:[F

.field private A0:I

.field private B:Z

.field private B0:Landroid/graphics/drawable/Drawable;

.field private C:Z

.field private C0:Landroid/graphics/Bitmap;

.field private D:Z

.field private D0:I

.field private E:I

.field private E0:Z

.field private F:[Ljava/lang/String;

.field private F0:F

.field private G:[F

.field private G0:I

.field private H:[F

.field private H0:Z

.field private I:F

.field private I0:Z

.field private J:I

.field private K:Landroid/graphics/Typeface;

.field private L:I

.field private M:I

.field private N:I

.field private O:[Ljava/lang/CharSequence;

.field private P:Lcom/warkiz/widget/d;

.field private Q:I

.field private R:I

.field private S:Z

.field private T:I

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:I

.field private a:Landroid/content/Context;

.field private a0:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private b0:[F

.field private c:Landroid/text/TextPaint;

.field private c0:I

.field private d:Lcom/warkiz/widget/e;

.field private d0:I

.field private e:Landroid/graphics/Rect;

.field private e0:I

.field private f:F

.field private f0:F

.field private g:F

.field private g0:Landroid/graphics/Bitmap;

.field private h:F

.field private h0:Landroid/graphics/Bitmap;

.field private i:F

.field private i0:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private j0:I

.field private k:Lcom/warkiz/widget/f;

.field private k0:Z

.field private l:I

.field private l0:Z

.field private m:I

.field private m0:I

.field private n:I

.field private n0:Z

.field private o:I

.field private o0:Landroid/graphics/RectF;

.field private p:F

.field private p0:Landroid/graphics/RectF;

.field private q:F

.field private q0:I

.field private r:Z

.field private r0:I

.field private s:F

.field private s0:I

.field private t:F

.field private t0:I

.field private u:F

.field private u0:[I

.field private v:Z

.field private v0:Z

.field private w:I

.field private w0:F

.field private x:Z

.field private x0:F

.field private y:Z

.field private y0:Landroid/graphics/Bitmap;

.field private z:Z

.field private z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h:F

    .line 4
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i:F

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w:I

    .line 6
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->A(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->D()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x40800000    # -1.0f

    .line 10
    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h:F

    .line 11
    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i:F

    const/4 p3, 0x1

    .line 12
    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w:I

    .line 13
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->A(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->D()V

    return-void
.end method

.method private A(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/warkiz/widget/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/warkiz/widget/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->l(Lcom/warkiz/widget/a;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar:[I

    .line 13
    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_max:I

    .line 19
    .line 20
    iget v1, v0, Lcom/warkiz/widget/a;->b:F

    .line 21
    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 27
    .line 28
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_min:I

    .line 29
    .line 30
    iget v1, v0, Lcom/warkiz/widget/a;->c:F

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 37
    .line 38
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_progress:I

    .line 39
    .line 40
    iget v1, v0, Lcom/warkiz/widget/a;->d:F

    .line 41
    .line 42
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 47
    .line 48
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_progress_value_float:I

    .line 49
    .line 50
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->e:Z

    .line 51
    .line 52
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v:Z

    .line 57
    .line 58
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_user_seekable:I

    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->h:Z

    .line 61
    .line 62
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:Z

    .line 67
    .line 68
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_clear_default_padding:I

    .line 69
    .line 70
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->j:Z

    .line 71
    .line 72
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j:Z

    .line 77
    .line 78
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_only_thumb_draggable:I

    .line 79
    .line 80
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->i:Z

    .line 81
    .line 82
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:Z

    .line 87
    .line 88
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_seek_smoothly:I

    .line 89
    .line 90
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->f:Z

    .line 91
    .line 92
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z:Z

    .line 97
    .line 98
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_r2l:I

    .line 99
    .line 100
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->g:Z

    .line 101
    .line 102
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 107
    .line 108
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_background_size:I

    .line 109
    .line 110
    iget v1, v0, Lcom/warkiz/widget/a;->q:I

    .line 111
    .line 112
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 117
    .line 118
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_progress_size:I

    .line 119
    .line 120
    iget v1, v0, Lcom/warkiz/widget/a;->s:I

    .line 121
    .line 122
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 127
    .line 128
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_background_color:I

    .line 129
    .line 130
    iget v1, v0, Lcom/warkiz/widget/a;->r:I

    .line 131
    .line 132
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:I

    .line 137
    .line 138
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_progress_color:I

    .line 139
    .line 140
    iget v1, v0, Lcom/warkiz/widget/a;->t:I

    .line 141
    .line 142
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 147
    .line 148
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_rounded_corners:I

    .line 149
    .line 150
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->u:Z

    .line 151
    .line 152
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n0:Z

    .line 157
    .line 158
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_size:I

    .line 159
    .line 160
    iget v1, v0, Lcom/warkiz/widget/a;->x:I

    .line 161
    .line 162
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 167
    .line 168
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_drawable:I

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_adjust_auto:I

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:Z

    .line 184
    .line 185
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_color:I

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget v1, v0, Lcom/warkiz/widget/a;->y:I

    .line 192
    .line 193
    invoke-direct {p0, p2, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->L(Landroid/content/res/ColorStateList;I)V

    .line 194
    .line 195
    .line 196
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_thumb_text:I

    .line 197
    .line 198
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->w:Z

    .line 199
    .line 200
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 205
    .line 206
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_text_color:I

    .line 207
    .line 208
    iget v1, v0, Lcom/warkiz/widget/a;->v:I

    .line 209
    .line 210
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:I

    .line 215
    .line 216
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_ticks_count:I

    .line 217
    .line 218
    iget v1, v0, Lcom/warkiz/widget/a;->H:I

    .line 219
    .line 220
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 225
    .line 226
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_tick_marks_type:I

    .line 227
    .line 228
    iget v1, v0, Lcom/warkiz/widget/a;->I:I

    .line 229
    .line 230
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:I

    .line 235
    .line 236
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_size:I

    .line 237
    .line 238
    iget v1, v0, Lcom/warkiz/widget/a;->K:I

    .line 239
    .line 240
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 245
    .line 246
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_color:I

    .line 247
    .line 248
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    iget v1, v0, Lcom/warkiz/widget/a;->J:I

    .line 253
    .line 254
    invoke-direct {p0, p2, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->N(Landroid/content/res/ColorStateList;I)V

    .line 255
    .line 256
    .line 257
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_drawable:I

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 264
    .line 265
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_swept_hide:I

    .line 266
    .line 267
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->N:Z

    .line 268
    .line 269
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l0:Z

    .line 274
    .line 275
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_ends_hide:I

    .line 276
    .line 277
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->M:Z

    .line 278
    .line 279
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k0:Z

    .line 284
    .line 285
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_tick_texts:I

    .line 286
    .line 287
    iget-boolean v1, v0, Lcom/warkiz/widget/a;->B:Z

    .line 288
    .line 289
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 294
    .line 295
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_size:I

    .line 296
    .line 297
    iget v1, v0, Lcom/warkiz/widget/a;->D:I

    .line 298
    .line 299
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:I

    .line 304
    .line 305
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_color:I

    .line 306
    .line 307
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    iget v1, v0, Lcom/warkiz/widget/a;->C:I

    .line 312
    .line 313
    invoke-direct {p0, p2, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->O(Landroid/content/res/ColorStateList;I)V

    .line 314
    .line 315
    .line 316
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_array:I

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:[Ljava/lang/CharSequence;

    .line 323
    .line 324
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_typeface:I

    .line 325
    .line 326
    const/4 v1, -0x1

    .line 327
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    iget-object v1, v0, Lcom/warkiz/widget/a;->F:Landroid/graphics/Typeface;

    .line 332
    .line 333
    invoke-direct {p0, p2, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->J(ILandroid/graphics/Typeface;)V

    .line 334
    .line 335
    .line 336
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_indicator:I

    .line 337
    .line 338
    iget v1, v0, Lcom/warkiz/widget/a;->k:I

    .line 339
    .line 340
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 341
    .line 342
    .line 343
    move-result p2

    .line 344
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:I

    .line 345
    .line 346
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_color:I

    .line 347
    .line 348
    iget v1, v0, Lcom/warkiz/widget/a;->l:I

    .line 349
    .line 350
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 351
    .line 352
    .line 353
    move-result p2

    .line 354
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q:I

    .line 355
    .line 356
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_text_size:I

    .line 357
    .line 358
    iget v1, v0, Lcom/warkiz/widget/a;->n:I

    .line 359
    .line 360
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:I

    .line 365
    .line 366
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_text_color:I

    .line 367
    .line 368
    iget v0, v0, Lcom/warkiz/widget/a;->m:I

    .line 369
    .line 370
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 371
    .line 372
    .line 373
    move-result p2

    .line 374
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:I

    .line 375
    .line 376
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_content_layout:I

    .line 377
    .line 378
    const/4 v0, 0x0

    .line 379
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    const/4 v1, 0x0

    .line 384
    if-lez p2, :cond_1

    .line 385
    .line 386
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 387
    .line 388
    invoke-static {v2, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 393
    .line 394
    :cond_1
    sget p2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_top_content_layout:I

    .line 395
    .line 396
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 397
    .line 398
    .line 399
    move-result p2

    .line 400
    if-lez p2, :cond_2

    .line 401
    .line 402
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 403
    .line 404
    invoke-static {v0, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V:Landroid/view/View;

    .line 409
    .line 410
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    .line 412
    .line 413
    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/high16 v1, 0x41800000    # 16.0f

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private C()V
    .locals 10

    .line 1
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:I

    .line 2
    .line 3
    if-nez v4, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v9, Lcom/warkiz/widget/d;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 13
    .line 14
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q:I

    .line 15
    .line 16
    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:I

    .line 17
    .line 18
    iget v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:I

    .line 19
    .line 20
    iget-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 21
    .line 22
    iget-object v8, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V:Landroid/view/View;

    .line 23
    .line 24
    move-object v0, v9

    .line 25
    move-object v2, p0

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/warkiz/widget/d;-><init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iput-object v9, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 30
    .line 31
    invoke-virtual {v9}, Lcom/warkiz/widget/d;->d()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->E()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 5
    .line 6
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    const/high16 v1, 0x41f00000    # 30.0f

    .line 15
    .line 16
    const/high16 v2, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v0, v2

    .line 24
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 25
    .line 26
    const v3, 0x3f99999a    # 1.2f

    .line 27
    .line 28
    .line 29
    mul-float/2addr v0, v3

    .line 30
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 40
    .line 41
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    div-float/2addr v0, v2

    .line 47
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 48
    .line 49
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 56
    .line 57
    int-to-float v0, v0

    .line 58
    div-float/2addr v0, v2

    .line 59
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:F

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-float v0, v0

    .line 75
    div-float/2addr v0, v2

    .line 76
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:F

    .line 77
    .line 78
    :goto_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 79
    .line 80
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:F

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    mul-float/2addr v0, v2

    .line 87
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->G()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->S()V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 96
    .line 97
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->q()V

    .line 100
    .line 101
    .line 102
    new-instance v0, Landroid/graphics/RectF;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 108
    .line 109
    new-instance v0, Landroid/graphics/RectF;

    .line 110
    .line 111
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->B()V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->C()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private E()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 4
    .line 5
    cmpg-float v2, v0, v1

    .line 6
    .line 7
    if-ltz v2, :cond_2

    .line 8
    .line 9
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 10
    .line 11
    cmpg-float v2, v2, v1

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 18
    .line 19
    cmpl-float v1, v1, v0

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "the Argument: MAX\'s value must be larger than MIN\'s."

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method private F()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o:I

    .line 24
    .line 25
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 26
    .line 27
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m:I

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 35
    .line 36
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 37
    .line 38
    add-int/lit8 v2, v1, -0x1

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-lez v2, :cond_0

    .line 42
    .line 43
    add-int/lit8 v3, v1, -0x1

    .line 44
    .line 45
    :cond_0
    int-to-float v1, v3

    .line 46
    div-float/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 48
    .line 49
    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n0:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 17
    .line 18
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 30
    .line 31
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 32
    .line 33
    if-le v0, v1, :cond_2

    .line 34
    .line 35
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/TextPaint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 17
    .line 18
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 24
    .line 25
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private I()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 17
    .line 18
    array-length v2, v2

    .line 19
    if-ge v1, v2, :cond_3

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->z(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    aput-object v3, v2, v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 36
    .line 37
    aget-object v3, v3, v1

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:[F

    .line 49
    .line 50
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    int-to-float v3, v3

    .line 57
    aput v3, v2, v1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:[F

    .line 60
    .line 61
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 62
    .line 63
    int-to-float v3, v3

    .line 64
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 65
    .line 66
    int-to-float v5, v1

    .line 67
    mul-float/2addr v4, v5

    .line 68
    add-float/2addr v3, v4

    .line 69
    aput v3, v2, v1

    .line 70
    .line 71
    :cond_2
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 72
    .line 73
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 74
    .line 75
    int-to-float v3, v3

    .line 76
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 77
    .line 78
    int-to-float v5, v1

    .line 79
    mul-float/2addr v4, v5

    .line 80
    add-float/2addr v3, v4

    .line 81
    aput v3, v2, v1

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-void
.end method

.method private J(ILandroid/graphics/Typeface;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private K()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v3, v2, Landroid/graphics/drawable/StateListDrawable;

    .line 9
    .line 10
    if-eqz v3, :cond_4

    .line 11
    .line 12
    :try_start_0
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "getStateCount"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x2

    .line 36
    if-ne v4, v5, :cond_3

    .line 37
    .line 38
    const-string v5, "getStateSet"

    .line 39
    .line 40
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    new-array v7, v1, [Ljava/lang/Class;

    .line 43
    .line 44
    aput-object v6, v7, v0

    .line 45
    .line 46
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v7, "getStateDrawable"

    .line 51
    .line 52
    new-array v8, v1, [Ljava/lang/Class;

    .line 53
    .line 54
    aput-object v6, v8, v0

    .line 55
    .line 56
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move v6, v0

    .line 61
    :goto_0
    if-ge v6, v4, :cond_5

    .line 62
    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    new-array v8, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v7, v8, v0

    .line 70
    .line 71
    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, [I

    .line 76
    .line 77
    array-length v8, v7

    .line 78
    if-lez v8, :cond_2

    .line 79
    .line 80
    aget v7, v7, v0

    .line 81
    .line 82
    const v8, 0x10100a7

    .line 83
    .line 84
    .line 85
    if-ne v7, v8, :cond_1

    .line 86
    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    new-array v8, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v7, v8, v0

    .line 94
    .line 95
    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    invoke-direct {p0, v7, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    iput-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string v2, "the state of the selector thumb drawable is wrong!"

    .line 111
    .line 112
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    new-array v8, v1, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object v7, v8, v0

    .line 123
    .line 124
    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    invoke-direct {p0, v7, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    iput-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 135
    .line 136
    :goto_1
    add-int/2addr v6, v1

    .line 137
    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v2, "the format of the selector thumb drawable is wrong!"

    .line 141
    .line 142
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    invoke-direct {p0, v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 162
    .line 163
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 164
    .line 165
    :cond_5
    :goto_2
    return-void
.end method

.method private L(Landroid/content/res/ColorStateList;I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v3, v1

    .line 20
    move v4, v2

    .line 21
    :goto_0
    const/4 v5, 0x1

    .line 22
    if-ge v4, v0, :cond_3

    .line 23
    .line 24
    aget-object v6, p2, v4

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    const-string v5, "mStateSpecs"

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [[I

    .line 46
    .line 47
    :cond_1
    const-string v5, "mColors"

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_a

    .line 69
    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    array-length p1, v1

    .line 74
    if-ne p1, v5, :cond_5

    .line 75
    .line 76
    aget p1, v3, v2

    .line 77
    .line 78
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:I

    .line 79
    .line 80
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    array-length p1, v1

    .line 84
    const/4 p2, 0x2

    .line 85
    const-string v0, "the selector color file you set for the argument: isb_thumb_color is in wrong format."

    .line 86
    .line 87
    if-ne p1, p2, :cond_9

    .line 88
    .line 89
    move p1, v2

    .line 90
    :goto_1
    array-length p2, v1

    .line 91
    if-ge p1, p2, :cond_8

    .line 92
    .line 93
    aget-object p2, v1, p1

    .line 94
    .line 95
    array-length v4, p2

    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    aget p2, v3, p1

    .line 99
    .line 100
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    aget p2, p2, v2

    .line 104
    .line 105
    const v4, 0x10100a7

    .line 106
    .line 107
    .line 108
    if-ne p2, v4, :cond_7

    .line 109
    .line 110
    aget p2, v3, p1

    .line 111
    .line 112
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:I

    .line 113
    .line 114
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_8
    :goto_3
    return-void

    .line 124
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_a
    :goto_4
    return-void

    .line 131
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 132
    .line 133
    const-string p2, "Something wrong happened when parseing thumb selector color."

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
.end method

.method private M()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v2, :cond_3

    .line 8
    .line 9
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v4, "getStateCount"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x2

    .line 33
    if-ne v4, v5, :cond_2

    .line 34
    .line 35
    const-string v5, "getStateSet"

    .line 36
    .line 37
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    new-array v7, v0, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v6, v7, v3

    .line 42
    .line 43
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v7, "getStateDrawable"

    .line 48
    .line 49
    new-array v8, v0, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v6, v8, v3

    .line 52
    .line 53
    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    move v6, v3

    .line 58
    :goto_0
    if-ge v6, v4, :cond_4

    .line 59
    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-array v8, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v7, v8, v3

    .line 67
    .line 68
    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, [I

    .line 73
    .line 74
    array-length v8, v7

    .line 75
    if-lez v8, :cond_1

    .line 76
    .line 77
    aget v7, v7, v3

    .line 78
    .line 79
    const v8, 0x10100a1

    .line 80
    .line 81
    .line 82
    if-ne v7, v8, :cond_0

    .line 83
    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    new-array v8, v0, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v7, v8, v3

    .line 91
    .line 92
    invoke-virtual {v2, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    invoke-direct {p0, v7, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iput-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:Landroid/graphics/Bitmap;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string v1, "the state of the selector TickMarks drawable is wrong!"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    new-array v8, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object v7, v8, v3

    .line 120
    .line 121
    invoke-virtual {v2, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    invoke-direct {p0, v7, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    iput-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 132
    .line 133
    :goto_1
    add-int/2addr v6, v0

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string v1, "the format of the selector TickMarks drawable is wrong!"

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    invoke-direct {p0, v0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:Landroid/graphics/Bitmap;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:Landroid/graphics/Bitmap;

    .line 161
    .line 162
    :cond_4
    :goto_2
    return-void
.end method

.method private N(Landroid/content/res/ColorStateList;I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v3, v1

    .line 20
    move v4, v2

    .line 21
    :goto_0
    const/4 v5, 0x1

    .line 22
    if-ge v4, v0, :cond_3

    .line 23
    .line 24
    aget-object v6, p2, v4

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    const-string v5, "mStateSpecs"

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [[I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_6

    .line 50
    :cond_1
    :goto_1
    const-string v5, "mColors"

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    if-eqz v1, :cond_a

    .line 72
    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_4
    array-length p1, v1

    .line 77
    if-ne p1, v5, :cond_5

    .line 78
    .line 79
    aget p1, v3, v2

    .line 80
    .line 81
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    .line 82
    .line 83
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    array-length p1, v1

    .line 87
    const/4 p2, 0x2

    .line 88
    const-string v0, "the selector color file you set for the argument: isb_tick_marks_color is in wrong format."

    .line 89
    .line 90
    if-ne p1, p2, :cond_9

    .line 91
    .line 92
    move p1, v2

    .line 93
    :goto_2
    array-length p2, v1

    .line 94
    if-ge p1, p2, :cond_8

    .line 95
    .line 96
    aget-object p2, v1, p1

    .line 97
    .line 98
    array-length v4, p2

    .line 99
    if-nez v4, :cond_6

    .line 100
    .line 101
    aget p2, v3, p1

    .line 102
    .line 103
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    aget p2, p2, v2

    .line 107
    .line 108
    const v4, 0x10100a1

    .line 109
    .line 110
    .line 111
    if-ne p2, v4, :cond_7

    .line 112
    .line 113
    aget p2, v3, p1

    .line 114
    .line 115
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    .line 116
    .line 117
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_8
    :goto_4
    return-void

    .line 127
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_a
    :goto_5
    return-void

    .line 134
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v1, "Something wrong happened when parsing thumb selector color."

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p2
.end method

.method private O(Landroid/content/res/ColorStateList;I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:I

    .line 4
    .line 5
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 6
    .line 7
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    array-length v0, p2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v3, v1

    .line 22
    move v4, v2

    .line 23
    :goto_0
    const/4 v5, 0x1

    .line 24
    if-ge v4, v0, :cond_3

    .line 25
    .line 26
    aget-object v6, p2, v4

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    const-string v5, "mStateSpecs"

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, [[I

    .line 48
    .line 49
    :cond_1
    const-string v5, "mColors"

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    if-eqz v1, :cond_b

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    array-length p1, v1

    .line 76
    if-ne p1, v5, :cond_5

    .line 77
    .line 78
    aget p1, v3, v2

    .line 79
    .line 80
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:I

    .line 81
    .line 82
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 83
    .line 84
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:I

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    array-length p1, v1

    .line 88
    const/4 p2, 0x3

    .line 89
    const-string v0, "the selector color file you set for the argument: isb_tick_texts_color is in wrong format."

    .line 90
    .line 91
    if-ne p1, p2, :cond_a

    .line 92
    .line 93
    move p1, v2

    .line 94
    :goto_1
    array-length p2, v1

    .line 95
    if-ge p1, p2, :cond_9

    .line 96
    .line 97
    aget-object p2, v1, p1

    .line 98
    .line 99
    array-length v4, p2

    .line 100
    if-nez v4, :cond_6

    .line 101
    .line 102
    aget p2, v3, p1

    .line 103
    .line 104
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    aget p2, p2, v2

    .line 108
    .line 109
    const v4, 0x10100a1

    .line 110
    .line 111
    .line 112
    if-eq p2, v4, :cond_8

    .line 113
    .line 114
    const v4, 0x1010367

    .line 115
    .line 116
    .line 117
    if-ne p2, v4, :cond_7

    .line 118
    .line 119
    aget p2, v3, p1

    .line 120
    .line 121
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:I

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_8
    aget p2, v3, p1

    .line 131
    .line 132
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 133
    .line 134
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_9
    :goto_3
    return-void

    .line 138
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_b
    :goto_4
    return-void

    .line 145
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 146
    .line 147
    const-string p2, "Something wrong happened when parseing thumb selector color."

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
.end method

.method private P()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 8
    .line 9
    int-to-float v2, v1

    .line 10
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 11
    .line 12
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 16
    .line 17
    add-float/2addr v2, v3

    .line 18
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 22
    .line 23
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 24
    .line 25
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 26
    .line 27
    sub-float/2addr v3, v4

    .line 28
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    div-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    sub-float/2addr v4, v3

    .line 36
    mul-float/2addr v2, v4

    .line 37
    add-float/2addr v1, v2

    .line 38
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 39
    .line 40
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 41
    .line 42
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 43
    .line 44
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 45
    .line 46
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 47
    .line 48
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 49
    .line 50
    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 51
    .line 52
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 53
    .line 54
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 55
    .line 56
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m:I

    .line 57
    .line 58
    sub-int/2addr v0, v3

    .line 59
    int-to-float v0, v0

    .line 60
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 61
    .line 62
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 66
    .line 67
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 68
    .line 69
    int-to-float v1, v1

    .line 70
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o:I

    .line 73
    .line 74
    int-to-float v1, v1

    .line 75
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 76
    .line 77
    add-float/2addr v1, v2

    .line 78
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 79
    .line 80
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 81
    .line 82
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 83
    .line 84
    sub-float/2addr v1, v2

    .line 85
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 86
    .line 87
    mul-float/2addr v1, v2

    .line 88
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    div-float/2addr v1, v2

    .line 93
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 94
    .line 95
    int-to-float v2, v2

    .line 96
    add-float/2addr v1, v2

    .line 97
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 98
    .line 99
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 100
    .line 101
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 102
    .line 103
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 104
    .line 105
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 106
    .line 107
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 108
    .line 109
    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 110
    .line 111
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 112
    .line 113
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 114
    .line 115
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m:I

    .line 116
    .line 117
    sub-int/2addr v0, v3

    .line 118
    int-to-float v0, v0

    .line 119
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 120
    .line 121
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 122
    .line 123
    :goto_0
    return-void
.end method

.method private Q(FF)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/high16 v1, 0x40a00000    # 5.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h:F

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h:F

    .line 24
    .line 25
    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    .line 27
    mul-float v3, v1, v2

    .line 28
    .line 29
    sub-float/2addr v0, v3

    .line 30
    cmpl-float v0, p1, v0

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-ltz v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 37
    .line 38
    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m:I

    .line 39
    .line 40
    sub-int/2addr v0, v5

    .line 41
    int-to-float v0, v0

    .line 42
    mul-float/2addr v2, v1

    .line 43
    add-float/2addr v0, v2

    .line 44
    cmpg-float p1, p1, v0

    .line 45
    .line 46
    if-gtz p1, :cond_1

    .line 47
    .line 48
    move p1, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p1, v3

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 52
    .line 53
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 56
    .line 57
    sub-float v5, v0, v2

    .line 58
    .line 59
    sub-float/2addr v5, v1

    .line 60
    cmpl-float v5, p2, v5

    .line 61
    .line 62
    if-ltz v5, :cond_2

    .line 63
    .line 64
    add-float/2addr v0, v2

    .line 65
    add-float/2addr v0, v1

    .line 66
    cmpg-float p2, p2, v0

    .line 67
    .line 68
    if-gtz p2, :cond_2

    .line 69
    .line 70
    move p2, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move p2, v3

    .line 73
    :goto_1
    if-eqz p1, :cond_3

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    move v3, v4

    .line 78
    :cond_3
    return v3
.end method

.method private R(F)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->X(F)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    :goto_0
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 20
    .line 21
    int-to-float v2, v1

    .line 22
    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr v2, v3

    .line 25
    sub-float v2, v0, v2

    .line 26
    .line 27
    cmpg-float v2, v2, p1

    .line 28
    .line 29
    if-gtz v2, :cond_1

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    div-float/2addr v1, v3

    .line 33
    add-float/2addr v0, v1

    .line 34
    cmpg-float p1, p1, v0

    .line 35
    .line 36
    if-gtz p1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_1
    return p1
.end method

.method private S()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->H()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 21
    .line 22
    const-string v3, "j"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 35
    .line 36
    const/high16 v2, 0x40400000    # 3.0f

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E:I

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private U()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 8
    .line 9
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 10
    .line 11
    cmpl-float v0, v0, v3

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_2
    return v1
.end method

.method private V(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->k(Landroid/view/MotionEvent;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->o(F)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->n(F)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->X(F)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->Z()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private W()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->P()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->T()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 14
    .line 15
    const-string v3, "j"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 25
    .line 26
    add-float/2addr v0, v1

    .line 27
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-float/2addr v1, v2

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-float v1, v1

    .line 46
    add-float/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 48
    .line 49
    const/high16 v2, 0x40400000    # 3.0f

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    add-float/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 58
    .line 59
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:F

    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->I()V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    if-le v0, v1, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    aget v0, v0, v1

    .line 81
    .line 82
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 83
    .line 84
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 85
    .line 86
    :cond_2
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->X(F)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private X(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 11
    .line 12
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 13
    .line 14
    sub-float/2addr p1, v3

    .line 15
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    div-float/2addr p1, v3

    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float/2addr v3, p1

    .line 23
    mul-float/2addr v2, v3

    .line 24
    add-float/2addr v1, v2

    .line 25
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 26
    .line 27
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 32
    .line 33
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 37
    .line 38
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 39
    .line 40
    sub-float/2addr p1, v1

    .line 41
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 42
    .line 43
    mul-float/2addr p1, v1

    .line 44
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    div-float/2addr p1, v1

    .line 49
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 50
    .line 51
    int-to-float v1, v1

    .line 52
    add-float/2addr p1, v1

    .line 53
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/warkiz/widget/d;->g()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/warkiz/widget/d;->i()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/d;->p(F)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/d;->o(F)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/warkiz/widget/IndicatorSeekBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 2
    .line 3
    return p1
.end method

.method private a0()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/d;->l(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i:F

    .line 34
    .line 35
    const/high16 v4, -0x40800000    # -1.0f

    .line 36
    .line 37
    cmpl-float v3, v3, v4

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 47
    .line 48
    const-string v5, "window"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/view/WindowManager;

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    .line 64
    .line 65
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    iput v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i:F

    .line 69
    .line 70
    :cond_1
    div-int/lit8 v3, v0, 0x2

    .line 71
    .line 72
    int-to-float v3, v3

    .line 73
    add-float v4, v3, v2

    .line 74
    .line 75
    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 76
    .line 77
    int-to-float v6, v5

    .line 78
    cmpl-float v4, v4, v6

    .line 79
    .line 80
    if-lez v4, :cond_2

    .line 81
    .line 82
    sub-int v1, v5, v0

    .line 83
    .line 84
    int-to-float v0, v1

    .line 85
    sub-float/2addr v2, v0

    .line 86
    sub-float/2addr v2, v3

    .line 87
    float-to-int v0, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sub-float v0, v2, v3

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    cmpg-float v0, v0, v4

    .line 93
    .line 94
    if-gez v0, :cond_3

    .line 95
    .line 96
    sub-float/2addr v3, v2

    .line 97
    float-to-int v0, v3

    .line 98
    neg-int v0, v0

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sub-float/2addr v0, v3

    .line 105
    float-to-int v0, v0

    .line 106
    move v7, v1

    .line 107
    move v1, v0

    .line 108
    move v0, v7

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Lcom/warkiz/widget/d;->r(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/warkiz/widget/d;->q(I)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/warkiz/widget/IndicatorSeekBar;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/warkiz/widget/IndicatorSeekBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/warkiz/widget/IndicatorSeekBar;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/warkiz/widget/IndicatorSeekBar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->X(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/warkiz/widget/IndicatorSeekBar;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/warkiz/widget/IndicatorSeekBar;)Lcom/warkiz/widget/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 2
    .line 3
    return-object p0
.end method

.method private getAmplitude()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 4
    .line 5
    sub-float v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    cmpl-float v2, v2, v3

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    sub-float/2addr v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :goto_0
    return v0
.end method

.method private getClosestIndex()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    if-ge v1, v4, :cond_1

    .line 16
    .line 17
    aget v3, v3, v1

    .line 18
    .line 19
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 20
    .line 21
    sub-float/2addr v3, v4

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    cmpg-float v4, v3, v0

    .line 27
    .line 28
    if-gtz v4, :cond_0

    .line 29
    .line 30
    move v2, v1

    .line 31
    move v0, v3

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v2
.end method

.method private getLeftSideTickColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    .line 9
    .line 10
    return v0
.end method

.method private getLeftSideTickTextsColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 9
    .line 10
    return v0
.end method

.method private getLeftSideTrackSize()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 9
    .line 10
    return v0
.end method

.method private getRightSideTickColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 9
    .line 10
    return v0
.end method

.method private getRightSideTickTextsColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:I

    .line 9
    .line 10
    return v0
.end method

.method private getRightSideTrackSize()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 9
    .line 10
    return v0
.end method

.method private getThumbCenterX()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 13
    .line 14
    return v0
.end method

.method private getThumbPosOnTick()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private getThumbPosOnTickFloat()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method static synthetic h(Lcom/warkiz/widget/IndicatorSeekBar;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/warkiz/widget/IndicatorSeekBar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private k(Landroid/view/MotionEvent;)F
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 6
    .line 7
    int-to-float v2, v1

    .line 8
    cmpg-float v0, v0, v2

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    :goto_0
    int-to-float p1, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:I

    .line 19
    .line 20
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m:I

    .line 21
    .line 22
    sub-int v3, v1, v2

    .line 23
    .line 24
    int-to-float v3, v3

    .line 25
    cmpl-float v0, v0, v3

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    return p1
.end method

.method private l(Lcom/warkiz/widget/a;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/warkiz/widget/a;->b:F

    .line 2
    .line 3
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 4
    .line 5
    iget v0, p1, Lcom/warkiz/widget/a;->c:F

    .line 6
    .line 7
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 8
    .line 9
    iget v0, p1, Lcom/warkiz/widget/a;->d:F

    .line 10
    .line 11
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->e:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v:Z

    .line 16
    .line 17
    iget v0, p1, Lcom/warkiz/widget/a;->H:I

    .line 18
    .line 19
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->f:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z:Z

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->g:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->h:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:Z

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->j:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j:Z

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->i:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:Z

    .line 40
    .line 41
    iget v0, p1, Lcom/warkiz/widget/a;->k:I

    .line 42
    .line 43
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:I

    .line 44
    .line 45
    iget v0, p1, Lcom/warkiz/widget/a;->l:I

    .line 46
    .line 47
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q:I

    .line 48
    .line 49
    iget v0, p1, Lcom/warkiz/widget/a;->m:I

    .line 50
    .line 51
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:I

    .line 52
    .line 53
    iget v0, p1, Lcom/warkiz/widget/a;->n:I

    .line 54
    .line 55
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:I

    .line 56
    .line 57
    iget-object v0, p1, Lcom/warkiz/widget/a;->o:Landroid/view/View;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/warkiz/widget/a;->p:Landroid/view/View;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V:Landroid/view/View;

    .line 64
    .line 65
    iget v0, p1, Lcom/warkiz/widget/a;->q:I

    .line 66
    .line 67
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 68
    .line 69
    iget v0, p1, Lcom/warkiz/widget/a;->r:I

    .line 70
    .line 71
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:I

    .line 72
    .line 73
    iget v0, p1, Lcom/warkiz/widget/a;->s:I

    .line 74
    .line 75
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 76
    .line 77
    iget v0, p1, Lcom/warkiz/widget/a;->t:I

    .line 78
    .line 79
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 80
    .line 81
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->u:Z

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n0:Z

    .line 84
    .line 85
    iget v0, p1, Lcom/warkiz/widget/a;->x:I

    .line 86
    .line 87
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 88
    .line 89
    iget-object v0, p1, Lcom/warkiz/widget/a;->A:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    iget v0, p1, Lcom/warkiz/widget/a;->v:I

    .line 94
    .line 95
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:I

    .line 96
    .line 97
    iget-object v0, p1, Lcom/warkiz/widget/a;->z:Landroid/content/res/ColorStateList;

    .line 98
    .line 99
    iget v1, p1, Lcom/warkiz/widget/a;->y:I

    .line 100
    .line 101
    invoke-direct {p0, v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->L(Landroid/content/res/ColorStateList;I)V

    .line 102
    .line 103
    .line 104
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->w:Z

    .line 105
    .line 106
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 107
    .line 108
    iget v0, p1, Lcom/warkiz/widget/a;->I:I

    .line 109
    .line 110
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:I

    .line 111
    .line 112
    iget v0, p1, Lcom/warkiz/widget/a;->K:I

    .line 113
    .line 114
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 115
    .line 116
    iget-object v0, p1, Lcom/warkiz/widget/a;->L:Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->M:Z

    .line 121
    .line 122
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k0:Z

    .line 123
    .line 124
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->N:Z

    .line 125
    .line 126
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l0:Z

    .line 127
    .line 128
    iget-object v0, p1, Lcom/warkiz/widget/a;->O:Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    iget v1, p1, Lcom/warkiz/widget/a;->J:I

    .line 131
    .line 132
    invoke-direct {p0, v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->N(Landroid/content/res/ColorStateList;I)V

    .line 133
    .line 134
    .line 135
    iget-boolean v0, p1, Lcom/warkiz/widget/a;->B:Z

    .line 136
    .line 137
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 138
    .line 139
    iget v0, p1, Lcom/warkiz/widget/a;->D:I

    .line 140
    .line 141
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:I

    .line 142
    .line 143
    iget-object v0, p1, Lcom/warkiz/widget/a;->E:[Ljava/lang/String;

    .line 144
    .line 145
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:[Ljava/lang/CharSequence;

    .line 146
    .line 147
    iget-object v0, p1, Lcom/warkiz/widget/a;->F:Landroid/graphics/Typeface;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 150
    .line 151
    iget-object v0, p1, Lcom/warkiz/widget/a;->G:Landroid/content/res/ColorStateList;

    .line 152
    .line 153
    iget p1, p1, Lcom/warkiz/widget/a;->C:I

    .line 154
    .line 155
    invoke-direct {p0, v0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->O(Landroid/content/res/ColorStateList;I)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method private m()Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    if-lt v1, v2, :cond_2

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v3

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 23
    .line 24
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 25
    .line 26
    aget v4, v4, v1

    .line 27
    .line 28
    sub-float v4, v2, v4

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x2

    .line 35
    new-array v5, v5, [F

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    aput v6, v5, v3

    .line 39
    .line 40
    aput v4, v5, v0

    .line 41
    .line 42
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/warkiz/widget/IndicatorSeekBar$a;

    .line 50
    .line 51
    invoke-direct {v4, p0, v2, v1}, Lcom/warkiz/widget/IndicatorSeekBar$a;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;FI)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_2
    :goto_0
    return v3
.end method

.method private n(F)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 2
    .line 3
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 12
    .line 13
    int-to-float v2, v2

    .line 14
    sub-float/2addr p1, v2

    .line 15
    mul-float/2addr v1, p1

    .line 16
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 17
    .line 18
    div-float/2addr v1, p1

    .line 19
    add-float/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 21
    .line 22
    return v0
.end method

.method private o(F)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    sub-float/2addr p1, v0

    .line 14
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 15
    .line 16
    div-float/2addr p1, v0

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:F

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    mul-float/2addr v0, p1

    .line 25
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    add-float/2addr p1, v0

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 34
    .line 35
    sub-float/2addr v0, p1

    .line 36
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l:I

    .line 37
    .line 38
    mul-int/2addr p1, v1

    .line 39
    int-to-float p1, p1

    .line 40
    add-float/2addr v0, p1

    .line 41
    return v0

    .line 42
    :cond_1
    return p1
.end method

.method private p(Z)Lcom/warkiz/widget/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/warkiz/widget/f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/warkiz/widget/f;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/warkiz/widget/f;->b:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressFloat()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, v0, Lcom/warkiz/widget/f;->c:F

    .line 27
    .line 28
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 29
    .line 30
    iput-boolean p1, v0, Lcom/warkiz/widget/f;->d:Z

    .line 31
    .line 32
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    if-le p1, v0, :cond_3

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 50
    .line 51
    aget-object v0, v0, p1

    .line 52
    .line 53
    iput-object v0, v1, Lcom/warkiz/widget/f;->f:Ljava/lang/String;

    .line 54
    .line 55
    :cond_1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 60
    .line 61
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 62
    .line 63
    sub-int/2addr v1, p1

    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    iput v1, v0, Lcom/warkiz/widget/f;->e:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 70
    .line 71
    iput p1, v0, Lcom/warkiz/widget/f;->e:I

    .line 72
    .line 73
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:Lcom/warkiz/widget/f;

    .line 74
    .line 75
    return-object p1
.end method

.method private q()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    if-ltz v0, :cond_3

    .line 4
    .line 5
    const/16 v1, 0x32

    .line 6
    .line 7
    if-gt v0, v1, :cond_3

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-array v1, v0, [F

    .line 20
    .line 21
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:[F

    .line 22
    .line 23
    new-array v1, v0, [F

    .line 24
    .line 25
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:[F

    .line 26
    .line 27
    :cond_0
    new-array v0, v0, [F

    .line 28
    .line 29
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    if-ge v0, v2, :cond_2

    .line 36
    .line 37
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 38
    .line 39
    int-to-float v3, v0

    .line 40
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 41
    .line 42
    sub-float/2addr v4, v2

    .line 43
    mul-float/2addr v3, v4

    .line 44
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 45
    .line 46
    add-int/lit8 v5, v4, -0x1

    .line 47
    .line 48
    if-lez v5, :cond_1

    .line 49
    .line 50
    add-int/lit8 v4, v4, -0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v4, 0x1

    .line 54
    :goto_1
    int-to-float v4, v4

    .line 55
    div-float/2addr v3, v4

    .line 56
    add-float/2addr v2, v3

    .line 57
    aput v2, v1, v0

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "the Argument: TICK COUNT must be limited between (0-50), Now is "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method private r(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->K()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 34
    .line 35
    const/16 v2, 0xff

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Z

    .line 41
    .line 42
    const/high16 v2, 0x40000000    # 2.0f

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    int-to-float v3, v3

    .line 53
    div-float/2addr v3, v2

    .line 54
    sub-float/2addr v0, v3

    .line 55
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 58
    .line 59
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    int-to-float v4, v4

    .line 66
    div-float/2addr v4, v2

    .line 67
    sub-float/2addr v3, v4

    .line 68
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    int-to-float v3, v3

    .line 81
    div-float/2addr v3, v2

    .line 82
    sub-float/2addr v0, v3

    .line 83
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 84
    .line 85
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 86
    .line 87
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    int-to-float v4, v4

    .line 94
    div-float/2addr v4, v2

    .line 95
    sub-float/2addr v3, v4

    .line 96
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v0, "the format of the selector thumb drawable is wrong!"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_5
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Z

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 115
    .line 116
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 123
    .line 124
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:I

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    .line 128
    .line 129
    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 130
    .line 131
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 132
    .line 133
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Z

    .line 134
    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 141
    .line 142
    :goto_1
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 143
    .line 144
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void
.end method

.method private s(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 16
    .line 17
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->y(F)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:F

    .line 33
    .line 34
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method private setSeekListener(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lcom/warkiz/widget/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->U()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lcom/warkiz/widget/e;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->p(Z)Lcom/warkiz/widget/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/warkiz/widget/e;->c(Lcom/warkiz/widget/f;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private t(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    if-ge v1, v2, :cond_e

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l0:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 34
    .line 35
    aget v3, v3, v1

    .line 36
    .line 37
    cmpl-float v3, v0, v3

    .line 38
    .line 39
    if-ltz v3, :cond_1

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_1
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k0:Z

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    if-eqz v1, :cond_d

    .line 49
    .line 50
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 51
    .line 52
    array-length v3, v3

    .line 53
    sub-int/2addr v3, v4

    .line 54
    if-ne v1, v3, :cond_2

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v5, 0x2

    .line 63
    if-ne v1, v3, :cond_3

    .line 64
    .line 65
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 66
    .line 67
    if-le v3, v5, :cond_3

    .line 68
    .line 69
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z:Z

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_3
    int-to-float v3, v1

    .line 76
    cmpg-float v2, v3, v2

    .line 77
    .line 78
    if-gtz v2, :cond_4

    .line 79
    .line 80
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTickColor()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTickColor()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    .line 98
    .line 99
    :goto_1
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    const/high16 v6, 0x40000000    # 2.0f

    .line 102
    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 110
    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    :cond_5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->M()V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    if-eqz v3, :cond_8

    .line 119
    .line 120
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 121
    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    if-gtz v2, :cond_7

    .line 125
    .line 126
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 127
    .line 128
    aget v2, v2, v1

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    int-to-float v4, v4

    .line 135
    div-float/2addr v4, v6

    .line 136
    sub-float/2addr v2, v4

    .line 137
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 138
    .line 139
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 140
    .line 141
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    int-to-float v5, v5

    .line 148
    div-float/2addr v5, v6

    .line 149
    sub-float/2addr v4, v5

    .line 150
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 151
    .line 152
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :cond_7
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 158
    .line 159
    aget v2, v2, v1

    .line 160
    .line 161
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    int-to-float v3, v3

    .line 166
    div-float/2addr v3, v6

    .line 167
    sub-float/2addr v2, v3

    .line 168
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 169
    .line 170
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 171
    .line 172
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 173
    .line 174
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    int-to-float v5, v5

    .line 179
    div-float/2addr v5, v6

    .line 180
    sub-float/2addr v3, v5

    .line 181
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 182
    .line 183
    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string v0, "the format of the selector TickMarks drawable is wrong!"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_9
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:I

    .line 197
    .line 198
    if-ne v2, v4, :cond_a

    .line 199
    .line 200
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 201
    .line 202
    aget v2, v2, v1

    .line 203
    .line 204
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 205
    .line 206
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 207
    .line 208
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:F

    .line 209
    .line 210
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 211
    .line 212
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_a
    const/4 v3, 0x3

    .line 217
    if-ne v2, v3, :cond_c

    .line 218
    .line 219
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 220
    .line 221
    const/high16 v3, 0x3f800000    # 1.0f

    .line 222
    .line 223
    invoke-static {v2, v3}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 228
    .line 229
    aget v3, v3, v1

    .line 230
    .line 231
    cmpl-float v3, v0, v3

    .line 232
    .line 233
    if-ltz v3, :cond_b

    .line 234
    .line 235
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    :goto_2
    int-to-float v3, v3

    .line 240
    goto :goto_3

    .line 241
    :cond_b
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    goto :goto_2

    .line 246
    :goto_3
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 247
    .line 248
    aget v4, v4, v1

    .line 249
    .line 250
    int-to-float v2, v2

    .line 251
    sub-float v8, v4, v2

    .line 252
    .line 253
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 254
    .line 255
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 256
    .line 257
    div-float/2addr v3, v6

    .line 258
    sub-float v9, v5, v3

    .line 259
    .line 260
    add-float v10, v4, v2

    .line 261
    .line 262
    add-float v11, v5, v3

    .line 263
    .line 264
    iget-object v12, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 265
    .line 266
    move-object v7, p1

    .line 267
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_c
    if-ne v2, v5, :cond_d

    .line 272
    .line 273
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 274
    .line 275
    aget v2, v2, v1

    .line 276
    .line 277
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 278
    .line 279
    int-to-float v4, v3

    .line 280
    div-float/2addr v4, v6

    .line 281
    sub-float v8, v2, v4

    .line 282
    .line 283
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 284
    .line 285
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 286
    .line 287
    int-to-float v5, v3

    .line 288
    div-float/2addr v5, v6

    .line 289
    sub-float v9, v4, v5

    .line 290
    .line 291
    int-to-float v5, v3

    .line 292
    div-float/2addr v5, v6

    .line 293
    add-float v10, v2, v5

    .line 294
    .line 295
    int-to-float v2, v3

    .line 296
    div-float/2addr v2, v6

    .line 297
    add-float v11, v4, v2

    .line 298
    .line 299
    iget-object v12, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 300
    .line 301
    move-object v7, p1

    .line 302
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 303
    .line 304
    .line 305
    :cond_d
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_e
    :goto_5
    return-void
.end method

.method private u(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_7

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v1, v2, :cond_2

    .line 34
    .line 35
    int-to-float v2, v1

    .line 36
    cmpl-float v2, v2, v0

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 41
    .line 42
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:I

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    int-to-float v2, v1

    .line 49
    cmpg-float v2, v2, v0

    .line 50
    .line 51
    if-gez v2, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTickTextsColor()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTickTextsColor()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 77
    .line 78
    array-length v2, v2

    .line 79
    sub-int/2addr v2, v1

    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v2, v1

    .line 84
    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    .line 85
    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 89
    .line 90
    aget-object v4, v4, v2

    .line 91
    .line 92
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:[F

    .line 93
    .line 94
    aget v5, v5, v1

    .line 95
    .line 96
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:[F

    .line 97
    .line 98
    aget v2, v6, v2

    .line 99
    .line 100
    div-float/2addr v2, v3

    .line 101
    add-float/2addr v5, v2

    .line 102
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 103
    .line 104
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 105
    .line 106
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 111
    .line 112
    array-length v5, v4

    .line 113
    add-int/lit8 v5, v5, -0x1

    .line 114
    .line 115
    if-ne v1, v5, :cond_6

    .line 116
    .line 117
    aget-object v4, v4, v2

    .line 118
    .line 119
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:[F

    .line 120
    .line 121
    aget v5, v5, v1

    .line 122
    .line 123
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:[F

    .line 124
    .line 125
    aget v2, v6, v2

    .line 126
    .line 127
    div-float/2addr v2, v3

    .line 128
    sub-float/2addr v5, v2

    .line 129
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 130
    .line 131
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 132
    .line 133
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    aget-object v2, v4, v2

    .line 138
    .line 139
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:[F

    .line 140
    .line 141
    aget v3, v3, v1

    .line 142
    .line 143
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 144
    .line 145
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 146
    .line 147
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    .line 149
    .line 150
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_7
    return-void
.end method

.method private v(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    sub-int/2addr v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    const/4 v1, 0x0

    .line 16
    :goto_1
    if-ge v1, v0, :cond_5

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:[I

    .line 25
    .line 26
    sub-int v5, v0, v1

    .line 27
    .line 28
    sub-int/2addr v5, v2

    .line 29
    aget v4, v4, v5

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:[I

    .line 38
    .line 39
    aget v4, v4, v1

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    :goto_2
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v4, v1

    .line 49
    cmpg-float v4, v4, v3

    .line 50
    .line 51
    if-gez v4, :cond_2

    .line 52
    .line 53
    add-int/lit8 v5, v1, 0x1

    .line 54
    .line 55
    int-to-float v6, v5

    .line 56
    cmpg-float v3, v3, v6

    .line 57
    .line 58
    if-gez v3, :cond_2

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    int-to-float v6, v6

    .line 71
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 75
    .line 76
    aget v7, v4, v1

    .line 77
    .line 78
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 79
    .line 80
    iget v8, v4, Landroid/graphics/RectF;->top:F

    .line 81
    .line 82
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    .line 83
    .line 84
    iget-object v11, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 85
    .line 86
    move-object v6, p1

    .line 87
    move v9, v3

    .line 88
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    int-to-float v6, v6

    .line 98
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 102
    .line 103
    iget v8, v4, Landroid/graphics/RectF;->top:F

    .line 104
    .line 105
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 106
    .line 107
    aget v9, v6, v5

    .line 108
    .line 109
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    .line 110
    .line 111
    iget-object v11, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 112
    .line 113
    move-object v6, p1

    .line 114
    move v7, v3

    .line 115
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_2
    if-gez v4, :cond_3

    .line 120
    .line 121
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 122
    .line 123
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    int-to-float v4, v4

    .line 128
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    int-to-float v4, v4

    .line 139
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    .line 141
    .line 142
    :goto_3
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 143
    .line 144
    aget v5, v3, v1

    .line 145
    .line 146
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 147
    .line 148
    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 149
    .line 150
    add-int/lit8 v7, v1, 0x1

    .line 151
    .line 152
    aget v7, v3, v7

    .line 153
    .line 154
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    .line 155
    .line 156
    iget-object v9, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 157
    .line 158
    move-object v4, p1

    .line 159
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 167
    .line 168
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 174
    .line 175
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:I

    .line 176
    .line 177
    int-to-float v1, v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/graphics/RectF;

    .line 182
    .line 183
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 184
    .line 185
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 186
    .line 187
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 188
    .line 189
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 190
    .line 191
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 192
    .line 193
    move-object v1, p1

    .line 194
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 198
    .line 199
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:I

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 205
    .line 206
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 207
    .line 208
    int-to-float v1, v1

    .line 209
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/graphics/RectF;

    .line 213
    .line 214
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 215
    .line 216
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 217
    .line 218
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 219
    .line 220
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 221
    .line 222
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 223
    .line 224
    move-object v1, p1

    .line 225
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    return-void
.end method

.method private w(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/high16 v1, 0x41f00000    # 30.0f

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v1, v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 25
    .line 26
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->x(Landroid/graphics/drawable/Drawable;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-le p2, v0, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->x(Landroid/graphics/drawable/Drawable;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v0, p2

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_1
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    new-instance v0, Landroid/graphics/Canvas;

    .line 54
    .line 55
    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    .line 72
    .line 73
    return-object p2
.end method

.method public static with(Landroid/content/Context;)Lcom/warkiz/widget/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/warkiz/widget/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/warkiz/widget/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private x(Landroid/graphics/drawable/Drawable;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    mul-float/2addr p2, v1

    .line 13
    int-to-float p1, p1

    .line 14
    mul-float/2addr p2, p1

    .line 15
    int-to-float p1, v0

    .line 16
    div-float/2addr p2, p1

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private y(F)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    float-to-double v0, p1

    .line 6
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w:I

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lcom/warkiz/widget/c;->b(DI)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private z(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 6
    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->y(F)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    array-length v1, v0

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    aget-object p1, v0, p1

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    const-string p1, ""

    .line 25
    .line 26
    return-object p1
.end method


# virtual methods
.method Y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/warkiz/widget/IndicatorSeekBar$3;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/warkiz/widget/IndicatorSeekBar$3;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x12c

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public customSectionTrackColor(Lcom/warkiz/widget/b;)V
    .locals 4
    .param p1    # Lcom/warkiz/widget/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v2, v0, -0x1

    .line 9
    .line 10
    :cond_0
    new-array v0, v2, [I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:I

    .line 16
    .line 17
    aput v3, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p1, v0}, Lcom/warkiz/widget/b;->a([I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:Z

    .line 27
    .line 28
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:[I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public customTickTexts([Ljava/lang/String;)V
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    array-length v2, p1

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    aget-object v2, p1, v1

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string v2, ""

    .line 25
    .line 26
    :goto_1
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 31
    .line 32
    add-int/lit8 v3, v3, -0x1

    .line 33
    .line 34
    sub-int/2addr v3, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move v3, v1

    .line 37
    :goto_2
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 38
    .line 39
    aput-object v2, v4, v3

    .line 40
    .line 41
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:[F

    .line 59
    .line 60
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    int-to-float v4, v4

    .line 67
    aput v4, v2, v3

    .line 68
    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method public customTickTextsTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:Landroid/graphics/Typeface;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->S()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getIndicator()Lcom/warkiz/widget/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 2
    .line 3
    return-object v0
.end method

.method getIndicatorContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method getIndicatorTextString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "${TICK_TEXT}"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-le v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F:[Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aget-object v0, v0, v3

    .line 29
    .line 30
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v1, "${PROGRESS}"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:Ljava/lang/String;

    .line 48
    .line 49
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 50
    .line 51
    invoke-direct {p0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->y(F)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->y(F)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public getMax()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public getMin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public getOnSeekChangeListener()Lcom/warkiz/widget/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lcom/warkiz/widget/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized getProgressFloat()F
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 3
    .line 4
    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w:I

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public getTickCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 2
    .line 3
    return v0
.end method

.method public hideThumb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public hideThumbText(Z)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->v(Landroid/graphics/Canvas;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->t(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->u(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->r(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->s(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    add-float/2addr p2, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    add-float/2addr p2, v0

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 23
    .line 24
    const/high16 v1, 0x432a0000    # 170.0f

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E:I

    .line 35
    .line 36
    add-int/2addr p2, v0

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->F()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->W()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "isb_progress"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setProgress(F)V

    .line 14
    .line 15
    .line 16
    const-string v0, "isb_instance_state"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isb_instance_state"

    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "isb_progress"

    .line 16
    .line 17
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/warkiz/widget/IndicatorSeekBar$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/warkiz/widget/IndicatorSeekBar$1;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->V(Landroid/view/MotionEvent;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iput-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lcom/warkiz/widget/e;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {v0, p0}, Lcom/warkiz/widget/e;->b(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->m()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Lcom/warkiz/widget/d;

    .line 52
    .line 53
    if-eqz v0, :cond_8

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/warkiz/widget/d;->f()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->performClick()Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-direct {p0, v0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->Q(FF)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_8

    .line 75
    .line 76
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:Z

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->R(F)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Z

    .line 88
    .line 89
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lcom/warkiz/widget/e;

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-interface {v0, p0}, Lcom/warkiz/widget/e;->a(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->V(Landroid/view/MotionEvent;)V

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    return p1

    .line 105
    :cond_9
    :goto_1
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public setDecimalScale(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method setIndicatorStayAlways(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorTextFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->I()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized setMax(F)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 3
    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->E()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->q()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->W()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized setMin(F)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 3
    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->E()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->q()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->W()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public setOnSeekChangeListener(Lcom/warkiz/widget/e;)V
    .locals 0
    .param p1    # Lcom/warkiz/widget/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lcom/warkiz/widget/e;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 3
    .line 4
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g:F

    .line 5
    .line 6
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:F

    .line 7
    .line 8
    cmpg-float v1, p1, v0

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    :goto_0
    move p1, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s:F

    .line 15
    .line 16
    cmpl-float v1, p1, v0

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    if-le p1, v0, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A:[F

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    aget p1, p1, v0

    .line 39
    .line 40
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u:F

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->X(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method public setR2L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setThumbAdjustAuto(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 14
    .line 15
    const/high16 v0, 0x41f00000    # 30.0f

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 32
    .line 33
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 34
    .line 35
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:F

    .line 36
    .line 37
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    mul-float/2addr p1, v0

    .line 42
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->K()V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public declared-synchronized setTickCount(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x32

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->q()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->I()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->F()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->W()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->a0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "the Argument: TICK COUNT must be limited between (0-50), Now is "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1
.end method

.method public setTickMarksDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 14
    .line 15
    const/high16 v0, 0x41f00000    # 30.0f

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:F

    .line 32
    .line 33
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:F

    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    mul-float/2addr p1, v0

    .line 40
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->M()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setUserSeekAble(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public showBothEndsTickTextsOnly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D:Z

    .line 2
    .line 3
    return-void
.end method

.method public thumbColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:I

    .line 2
    .line 3
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public thumbColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->L(Landroid/content/res/ColorStateList;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public tickMarksColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    .line 2
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tickMarksColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:I

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->N(Landroid/content/res/ColorStateList;I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tickTextsColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:I

    .line 2
    .line 3
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 4
    .line 5
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public tickTextsColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->O(Landroid/content/res/ColorStateList;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
