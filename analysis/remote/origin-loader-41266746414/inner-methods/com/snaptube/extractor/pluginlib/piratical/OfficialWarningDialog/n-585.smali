.method public final n()Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/widget/ScrollView;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->t()Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    const-string v6, "#2F2F2F"

    .line 62
    .line 63
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    const/16 v6, 0x11

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .line 77
    const/4 v7, -0x2

    .line 78
    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const/16 v8, 0x10

    .line 82
    .line 83
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    float-to-int v9, v9

    .line 88
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    .line 90
    const/16 v9, 0x30

    .line 91
    .line 92
    invoke-static {v9}, Lo/sf5;->a(I)F

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    float-to-int v9, v9

    .line 97
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    sget-object v9, Lo/mg8;->a:Lo/mg8;

    .line 100
    .line 101
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->q()Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v0, v2, v5}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    new-instance v6, Lo/pf5;

    .line 113
    .line 114
    invoke-direct {v6, v0}, Lo/pf5;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    sget-object v6, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    const-string v10, "getContext(...)"

    .line 134
    .line 135
    invoke-static {v9, v10}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v11, "guide_download"

    .line 139
    .line 140
    invoke-virtual {v6, v9, v11}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_0

    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    .line 155
    .line 156
    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    .line 165
    .line 166
    :cond_0
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    const/16 v11, 0xca

    .line 169
    .line 170
    invoke-static {v11}, Lo/sf5;->a(I)F

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    float-to-int v12, v12

    .line 175
    const/16 v13, 0x66

    .line 176
    .line 177
    invoke-static {v13}, Lo/sf5;->a(I)F

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    float-to-int v14, v14

    .line 182
    invoke-direct {v9, v12, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    const-string v5, "step_one_action"

    .line 192
    .line 193
    invoke-static {v6, v5}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    new-instance v9, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$6;

    .line 198
    .line 199
    invoke-direct {v9, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$6;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v5, v4, v9}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    iput-object v5, v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->b:Landroid/widget/Button;

    .line 207
    .line 208
    if-nez v5, :cond_1

    .line 209
    .line 210
    const-string v5, "btnDownload"

    .line 211
    .line 212
    invoke-static {v5}, Lo/or3;->w(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    :cond_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .line 218
    invoke-direct {v12, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    float-to-int v14, v14

    .line 226
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    float-to-int v15, v15

    .line 231
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    float-to-int v9, v9

    .line 236
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    float-to-int v3, v3

    .line 241
    invoke-virtual {v12, v14, v15, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->s()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v0, v2, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-static {v5, v10}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v9, "guide_uninstall"

    .line 270
    .line 271
    invoke-virtual {v6, v5, v9}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_2

    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 286
    .line 287
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v5, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    .line 296
    .line 297
    :cond_2
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 298
    .line 299
    invoke-static {v11}, Lo/sf5;->a(I)F

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    float-to-int v9, v9

    .line 304
    invoke-static {v13}, Lo/sf5;->a(I)F

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    float-to-int v10, v10

    .line 309
    invoke-direct {v5, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    const-string v3, "step_two_action"

    .line 319
    .line 320
    invoke-static {v6, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    new-instance v4, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$10;

    .line 325
    .line 326
    invoke-direct {v4, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$10;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    .line 327
    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    invoke-virtual {v0, v3, v5, v4}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    iput-object v3, v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c:Landroid/widget/Button;

    .line 335
    .line 336
    if-nez v3, :cond_3

    .line 337
    .line 338
    const-string v3, "btnUninstall"

    .line 339
    .line 340
    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const/4 v9, 0x0

    .line 344
    goto :goto_0

    .line 345
    :cond_3
    move-object v9, v3

    .line 346
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .line 348
    const/4 v4, -0x1

    .line 349
    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    float-to-int v4, v4

    .line 357
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    float-to-int v5, v5

    .line 362
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    float-to-int v6, v6

    .line 367
    invoke-static {v8}, Lo/sf5;->a(I)F

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    float-to-int v7, v7

    .line 372
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    const/4 v4, -0x1

    .line 381
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    return-object v1
.end method
