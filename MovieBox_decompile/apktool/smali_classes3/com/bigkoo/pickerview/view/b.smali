.class public Lcom/bigkoo/pickerview/view/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static y:Ljava/text/DateFormat;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/contrarywind/view/WheelView;

.field private c:Lcom/contrarywind/view/WheelView;

.field private d:Lcom/contrarywind/view/WheelView;

.field private e:Lcom/contrarywind/view/WheelView;

.field private f:Lcom/contrarywind/view/WheelView;

.field private g:Lcom/contrarywind/view/WheelView;

.field private h:I

.field private i:[Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:Lcom/contrarywind/view/WheelView$DividerType;

.field private w:Z

.field private x:Ls5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bigkoo/pickerview/view/b;->y:Ljava/text/DateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/view/View;[ZII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x76c

    .line 5
    .line 6
    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 7
    .line 8
    const/16 v0, 0x834

    .line 9
    .line 10
    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 18
    .line 19
    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 20
    .line 21
    const/16 v0, 0x1f

    .line 22
    .line 23
    iput v0, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 31
    .line 32
    iput p3, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 33
    .line 34
    iput p4, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/b;->N(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private B(IIIZIII)V
    .locals 3

    .line 1
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Lcom/bigkoo/pickerview/R$id;->year:I

    .line 4
    .line 5
    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p7

    .line 9
    check-cast p7, Lcom/contrarywind/view/WheelView;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 12
    .line 13
    new-instance v0, Lp5/a;

    .line 14
    .line 15
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 16
    .line 17
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 18
    .line 19
    invoke-static {v1, v2}, Lt5/a;->e(II)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 27
    .line 28
    .line 29
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 37
    .line 38
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 39
    .line 40
    sub-int v1, p1, v1

    .line 41
    .line 42
    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 43
    .line 44
    .line 45
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 46
    .line 47
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 48
    .line 49
    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 50
    .line 51
    .line 52
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 53
    .line 54
    sget v1, Lcom/bigkoo/pickerview/R$id;->month:I

    .line 55
    .line 56
    invoke-virtual {p7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p7

    .line 60
    check-cast p7, Lcom/contrarywind/view/WheelView;

    .line 61
    .line 62
    iput-object p7, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 63
    .line 64
    new-instance v1, Lp5/a;

    .line 65
    .line 66
    invoke-static {p1}, Lt5/a;->d(I)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 74
    .line 75
    .line 76
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 77
    .line 78
    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setConvertMonth(Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 88
    .line 89
    .line 90
    move-result p7

    .line 91
    if-eqz p7, :cond_1

    .line 92
    .line 93
    sub-int/2addr p7, v1

    .line 94
    if-gt p2, p7, :cond_0

    .line 95
    .line 96
    if-eqz p4, :cond_1

    .line 97
    .line 98
    :cond_0
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 99
    .line 100
    add-int/lit8 p7, p2, 0x1

    .line 101
    .line 102
    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 107
    .line 108
    invoke-virtual {p4, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 112
    .line 113
    iget p7, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 114
    .line 115
    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 116
    .line 117
    .line 118
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 119
    .line 120
    sget p7, Lcom/bigkoo/pickerview/R$id;->day:I

    .line 121
    .line 122
    invoke-virtual {p4, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    check-cast p4, Lcom/contrarywind/view/WheelView;

    .line 127
    .line 128
    iput-object p4, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 129
    .line 130
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 131
    .line 132
    .line 133
    move-result p4

    .line 134
    if-nez p4, :cond_2

    .line 135
    .line 136
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 137
    .line 138
    new-instance p7, Lp5/a;

    .line 139
    .line 140
    invoke-static {p1, p2}, Lt5/a;->h(II)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-static {p1}, Lt5/a;->b(I)Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p7, p1}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 156
    .line 157
    new-instance p4, Lp5/a;

    .line 158
    .line 159
    invoke-static {p1}, Lt5/a;->f(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-static {p1}, Lt5/a;->b(I)Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p4, p1}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 179
    .line 180
    sub-int/2addr p3, v1

    .line 181
    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 185
    .line 186
    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 192
    .line 193
    sget p2, Lcom/bigkoo/pickerview/R$id;->hour:I

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lcom/contrarywind/view/WheelView;

    .line 200
    .line 201
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 202
    .line 203
    new-instance p2, Lp5/b;

    .line 204
    .line 205
    const/16 p3, 0x17

    .line 206
    .line 207
    const/4 p4, 0x0

    .line 208
    invoke-direct {p2, p4, p3}, Lp5/b;-><init>(II)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 215
    .line 216
    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 220
    .line 221
    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 227
    .line 228
    sget p2, Lcom/bigkoo/pickerview/R$id;->min:I

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Lcom/contrarywind/view/WheelView;

    .line 235
    .line 236
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 237
    .line 238
    new-instance p2, Lp5/b;

    .line 239
    .line 240
    const/16 p3, 0x3b

    .line 241
    .line 242
    invoke-direct {p2, p4, p3}, Lp5/b;-><init>(II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 249
    .line 250
    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 254
    .line 255
    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 261
    .line 262
    sget p2, Lcom/bigkoo/pickerview/R$id;->second:I

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Lcom/contrarywind/view/WheelView;

    .line 269
    .line 270
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 271
    .line 272
    new-instance p2, Lp5/b;

    .line 273
    .line 274
    invoke-direct {p2, p4, p3}, Lp5/b;-><init>(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 281
    .line 282
    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 286
    .line 287
    iget p2, p0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 288
    .line 289
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 293
    .line 294
    new-instance p2, Lcom/bigkoo/pickerview/view/b$a;

    .line 295
    .line 296
    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/b$a;-><init>(Lcom/bigkoo/pickerview/view/b;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lp7/b;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 303
    .line 304
    new-instance p2, Lcom/bigkoo/pickerview/view/b$b;

    .line 305
    .line 306
    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/b$b;-><init>(Lcom/bigkoo/pickerview/view/b;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lp7/b;)V

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 313
    .line 314
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 318
    .line 319
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 320
    .line 321
    .line 322
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 323
    .line 324
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 328
    .line 329
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 333
    .line 334
    array-length p2, p1

    .line 335
    const/4 p3, 0x6

    .line 336
    if-ne p2, p3, :cond_9

    .line 337
    .line 338
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 339
    .line 340
    aget-boolean p1, p1, p4

    .line 341
    .line 342
    const/16 p3, 0x8

    .line 343
    .line 344
    if-eqz p1, :cond_3

    .line 345
    .line 346
    move p1, p4

    .line 347
    goto :goto_2

    .line 348
    :cond_3
    move p1, p3

    .line 349
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 353
    .line 354
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 355
    .line 356
    aget-boolean p2, p2, v1

    .line 357
    .line 358
    if-eqz p2, :cond_4

    .line 359
    .line 360
    move p2, p4

    .line 361
    goto :goto_3

    .line 362
    :cond_4
    move p2, p3

    .line 363
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 367
    .line 368
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 369
    .line 370
    const/4 p5, 0x2

    .line 371
    aget-boolean p2, p2, p5

    .line 372
    .line 373
    if-eqz p2, :cond_5

    .line 374
    .line 375
    move p2, p4

    .line 376
    goto :goto_4

    .line 377
    :cond_5
    move p2, p3

    .line 378
    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    .line 380
    .line 381
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 382
    .line 383
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 384
    .line 385
    const/4 p5, 0x3

    .line 386
    aget-boolean p2, p2, p5

    .line 387
    .line 388
    if-eqz p2, :cond_6

    .line 389
    .line 390
    move p2, p4

    .line 391
    goto :goto_5

    .line 392
    :cond_6
    move p2, p3

    .line 393
    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 397
    .line 398
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 399
    .line 400
    const/4 p5, 0x4

    .line 401
    aget-boolean p2, p2, p5

    .line 402
    .line 403
    if-eqz p2, :cond_7

    .line 404
    .line 405
    move p2, p4

    .line 406
    goto :goto_6

    .line 407
    :cond_7
    move p2, p3

    .line 408
    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 412
    .line 413
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 414
    .line 415
    const/4 p5, 0x5

    .line 416
    aget-boolean p2, p2, p5

    .line 417
    .line 418
    if-eqz p2, :cond_8

    .line 419
    .line 420
    goto :goto_7

    .line 421
    :cond_8
    move p4, p3

    .line 422
    :goto_7
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->r()V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 430
    .line 431
    const-string p2, "type[] length is not 6"

    .line 432
    .line 433
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw p1
.end method

.method private F(IIIILjava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x1f

    .line 18
    .line 19
    if-le p4, p1, :cond_0

    .line 20
    .line 21
    move p4, p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 23
    .line 24
    new-instance p2, Lp5/b;

    .line 25
    .line 26
    invoke-direct {p2, p3, p4}, Lp5/b;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    const/16 p1, 0x1e

    .line 44
    .line 45
    if-le p4, p1, :cond_2

    .line 46
    .line 47
    move p4, p1

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 49
    .line 50
    new-instance p2, Lp5/b;

    .line 51
    .line 52
    invoke-direct {p2, p3, p4}, Lp5/b;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    rem-int/lit8 p2, p1, 0x4

    .line 60
    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    rem-int/lit8 p2, p1, 0x64

    .line 64
    .line 65
    if-nez p2, :cond_5

    .line 66
    .line 67
    :cond_4
    rem-int/lit16 p1, p1, 0x190

    .line 68
    .line 69
    if-nez p1, :cond_7

    .line 70
    .line 71
    :cond_5
    const/16 p1, 0x1d

    .line 72
    .line 73
    if-le p4, p1, :cond_6

    .line 74
    .line 75
    move p4, p1

    .line 76
    :cond_6
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 77
    .line 78
    new-instance p2, Lp5/b;

    .line 79
    .line 80
    invoke-direct {p2, p3, p4}, Lp5/b;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    const/16 p1, 0x1c

    .line 88
    .line 89
    if-le p4, p1, :cond_8

    .line 90
    .line 91
    move p4, p1

    .line 92
    :cond_8
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 93
    .line 94
    new-instance p2, Lp5/b;

    .line 95
    .line 96
    invoke-direct {p2, p3, p4}, Lp5/b;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lo7/a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1}, Lo7/a;->a()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    add-int/lit8 p1, p1, -0x1

    .line 113
    .line 114
    if-le v0, p1, :cond_9

    .line 115
    .line 116
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lo7/a;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Lo7/a;->a()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    add-int/lit8 p1, p1, -0x1

    .line 127
    .line 128
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 131
    .line 132
    .line 133
    :cond_9
    return-void
.end method

.method private G(IIIIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    const-string v8, "10"

    .line 6
    .line 7
    const-string v9, "12"

    .line 8
    .line 9
    const-string v3, "1"

    .line 10
    .line 11
    const-string v4, "3"

    .line 12
    .line 13
    const-string v5, "5"

    .line 14
    .line 15
    const-string v6, "7"

    .line 16
    .line 17
    const-string v7, "8"

    .line 18
    .line 19
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "9"

    .line 24
    .line 25
    const-string v5, "11"

    .line 26
    .line 27
    const-string v6, "4"

    .line 28
    .line 29
    const-string v7, "6"

    .line 30
    .line 31
    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput v1, v0, Lcom/bigkoo/pickerview/view/b;->p:I

    .line 44
    .line 45
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 46
    .line 47
    sget v6, Lcom/bigkoo/pickerview/R$id;->year:I

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/contrarywind/view/WheelView;

    .line 54
    .line 55
    iput-object v5, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 56
    .line 57
    new-instance v6, Lp5/b;

    .line 58
    .line 59
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 60
    .line 61
    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 62
    .line 63
    invoke-direct {v6, v7, v8}, Lp5/b;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 67
    .line 68
    .line 69
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 70
    .line 71
    iget v6, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 72
    .line 73
    sub-int v6, v1, v6

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 79
    .line 80
    iget v6, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 83
    .line 84
    .line 85
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 86
    .line 87
    sget v6, Lcom/bigkoo/pickerview/R$id;->month:I

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/contrarywind/view/WheelView;

    .line 94
    .line 95
    iput-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    invoke-virtual {v5, v6}, Lcom/contrarywind/view/WheelView;->setConvertMonth(Z)V

    .line 99
    .line 100
    .line 101
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 102
    .line 103
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 104
    .line 105
    if-ne v5, v7, :cond_0

    .line 106
    .line 107
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 108
    .line 109
    new-instance v7, Lp5/b;

    .line 110
    .line 111
    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 112
    .line 113
    iget v9, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 114
    .line 115
    invoke-direct {v7, v8, v9}, Lp5/b;-><init>(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 119
    .line 120
    .line 121
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 122
    .line 123
    add-int/lit8 v7, v2, 0x1

    .line 124
    .line 125
    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 126
    .line 127
    sub-int/2addr v7, v8

    .line 128
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/16 v8, 0xc

    .line 133
    .line 134
    if-ne v1, v5, :cond_1

    .line 135
    .line 136
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 137
    .line 138
    new-instance v7, Lp5/b;

    .line 139
    .line 140
    iget v9, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 141
    .line 142
    invoke-direct {v7, v9, v8}, Lp5/b;-><init>(II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 146
    .line 147
    .line 148
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 149
    .line 150
    add-int/lit8 v7, v2, 0x1

    .line 151
    .line 152
    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 153
    .line 154
    sub-int/2addr v7, v8

    .line 155
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_1
    if-ne v1, v7, :cond_2

    .line 160
    .line 161
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 162
    .line 163
    new-instance v7, Lp5/b;

    .line 164
    .line 165
    iget v8, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 166
    .line 167
    invoke-direct {v7, v6, v8}, Lp5/b;-><init>(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 171
    .line 172
    .line 173
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 174
    .line 175
    invoke-virtual {v5, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_2
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 180
    .line 181
    new-instance v7, Lp5/b;

    .line 182
    .line 183
    invoke-direct {v7, v6, v8}, Lp5/b;-><init>(II)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 187
    .line 188
    .line 189
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 190
    .line 191
    invoke-virtual {v5, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 192
    .line 193
    .line 194
    :goto_0
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 195
    .line 196
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 197
    .line 198
    invoke-virtual {v5, v7}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 199
    .line 200
    .line 201
    iget-object v5, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 202
    .line 203
    sget v7, Lcom/bigkoo/pickerview/R$id;->day:I

    .line 204
    .line 205
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Lcom/contrarywind/view/WheelView;

    .line 210
    .line 211
    iput-object v5, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 212
    .line 213
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 214
    .line 215
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 216
    .line 217
    const/16 v8, 0x1c

    .line 218
    .line 219
    const/16 v9, 0x1d

    .line 220
    .line 221
    const/16 v10, 0x1e

    .line 222
    .line 223
    const/16 v11, 0x1f

    .line 224
    .line 225
    if-ne v5, v7, :cond_c

    .line 226
    .line 227
    iget v12, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 228
    .line 229
    iget v13, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 230
    .line 231
    if-ne v12, v13, :cond_c

    .line 232
    .line 233
    add-int/2addr v2, v6

    .line 234
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_4

    .line 243
    .line 244
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 245
    .line 246
    if-le v1, v11, :cond_3

    .line 247
    .line 248
    iput v11, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 249
    .line 250
    :cond_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 251
    .line 252
    new-instance v2, Lp5/b;

    .line 253
    .line 254
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 255
    .line 256
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 257
    .line 258
    invoke-direct {v2, v5, v7}, Lp5/b;-><init>(II)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_6

    .line 274
    .line 275
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 276
    .line 277
    if-le v1, v10, :cond_5

    .line 278
    .line 279
    iput v10, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 280
    .line 281
    :cond_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 282
    .line 283
    new-instance v2, Lp5/b;

    .line 284
    .line 285
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 286
    .line 287
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 288
    .line 289
    invoke-direct {v2, v5, v7}, Lp5/b;-><init>(II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_6
    rem-int/lit8 v2, v1, 0x4

    .line 297
    .line 298
    if-nez v2, :cond_7

    .line 299
    .line 300
    rem-int/lit8 v2, v1, 0x64

    .line 301
    .line 302
    if-nez v2, :cond_8

    .line 303
    .line 304
    :cond_7
    rem-int/lit16 v1, v1, 0x190

    .line 305
    .line 306
    if-nez v1, :cond_a

    .line 307
    .line 308
    :cond_8
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 309
    .line 310
    if-le v1, v9, :cond_9

    .line 311
    .line 312
    iput v9, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 313
    .line 314
    :cond_9
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 315
    .line 316
    new-instance v2, Lp5/b;

    .line 317
    .line 318
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 319
    .line 320
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 321
    .line 322
    invoke-direct {v2, v5, v7}, Lp5/b;-><init>(II)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_a
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 330
    .line 331
    if-le v1, v8, :cond_b

    .line 332
    .line 333
    iput v8, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 334
    .line 335
    :cond_b
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 336
    .line 337
    new-instance v2, Lp5/b;

    .line 338
    .line 339
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 340
    .line 341
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 342
    .line 343
    invoke-direct {v2, v5, v7}, Lp5/b;-><init>(II)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 347
    .line 348
    .line 349
    :goto_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 350
    .line 351
    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 352
    .line 353
    sub-int v2, p3, v2

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_5

    .line 359
    .line 360
    :cond_c
    if-ne v1, v5, :cond_12

    .line 361
    .line 362
    add-int/lit8 v5, v2, 0x1

    .line 363
    .line 364
    iget v12, v0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 365
    .line 366
    if-ne v5, v12, :cond_12

    .line 367
    .line 368
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_d

    .line 377
    .line 378
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 379
    .line 380
    new-instance v2, Lp5/b;

    .line 381
    .line 382
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 383
    .line 384
    invoke-direct {v2, v5, v11}, Lp5/b;-><init>(II)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 388
    .line 389
    .line 390
    goto :goto_2

    .line 391
    :cond_d
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_e

    .line 400
    .line 401
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 402
    .line 403
    new-instance v2, Lp5/b;

    .line 404
    .line 405
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 406
    .line 407
    invoke-direct {v2, v5, v10}, Lp5/b;-><init>(II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 411
    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_e
    rem-int/lit8 v2, v1, 0x4

    .line 415
    .line 416
    if-nez v2, :cond_f

    .line 417
    .line 418
    rem-int/lit8 v2, v1, 0x64

    .line 419
    .line 420
    if-nez v2, :cond_10

    .line 421
    .line 422
    :cond_f
    rem-int/lit16 v1, v1, 0x190

    .line 423
    .line 424
    if-nez v1, :cond_11

    .line 425
    .line 426
    :cond_10
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 427
    .line 428
    new-instance v2, Lp5/b;

    .line 429
    .line 430
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 431
    .line 432
    invoke-direct {v2, v5, v9}, Lp5/b;-><init>(II)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 436
    .line 437
    .line 438
    goto :goto_2

    .line 439
    :cond_11
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 440
    .line 441
    new-instance v2, Lp5/b;

    .line 442
    .line 443
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 444
    .line 445
    invoke-direct {v2, v5, v8}, Lp5/b;-><init>(II)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 449
    .line 450
    .line 451
    :goto_2
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 452
    .line 453
    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 454
    .line 455
    sub-int v2, p3, v2

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_5

    .line 461
    .line 462
    :cond_12
    if-ne v1, v7, :cond_1c

    .line 463
    .line 464
    add-int/lit8 v5, v2, 0x1

    .line 465
    .line 466
    iget v7, v0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 467
    .line 468
    if-ne v5, v7, :cond_1c

    .line 469
    .line 470
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_14

    .line 479
    .line 480
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 481
    .line 482
    if-le v1, v11, :cond_13

    .line 483
    .line 484
    iput v11, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 485
    .line 486
    :cond_13
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 487
    .line 488
    new-instance v2, Lp5/b;

    .line 489
    .line 490
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 491
    .line 492
    invoke-direct {v2, v6, v5}, Lp5/b;-><init>(II)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 496
    .line 497
    .line 498
    goto :goto_3

    .line 499
    :cond_14
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eqz v2, :cond_16

    .line 508
    .line 509
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 510
    .line 511
    if-le v1, v10, :cond_15

    .line 512
    .line 513
    iput v10, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 514
    .line 515
    :cond_15
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 516
    .line 517
    new-instance v2, Lp5/b;

    .line 518
    .line 519
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 520
    .line 521
    invoke-direct {v2, v6, v5}, Lp5/b;-><init>(II)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 525
    .line 526
    .line 527
    goto :goto_3

    .line 528
    :cond_16
    rem-int/lit8 v2, v1, 0x4

    .line 529
    .line 530
    if-nez v2, :cond_17

    .line 531
    .line 532
    rem-int/lit8 v2, v1, 0x64

    .line 533
    .line 534
    if-nez v2, :cond_18

    .line 535
    .line 536
    :cond_17
    rem-int/lit16 v1, v1, 0x190

    .line 537
    .line 538
    if-nez v1, :cond_1a

    .line 539
    .line 540
    :cond_18
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 541
    .line 542
    if-le v1, v9, :cond_19

    .line 543
    .line 544
    iput v9, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 545
    .line 546
    :cond_19
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 547
    .line 548
    new-instance v2, Lp5/b;

    .line 549
    .line 550
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 551
    .line 552
    invoke-direct {v2, v6, v5}, Lp5/b;-><init>(II)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 556
    .line 557
    .line 558
    goto :goto_3

    .line 559
    :cond_1a
    iget v1, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 560
    .line 561
    if-le v1, v8, :cond_1b

    .line 562
    .line 563
    iput v8, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 564
    .line 565
    :cond_1b
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 566
    .line 567
    new-instance v2, Lp5/b;

    .line 568
    .line 569
    iget v5, v0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 570
    .line 571
    invoke-direct {v2, v6, v5}, Lp5/b;-><init>(II)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 575
    .line 576
    .line 577
    :goto_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 578
    .line 579
    add-int/lit8 v2, p3, -0x1

    .line 580
    .line 581
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 582
    .line 583
    .line 584
    goto :goto_5

    .line 585
    :cond_1c
    add-int/2addr v2, v6

    .line 586
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v5

    .line 594
    if-eqz v5, :cond_1d

    .line 595
    .line 596
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 597
    .line 598
    new-instance v2, Lp5/b;

    .line 599
    .line 600
    invoke-direct {v2, v6, v11}, Lp5/b;-><init>(II)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 604
    .line 605
    .line 606
    goto :goto_4

    .line 607
    :cond_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_1e

    .line 616
    .line 617
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 618
    .line 619
    new-instance v2, Lp5/b;

    .line 620
    .line 621
    invoke-direct {v2, v6, v10}, Lp5/b;-><init>(II)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 625
    .line 626
    .line 627
    goto :goto_4

    .line 628
    :cond_1e
    rem-int/lit8 v2, v1, 0x4

    .line 629
    .line 630
    if-nez v2, :cond_1f

    .line 631
    .line 632
    rem-int/lit8 v2, v1, 0x64

    .line 633
    .line 634
    if-nez v2, :cond_20

    .line 635
    .line 636
    :cond_1f
    rem-int/lit16 v1, v1, 0x190

    .line 637
    .line 638
    if-nez v1, :cond_21

    .line 639
    .line 640
    :cond_20
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 641
    .line 642
    new-instance v2, Lp5/b;

    .line 643
    .line 644
    invoke-direct {v2, v6, v9}, Lp5/b;-><init>(II)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 648
    .line 649
    .line 650
    goto :goto_4

    .line 651
    :cond_21
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 652
    .line 653
    new-instance v2, Lp5/b;

    .line 654
    .line 655
    invoke-direct {v2, v6, v8}, Lp5/b;-><init>(II)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 659
    .line 660
    .line 661
    :goto_4
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 662
    .line 663
    add-int/lit8 v2, p3, -0x1

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 666
    .line 667
    .line 668
    :goto_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 669
    .line 670
    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 671
    .line 672
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 673
    .line 674
    .line 675
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 676
    .line 677
    sget v2, Lcom/bigkoo/pickerview/R$id;->hour:I

    .line 678
    .line 679
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    check-cast v1, Lcom/contrarywind/view/WheelView;

    .line 684
    .line 685
    iput-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 686
    .line 687
    new-instance v2, Lp5/b;

    .line 688
    .line 689
    const/16 v5, 0x17

    .line 690
    .line 691
    const/4 v7, 0x0

    .line 692
    invoke-direct {v2, v7, v5}, Lp5/b;-><init>(II)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 696
    .line 697
    .line 698
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 699
    .line 700
    move/from16 v2, p4

    .line 701
    .line 702
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 703
    .line 704
    .line 705
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 706
    .line 707
    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 708
    .line 709
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 710
    .line 711
    .line 712
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 713
    .line 714
    sget v2, Lcom/bigkoo/pickerview/R$id;->min:I

    .line 715
    .line 716
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    check-cast v1, Lcom/contrarywind/view/WheelView;

    .line 721
    .line 722
    iput-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 723
    .line 724
    new-instance v2, Lp5/b;

    .line 725
    .line 726
    const/16 v5, 0x3b

    .line 727
    .line 728
    invoke-direct {v2, v7, v5}, Lp5/b;-><init>(II)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 732
    .line 733
    .line 734
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 735
    .line 736
    move/from16 v2, p5

    .line 737
    .line 738
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 739
    .line 740
    .line 741
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 742
    .line 743
    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 744
    .line 745
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 746
    .line 747
    .line 748
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 749
    .line 750
    sget v2, Lcom/bigkoo/pickerview/R$id;->second:I

    .line 751
    .line 752
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    check-cast v1, Lcom/contrarywind/view/WheelView;

    .line 757
    .line 758
    iput-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 759
    .line 760
    new-instance v2, Lp5/b;

    .line 761
    .line 762
    invoke-direct {v2, v7, v5}, Lp5/b;-><init>(II)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 766
    .line 767
    .line 768
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 769
    .line 770
    move/from16 v2, p6

    .line 771
    .line 772
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 776
    .line 777
    iget v2, v0, Lcom/bigkoo/pickerview/view/b;->h:I

    .line 778
    .line 779
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 780
    .line 781
    .line 782
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 783
    .line 784
    new-instance v2, Lcom/bigkoo/pickerview/view/b$c;

    .line 785
    .line 786
    invoke-direct {v2, p0, v3, v4}, Lcom/bigkoo/pickerview/view/b$c;-><init>(Lcom/bigkoo/pickerview/view/b;Ljava/util/List;Ljava/util/List;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lp7/b;)V

    .line 790
    .line 791
    .line 792
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 793
    .line 794
    new-instance v2, Lcom/bigkoo/pickerview/view/b$d;

    .line 795
    .line 796
    invoke-direct {v2, p0, v3, v4}, Lcom/bigkoo/pickerview/view/b$d;-><init>(Lcom/bigkoo/pickerview/view/b;Ljava/util/List;Ljava/util/List;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lp7/b;)V

    .line 800
    .line 801
    .line 802
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 803
    .line 804
    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 805
    .line 806
    .line 807
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 808
    .line 809
    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 810
    .line 811
    .line 812
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 813
    .line 814
    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 815
    .line 816
    .line 817
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 818
    .line 819
    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/b;->q(Lcom/contrarywind/view/WheelView;)V

    .line 820
    .line 821
    .line 822
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 823
    .line 824
    array-length v2, v1

    .line 825
    const/4 v3, 0x6

    .line 826
    if-ne v2, v3, :cond_28

    .line 827
    .line 828
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 829
    .line 830
    aget-boolean v1, v1, v7

    .line 831
    .line 832
    const/16 v3, 0x8

    .line 833
    .line 834
    if-eqz v1, :cond_22

    .line 835
    .line 836
    move v1, v7

    .line 837
    goto :goto_6

    .line 838
    :cond_22
    move v1, v3

    .line 839
    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    .line 841
    .line 842
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 843
    .line 844
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 845
    .line 846
    aget-boolean v2, v2, v6

    .line 847
    .line 848
    if-eqz v2, :cond_23

    .line 849
    .line 850
    move v2, v7

    .line 851
    goto :goto_7

    .line 852
    :cond_23
    move v2, v3

    .line 853
    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 854
    .line 855
    .line 856
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 857
    .line 858
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 859
    .line 860
    const/4 v4, 0x2

    .line 861
    aget-boolean v2, v2, v4

    .line 862
    .line 863
    if-eqz v2, :cond_24

    .line 864
    .line 865
    move v2, v7

    .line 866
    goto :goto_8

    .line 867
    :cond_24
    move v2, v3

    .line 868
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 869
    .line 870
    .line 871
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 872
    .line 873
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 874
    .line 875
    const/4 v4, 0x3

    .line 876
    aget-boolean v2, v2, v4

    .line 877
    .line 878
    if-eqz v2, :cond_25

    .line 879
    .line 880
    move v2, v7

    .line 881
    goto :goto_9

    .line 882
    :cond_25
    move v2, v3

    .line 883
    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 884
    .line 885
    .line 886
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 887
    .line 888
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 889
    .line 890
    const/4 v4, 0x4

    .line 891
    aget-boolean v2, v2, v4

    .line 892
    .line 893
    if-eqz v2, :cond_26

    .line 894
    .line 895
    move v2, v7

    .line 896
    goto :goto_a

    .line 897
    :cond_26
    move v2, v3

    .line 898
    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    .line 900
    .line 901
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 902
    .line 903
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b;->i:[Z

    .line 904
    .line 905
    const/4 v4, 0x5

    .line 906
    aget-boolean v2, v2, v4

    .line 907
    .line 908
    if-eqz v2, :cond_27

    .line 909
    .line 910
    goto :goto_b

    .line 911
    :cond_27
    move v7, v3

    .line 912
    :goto_b
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 913
    .line 914
    .line 915
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->r()V

    .line 916
    .line 917
    .line 918
    return-void

    .line 919
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 920
    .line 921
    const-string v2, "type[] length is not 6"

    .line 922
    .line 923
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    throw v1
.end method

.method private I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 9
    .line 10
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 16
    .line 17
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 23
    .line 24
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 30
    .line 31
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 37
    .line 38
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 9
    .line 10
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 16
    .line 17
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 23
    .line 24
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 30
    .line 31
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 37
    .line 38
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method static bridge synthetic a(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic d(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic e(Lcom/bigkoo/pickerview/view/b;)Ls5/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->x:Ls5/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic g(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic h(Lcom/bigkoo/pickerview/view/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic k(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic l(Lcom/bigkoo/pickerview/view/b;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->p:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/b;->F(IIIILjava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-static {v1}, Lt5/a;->g(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_0
    add-int/2addr v2, v3

    .line 30
    :goto_1
    move v5, v4

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v3

    .line 39
    invoke-static {v1}, Lt5/a;->g(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sub-int/2addr v2, v5

    .line 44
    if-gtz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/2addr v2, v3

    .line 60
    invoke-static {v1}, Lt5/a;->g(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    sub-int/2addr v2, v5

    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    move v5, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    iget-object v6, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    add-int/2addr v6, v3

    .line 89
    invoke-static {v1, v2, v6, v5}, Lt5/b;->b(IIIZ)[I

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget v2, v1, v4

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, "-"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    aget v3, v1, v3

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/4 v2, 0x2

    .line 112
    aget v1, v1, v2

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, " "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ":"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0
.end method

.method private q(Lcom/contrarywind/view/WheelView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->x:Ls5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bigkoo/pickerview/view/b$e;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/b$e;-><init>(Lcom/bigkoo/pickerview/view/b;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lp7/b;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 10
    .line 11
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 18
    .line 19
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 26
    .line 27
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 34
    .line 35
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 42
    .line 43
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->q:I

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 9
    .line 10
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 16
    .line 17
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 23
    .line 24
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 30
    .line 31
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 37
    .line 38
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 9
    .line 10
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 16
    .line 17
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 23
    .line 24
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 30
    .line 31
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 37
    .line 38
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->u:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->z()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public D(IIIIII)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p2, v0

    .line 7
    invoke-static {p1, p2, p3}, Lt5/b;->d(III)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    aget v2, p1, p2

    .line 13
    .line 14
    aget p3, p1, v0

    .line 15
    .line 16
    add-int/lit8 v3, p3, -0x1

    .line 17
    .line 18
    const/4 p3, 0x2

    .line 19
    aget v4, p1, p3

    .line 20
    .line 21
    const/4 p3, 0x3

    .line 22
    aget p1, p1, p3

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    move v5, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v5, p2

    .line 29
    :goto_0
    move-object v1, p0

    .line 30
    move v6, p4

    .line 31
    move v7, p5

    .line 32
    move v8, p6

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/bigkoo/pickerview/view/b;->B(IIIZIII)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/b;->G(IIIIII)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public E(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v2

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 22
    .line 23
    if-le p1, v0, :cond_0

    .line 24
    .line 25
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 26
    .line 27
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 28
    .line 29
    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    if-ne p1, v0, :cond_6

    .line 34
    .line 35
    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 36
    .line 37
    if-le v1, v0, :cond_1

    .line 38
    .line 39
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 40
    .line 41
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 42
    .line 43
    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_1
    if-ne v1, v0, :cond_6

    .line 48
    .line 49
    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 50
    .line 51
    if-le p2, v0, :cond_6

    .line 52
    .line 53
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 54
    .line 55
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 56
    .line 57
    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-eqz p1, :cond_5

    .line 61
    .line 62
    if-nez p2, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v2

    .line 73
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 78
    .line 79
    if-ge p2, v0, :cond_3

    .line 80
    .line 81
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 82
    .line 83
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 84
    .line 85
    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    if-ne p2, v0, :cond_6

    .line 89
    .line 90
    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 91
    .line 92
    if-ge v1, v0, :cond_4

    .line 93
    .line 94
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 95
    .line 96
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 97
    .line 98
    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    if-ne v1, v0, :cond_6

    .line 102
    .line 103
    iget v0, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 104
    .line 105
    if-ge p1, v0, :cond_6

    .line 106
    .line 107
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 108
    .line 109
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 110
    .line 111
    iput p2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    if-eqz p1, :cond_6

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iput v3, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iput v3, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    add-int/2addr v3, v2

    .line 135
    iput v3, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 136
    .line 137
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/2addr v1, v2

    .line 142
    iput v1, p0, Lcom/bigkoo/pickerview/view/b;->m:I

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 149
    .line 150
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->o:I

    .line 155
    .line 156
    :cond_6
    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->s:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->I()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public L(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->r:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->K()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public M(IIIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 22
    .line 23
    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 27
    .line 28
    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public N(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/bigkoo/pickerview/view/b;->p:I

    .line 16
    .line 17
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 18
    .line 19
    const-string v3, " "

    .line 20
    .line 21
    const-string v4, ":"

    .line 22
    .line 23
    const-string v5, "-"

    .line 24
    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 45
    .line 46
    add-int/2addr v1, v2

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 60
    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->n:I

    .line 75
    .line 76
    add-int/2addr v1, v2

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 125
    .line 126
    add-int/2addr v1, v2

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->l:I

    .line 140
    .line 141
    add-int/2addr v1, v2

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    iget v2, p0, Lcom/bigkoo/pickerview/view/b;->j:I

    .line 203
    .line 204
    add-int/2addr v1, v2

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->t:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->t()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b;->v:Lcom/contrarywind/view/WheelView$DividerType;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/b;->v()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bigkoo/pickerview/view/b;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/b;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->b:Lcom/contrarywind/view/WheelView;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/bigkoo/pickerview/R$string;->pickerview_year:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->c:Lcom/contrarywind/view/WheelView;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    sget v0, Lcom/bigkoo/pickerview/R$string;->pickerview_month:I

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    if-eqz p3, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->d:Lcom/contrarywind/view/WheelView;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_day:I

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    if-eqz p4, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 84
    .line 85
    invoke-virtual {p1, p4}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->e:Lcom/contrarywind/view/WheelView;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_hours:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_3
    if-eqz p5, :cond_5

    .line 107
    .line 108
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 109
    .line 110
    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->f:Lcom/contrarywind/view/WheelView;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_minutes:I

    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_4
    if-eqz p6, :cond_6

    .line 132
    .line 133
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 134
    .line 135
    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b;->g:Lcom/contrarywind/view/WheelView;

    .line 140
    .line 141
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/b;->a:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_seconds:I

    .line 148
    .line 149
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_5
    return-void
.end method
