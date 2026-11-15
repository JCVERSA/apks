.class public Lcom/mbridge/msdk/splash/view/MBSplashView;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# static fields
.field private static r:Ljava/lang/String; = "MBSplashView"


# instance fields
.field private a:I

.field private b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

.field private c:Lcom/mbridge/msdk/splash/view/a;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/RelativeLayout$LayoutParams;

.field private p:Lcom/mbridge/msdk/splash/signal/b;

.field private q:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    iput v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->a:I

    .line 16
    .line 17
    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 28
    .line 29
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 50
    .line 51
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 78
    .line 79
    const v3, 0x7ffffc17

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->a:I

    .line 86
    .line 87
    const/4 v3, 0x2

    .line 88
    if-ne v0, v3, :cond_9

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    .line 99
    .line 100
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    .line 114
    .line 115
    iget-boolean v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 120
    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 130
    .line 131
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 135
    .line 136
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 141
    .line 142
    if-eqz v3, :cond_7

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 151
    .line 152
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V

    .line 156
    .line 157
    .line 158
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 159
    .line 160
    if-eqz v0, :cond_e

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-nez v0, :cond_e

    .line 167
    .line 168
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->o:Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    .line 170
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 171
    .line 172
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 173
    .line 174
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iget v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    .line 178
    .line 179
    div-int/lit8 v3, v3, 0x4

    .line 180
    .line 181
    if-le v0, v3, :cond_8

    .line 182
    .line 183
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 184
    .line 185
    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0, v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 188
    .line 189
    .line 190
    move v0, v3

    .line 191
    goto :goto_1

    .line 192
    :cond_8
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 193
    .line 194
    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v3, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 197
    .line 198
    .line 199
    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    .line 201
    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    .line 206
    .line 207
    const/16 v0, 0xd

    .line 208
    .line 209
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 213
    .line 214
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iput v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    .line 228
    .line 229
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 230
    .line 231
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    .line 233
    .line 234
    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 235
    .line 236
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    .line 242
    .line 243
    iget-boolean v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 244
    .line 245
    if-eqz v3, :cond_b

    .line 246
    .line 247
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 248
    .line 249
    if-eqz v3, :cond_b

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    if-eqz v3, :cond_a

    .line 256
    .line 257
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 258
    .line 259
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    :cond_a
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 263
    .line 264
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_b
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 269
    .line 270
    if-eqz v3, :cond_c

    .line 271
    .line 272
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-nez v3, :cond_c

    .line 277
    .line 278
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 279
    .line 280
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    :cond_c
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V

    .line 284
    .line 285
    .line 286
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 287
    .line 288
    if-eqz v0, :cond_e

    .line 289
    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    if-nez v0, :cond_e

    .line 295
    .line 296
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->o:Landroid/widget/RelativeLayout$LayoutParams;

    .line 297
    .line 298
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 299
    .line 300
    iget v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    .line 301
    .line 302
    div-int/lit8 v3, v3, 0x4

    .line 303
    .line 304
    if-le v0, v3, :cond_d

    .line 305
    .line 306
    move v0, v3

    .line 307
    :cond_d
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 308
    .line 309
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 313
    .line 314
    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 315
    .line 316
    invoke-virtual {v3, v4, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 317
    .line 318
    .line 319
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 320
    .line 321
    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    .line 323
    .line 324
    const/16 v0, 0xc

    .line 325
    .line 326
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    .line 330
    .line 331
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .line 333
    .line 334
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    .line 335
    .line 336
    if-eqz v0, :cond_10

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-nez v0, :cond_f

    .line 343
    .line 344
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const/high16 v3, 0x42c80000    # 100.0f

    .line 351
    .line 352
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    const/high16 v4, 0x41f00000    # 30.0f

    .line 361
    .line 362
    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    .line 368
    .line 369
    const/16 v2, 0xa

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const/high16 v2, 0x41200000    # 10.0f

    .line 382
    .line 383
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 388
    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 398
    .line 399
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    .line 400
    .line 401
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .line 403
    .line 404
    goto :goto_4

    .line 405
    :cond_f
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    .line 406
    .line 407
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 408
    .line 409
    .line 410
    :cond_10
    :goto_4
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 11
    .line 12
    new-instance v1, Lcom/mbridge/msdk/splash/view/MBSplashView$a;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/view/MBSplashView$a;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static transInfoForMraid(Landroid/webkit/WebView;IIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "true"

    .line 4
    .line 5
    sget-object v2, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    .line 6
    .line 7
    const-string v7, "transInfoForMraid"

    .line 8
    .line 9
    invoke-static {v2, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 29
    .line 30
    new-instance v3, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "orientation"

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-ne v2, v5, :cond_0

    .line 39
    .line 40
    const-string v2, "landscape"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_0
    const/4 v5, 0x1

    .line 47
    if-ne v2, v5, :cond_1

    .line 48
    .line 49
    const-string v2, "portrait"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "undefined"

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v2, "locked"

    .line 58
    .line 59
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    int-to-float v8, v2

    .line 75
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-float v9, v2

    .line 88
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->v(Landroid/content/Context;)Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v4, "width"

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const-string v4, "height"

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    new-instance v12, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "placementType"

    .line 130
    .line 131
    const-string v4, "Interstitial"

    .line 132
    .line 133
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string v2, "state"

    .line 137
    .line 138
    const-string v4, "default"

    .line 139
    .line 140
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-string v2, "viewable"

    .line 144
    .line 145
    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v1, "currentAppOrientation"

    .line 149
    .line 150
    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move/from16 v2, p1

    .line 158
    .line 159
    int-to-float v13, v2

    .line 160
    move/from16 v2, p2

    .line 161
    .line 162
    int-to-float v14, v2

    .line 163
    move/from16 v2, p3

    .line 164
    .line 165
    int-to-float v15, v2

    .line 166
    move/from16 v2, p4

    .line 167
    .line 168
    int-to-float v6, v2

    .line 169
    move-object/from16 v2, p0

    .line 170
    .line 171
    move v3, v13

    .line 172
    move v4, v14

    .line 173
    move v5, v15

    .line 174
    move/from16 v16, v6

    .line 175
    .line 176
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    move-object/from16 v2, p0

    .line 184
    .line 185
    move v3, v13

    .line 186
    move v4, v14

    .line 187
    move v5, v15

    .line 188
    move/from16 v6, v16

    .line 189
    .line 190
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v0, v8, v9}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    int-to-float v2, v10

    .line 205
    int-to-float v3, v11

    .line 206
    invoke-virtual {v1, v0, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FF)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1, v0, v12}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_1
    sget-object v1, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v7, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    :goto_2
    return-void
.end method


# virtual methods
.method public changeCloseBtnState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public clearResState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->j:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    .line 7
    .line 8
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->finishAdSession()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 27
    .line 28
    const-string v1, "onSystemDestory"

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/splash/signal/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconVg()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAttach()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDynamicView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH5Ready()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public isImageReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->n:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setIsPause(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setIsPause(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public resetLoadState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    .line 5
    .line 6
    return-void
.end method

.method public setAllowClickSplash(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/splash/view/MBSplashView$b;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView$b;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView$c;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "closeButton"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDevContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public setDyCountDownListener(Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->q:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;

    .line 2
    .line 3
    return-void
.end method

.method public setDynamicView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setH5Ready(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIconVg(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->o:Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    .line 5
    return-void
.end method

.method public setImageReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setNotchPadding(IIII)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/16 v0, -0x3e7

    .line 19
    .line 20
    invoke-static {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/foundation/tools/b0;->a(IIIII)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget-object p3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-static {p1, p4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p4, "oncutoutfetched"

    .line 40
    .line 41
    invoke-virtual {p2, p3, p4, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setSplashNativeView(Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setSplashSignalCommunicationImpl(Lcom/mbridge/msdk/splash/signal/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setSplashWebView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->c:Lcom/mbridge/msdk/splash/view/a;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/splash/view/a;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/mbridge/msdk/splash/view/a;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->c:Lcom/mbridge/msdk/splash/view/a;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    sget-object v1, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_2
    return-void
.end method

.method public setVideoReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/signal/a;->a(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->c:Lcom/mbridge/msdk/splash/view/a;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/a;->a(Lcom/mbridge/msdk/splash/middle/a;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->c()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->clearResState()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public updateCountdown(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "countdown"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 37
    .line 38
    const-string v3, "updateCountdown"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->updateCountDown(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->q:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;->getCountDownValue(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method
