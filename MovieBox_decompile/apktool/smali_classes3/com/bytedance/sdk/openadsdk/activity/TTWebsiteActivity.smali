.class public Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "source.java"


# instance fields
.field private Sj:Ljava/lang/String;

.field private TKC:Landroid/webkit/WebView;

.field private sP:Lcom/bytedance/sdk/openadsdk/common/dNu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Lcom/bytedance/sdk/openadsdk/common/dNu;)Lcom/bytedance/sdk/openadsdk/common/dNu;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->sP:Lcom/bytedance/sdk/openadsdk/common/dNu;

    return-object p1
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "open_policy"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->TKC()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dLt()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_extra_meta"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v0, "_extra_glo_d"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IPx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->TKC()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_privacy_url"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->EjP()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_privacy_title"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 10
    invoke-static {p0, p2, p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z

    :cond_1
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Lcom/bytedance/sdk/openadsdk/common/dNu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->sP:Lcom/bytedance/sdk/openadsdk/common/dNu;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "_extra_meta"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "_extra_glo_d"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "_privacy_url"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "_privacy_title"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 74
    .line 75
    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v7, 0x23

    .line 81
    .line 82
    const/4 v8, 0x1

    .line 83
    if-lt v6, v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {v5, v8}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 86
    .line 87
    .line 88
    :cond_2
    const/4 v6, -0x1

    .line 89
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    .line 91
    .line 92
    const v7, 0x1f00001e

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    .line 100
    .line 101
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 110
    .line 111
    .line 112
    const/high16 v7, 0x40a00000    # 5.0f

    .line 113
    .line 114
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const/high16 v9, 0x41000000    # 8.0f

    .line 119
    .line 120
    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    const/high16 v10, 0x41200000    # 10.0f

    .line 125
    .line 126
    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    const/high16 v11, 0x41400000    # 12.0f

    .line 131
    .line 132
    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    const/high16 v12, 0x41600000    # 14.0f

    .line 137
    .line 138
    invoke-static {v1, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    const/high16 v13, 0x41a00000    # 20.0f

    .line 143
    .line 144
    invoke-static {v1, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    const/high16 v14, 0x41c00000    # 24.0f

    .line 149
    .line 150
    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    const/high16 v15, 0x42200000    # 40.0f

    .line 155
    .line 156
    invoke-static {v1, v15}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    const/high16 v8, 0x42300000    # 44.0f

    .line 161
    .line 162
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    const/high16 v6, 0x433f0000    # 191.0f

    .line 167
    .line 168
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    move-object/from16 v16, v2

    .line 173
    .line 174
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    .line 175
    .line 176
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v17, v3

    .line 180
    .line 181
    const/16 v3, 0xf

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setGravity(I)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    move-object/from16 v18, v0

    .line 189
    .line 190
    const/4 v0, -0x1

    .line 191
    invoke-direct {v3, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 198
    .line 199
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    const v3, 0x1f000018

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 206
    .line 207
    .line 208
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 209
    .line 210
    invoke-direct {v3, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    const/4 v3, 0x1

    .line 220
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v12, v11, v12, v11}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 227
    .line 228
    .line 229
    const-string v3, "tt_ad_arrow_backward"

    .line 230
    .line 231
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .line 237
    .line 238
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 239
    .line 240
    invoke-direct {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v19, v4

    .line 244
    .line 245
    const v4, 0x1f000014

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 249
    .line 250
    .line 251
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    .line 253
    invoke-direct {v4, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v20, v5

    .line 257
    .line 258
    const/16 v5, 0x11

    .line 259
    .line 260
    move-object/from16 v21, v0

    .line 261
    .line 262
    const v0, 0x1f000018

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    const/4 v0, 0x1

    .line 272
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v11, v12, v11, v12}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 279
    .line 280
    .line 281
    const-string v0, "tt_ad_xmark"

    .line 282
    .line 283
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 291
    .line 292
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->nru:I

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 298
    .line 299
    .line 300
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 301
    .line 302
    invoke-direct {v4, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 306
    .line 307
    .line 308
    const/16 v6, 0xf

    .line 309
    .line 310
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    .line 312
    .line 313
    const/16 v6, 0x10

    .line 314
    .line 315
    const v7, 0x1f00002d

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 319
    .line 320
    .line 321
    const v12, 0x1f000014

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .line 329
    .line 330
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 331
    .line 332
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 336
    .line 337
    .line 338
    const/4 v4, 0x1

    .line 339
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 340
    .line 341
    .line 342
    const-string v4, "#222222"

    .line 343
    .line 344
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    .line 350
    .line 351
    const/high16 v4, 0x41880000    # 17.0f

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    .line 355
    .line 356
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 357
    .line 358
    invoke-direct {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 362
    .line 363
    .line 364
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 365
    .line 366
    invoke-direct {v5, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    .line 368
    .line 369
    const v7, 0x1f00002e

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v10, v11, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 379
    .line 380
    .line 381
    const-string v5, "tt_ad_link"

    .line 382
    .line 383
    invoke-static {v1, v5}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    .line 389
    .line 390
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 391
    .line 392
    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    .line 396
    .line 397
    .line 398
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 399
    .line 400
    invoke-direct {v6, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 401
    .line 402
    .line 403
    const/16 v7, 0x15

    .line 404
    .line 405
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v11, v13, v11, v13}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 415
    .line 416
    .line 417
    const-string v6, "tt_ad_threedots"

    .line 418
    .line 419
    invoke-static {v1, v6}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    .line 425
    .line 426
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    .line 427
    .line 428
    const/4 v7, 0x0

    .line 429
    const v8, 0x103001f

    .line 430
    .line 431
    .line 432
    invoke-direct {v6, v1, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 433
    .line 434
    .line 435
    const v7, 0x1f00002f

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 439
    .line 440
    .line 441
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 442
    .line 443
    const/high16 v8, 0x40000000    # 2.0f

    .line 444
    .line 445
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    const/4 v9, -0x1

    .line 450
    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 451
    .line 452
    .line 453
    const/16 v8, 0xc

    .line 454
    .line 455
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    .line 460
    .line 461
    const/4 v7, 0x1

    .line 462
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setProgress(I)V

    .line 463
    .line 464
    .line 465
    const-string v7, "tt_privacy_progress_style"

    .line 466
    .line 467
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    .line 473
    .line 474
    new-instance v7, Landroid/view/View;

    .line 475
    .line 476
    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 480
    .line 481
    const/high16 v10, 0x3f800000    # 1.0f

    .line 482
    .line 483
    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 484
    .line 485
    .line 486
    move-result v10

    .line 487
    const/4 v11, -0x1

    .line 488
    invoke-direct {v9, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v8, v21

    .line 498
    .line 499
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 518
    .line 519
    .line 520
    move-object/from16 v7, v20

    .line 521
    .line 522
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 523
    .line 524
    .line 525
    :try_start_1
    new-instance v2, Landroid/webkit/WebView;

    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    invoke-direct {v2, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 535
    .line 536
    const/4 v9, -0x1

    .line 537
    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 538
    .line 539
    .line 540
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 541
    .line 542
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 543
    .line 544
    invoke-direct {v10, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v7, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    .line 549
    .line 550
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$1;

    .line 551
    .line 552
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    .line 557
    .line 558
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$2;

    .line 559
    .line 560
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    .line 565
    .line 566
    const/4 v2, 0x4

    .line 567
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    const/4 v2, 0x0

    .line 571
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 572
    .line 573
    .line 574
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    if-nez v7, :cond_3

    .line 579
    .line 580
    move-object/from16 v7, v19

    .line 581
    .line 582
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$3;

    .line 586
    .line 587
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    .line 592
    .line 593
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;

    .line 594
    .line 595
    move-object/from16 v4, v18

    .line 596
    .line 597
    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    .line 602
    .line 603
    move-object/from16 v0, v17

    .line 604
    .line 605
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 606
    .line 607
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-nez v0, :cond_5

    .line 612
    .line 613
    invoke-static/range {v16 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 618
    .line 619
    const-string v5, "?"

    .line 620
    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    if-eqz v4, :cond_4

    .line 626
    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 633
    .line 634
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    const-string v5, "&gdid_encrypted="

    .line 638
    .line 639
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 650
    .line 651
    goto :goto_0

    .line 652
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 658
    .line 659
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v5, "?gdid_encrypted="

    .line 663
    .line 664
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 675
    .line 676
    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 677
    .line 678
    if-eqz v0, :cond_6

    .line 679
    .line 680
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 681
    .line 682
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 687
    .line 688
    .line 689
    const/4 v4, 0x1

    .line 690
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 700
    .line 701
    .line 702
    :catchall_0
    new-instance v0, Ljava/util/HashMap;

    .line 703
    .line 704
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 705
    .line 706
    .line 707
    const-string v2, "Referer"

    .line 708
    .line 709
    const-string v4, "https://www.pangleglobal.com/"

    .line 710
    .line 711
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    :try_start_3
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 715
    .line 716
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 717
    .line 718
    invoke-virtual {v2, v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 719
    .line 720
    .line 721
    goto :goto_1

    .line 722
    :catchall_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 723
    .line 724
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 730
    .line 731
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$5;

    .line 732
    .line 733
    invoke-direct {v2, v1, v6, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Lcom/bytedance/sdk/openadsdk/core/HiB/vS;Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 737
    .line 738
    .line 739
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 740
    .line 741
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$6;

    .line 742
    .line 743
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 747
    .line 748
    .line 749
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 750
    .line 751
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Landroid/webkit/WebView;)V

    .line 752
    .line 753
    .line 754
    return-void

    .line 755
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 756
    .line 757
    .line 758
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    const-string v2, "TTAD.TTWebsiteActivity"

    .line 761
    .line 762
    const-string v3, "onCreate: "

    .line 763
    .line 764
    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 768
    .line 769
    .line 770
    return-void

    .line 771
    :catchall_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 772
    .line 773
    .line 774
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->TKC:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
