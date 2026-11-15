.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 2
    .line 3
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_item_bottom_action_sheet_dialog:I

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0O0;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO00o;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0OO;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method public onBindView(I)V
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object v9, v1

    .line 12
    check-cast v9, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 13
    .line 14
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0O0:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "icon"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getIcon()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v11, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v11, v10

    .line 44
    :goto_1
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr v1, v2

    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "Cancel"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    move v12, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move v12, v10

    .line 68
    :goto_2
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 69
    .line 70
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 79
    .line 80
    if-eqz v12, :cond_3

    .line 81
    .line 82
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_3
    invoke-static {v0, v11}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 87
    .line 88
    .line 89
    if-eqz v11, :cond_8

    .line 90
    .line 91
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getIcon()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v4, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v6, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;

    .line 98
    .line 99
    invoke-direct {v6, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const-string v1, ".miniapp.transsion.com"

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-static {v3, v1, v10, v2, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_5

    .line 126
    .line 127
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    new-instance v16, Lcom/cloud/tmc/miniapp/dialog/OooO;

    .line 136
    .line 137
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    move-object/from16 v1, v16

    .line 141
    .line 142
    move-object/from16 v5, p0

    .line 143
    .line 144
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/dialog/OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 145
    .line 146
    .line 147
    const/16 v17, 0x3

    .line 148
    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    const/4 v14, 0x0

    .line 152
    const/4 v15, 0x0

    .line 153
    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO00o:Lkotlin/Lazy;

    .line 160
    .line 161
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "<get-processor>(...)"

    .line 166
    .line 167
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    check-cast v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 171
    .line 172
    invoke-interface {v1, v3, v4}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :cond_6
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v6, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_7
    :goto_3
    invoke-virtual {v6, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :cond_8
    :goto_4
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 194
    .line 195
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/widget/TextView;

    .line 200
    .line 201
    const-string v1, "BottomActionSheetDialog"

    .line 202
    .line 203
    if-eqz v0, :cond_b

    .line 204
    .line 205
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getText()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const-string v3, ""

    .line 210
    .line 211
    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    :try_start_0
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getEnable()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_a

    .line 223
    .line 224
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getColor()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_9

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_9
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getColor()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    goto :goto_5

    .line 251
    :cond_a
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getDisabledColor()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-lez v2, :cond_b

    .line 260
    .line 261
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getDisabledColor()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :goto_5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    :cond_b
    :goto_6
    const/16 v0, 0x11

    .line 277
    .line 278
    if-eqz v12, :cond_d

    .line 279
    .line 280
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o()Landroid/widget/RelativeLayout;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-nez v2, :cond_c

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_c
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :catchall_1
    move-exception v0

    .line 292
    goto :goto_8

    .line 293
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o()Landroid/widget/RelativeLayout;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-nez v2, :cond_e

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_e
    if-eqz v11, :cond_f

    .line 301
    .line 302
    const v0, 0x800003

    .line 303
    .line 304
    .line 305
    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 306
    .line 307
    .line 308
    :goto_7
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getEnable()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_11

    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o()Landroid/widget/RelativeLayout;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-nez v0, :cond_10

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_10
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .line 322
    .line 323
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 324
    .line 325
    .line 326
    const v3, 0x10100a7

    .line 327
    .line 328
    .line 329
    filled-new-array {v3}, [I

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 334
    .line 335
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getMaskColor()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    const-string v6, "#0F191F2B"

    .line 340
    .line 341
    invoke-static {v5, v6}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 353
    .line 354
    .line 355
    const v3, -0x10100a7

    .line 356
    .line 357
    .line 358
    filled-new-array {v3}, [I

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 363
    .line 364
    invoke-direct {v4, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :goto_8
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .line 376
    .line 377
    :cond_11
    :goto_9
    return-void
.end method
