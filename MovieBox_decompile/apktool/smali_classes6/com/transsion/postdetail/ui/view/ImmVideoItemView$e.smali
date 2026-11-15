.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/share/share/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->T(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V
    .locals 2

    .line 1
    const-string p2, "id"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 14
    .line 15
    invoke-direct {p2, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;->r0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getFragment$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p2, v0, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getFragment$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Landroidx/fragment/app/Fragment;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const-string v0, "PostConfirmDialog"

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    nop

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$finishAfterReport(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 96

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "fileName"

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "fileSize"

    .line 18
    .line 19
    move-object/from16 v2, p3

    .line 20
    .line 21
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "fileImage"

    .line 25
    .line 26
    move-object/from16 v2, p4

    .line 27
    .line 28
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->a:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-wide/16 v3, 0x1f4

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v1, v2

    .line 69
    :goto_0
    invoke-static {v1}, Lcom/transsion/postdetail/util/t;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 74
    .line 75
    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move-object v3, v2

    .line 87
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    move-object v3, v2

    .line 107
    :cond_4
    :goto_2
    move-object v7, v3

    .line 108
    const-string v3, ""

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-nez v4, :cond_5

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move-object v5, v4

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    :goto_3
    move-object v5, v3

    .line 122
    :goto_4
    if-eqz v1, :cond_8

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-nez v4, :cond_7

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move-object v6, v4

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    :goto_5
    move-object v6, v3

    .line 134
    :goto_6
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 135
    .line 136
    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    if-eqz v4, :cond_a

    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_a

    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_a

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-nez v4, :cond_9

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_9
    move-object v8, v4

    .line 162
    goto :goto_8

    .line 163
    :cond_a
    :goto_7
    move-object v8, v3

    .line 164
    :goto_8
    if-eqz v1, :cond_b

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getSize()Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    int-to-long v9, v1

    .line 177
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    move-object v9, v1

    .line 182
    goto :goto_9

    .line 183
    :cond_b
    move-object v9, v2

    .line 184
    :goto_9
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 185
    .line 186
    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    move-object/from16 v35, v1

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_c
    move-object/from16 v35, v2

    .line 200
    .line 201
    :goto_a
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 202
    .line 203
    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_d

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    move-object v10, v1

    .line 214
    goto :goto_b

    .line 215
    :cond_d
    move-object v10, v2

    .line 216
    :goto_b
    new-instance v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 217
    .line 218
    move-object v4, v1

    .line 219
    const v94, 0xffff

    .line 220
    .line 221
    .line 222
    const/16 v95, 0x0

    .line 223
    .line 224
    const/4 v11, 0x0

    .line 225
    const/4 v12, 0x0

    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v14, 0x0

    .line 228
    const-wide/16 v15, 0x0

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const/16 v18, 0x0

    .line 233
    .line 234
    const/16 v19, 0x0

    .line 235
    .line 236
    const-wide/16 v20, 0x0

    .line 237
    .line 238
    const-wide/16 v22, 0x0

    .line 239
    .line 240
    const/16 v24, 0x0

    .line 241
    .line 242
    const/16 v25, 0x0

    .line 243
    .line 244
    const/16 v26, 0x0

    .line 245
    .line 246
    const/16 v27, 0x0

    .line 247
    .line 248
    const/16 v28, 0x0

    .line 249
    .line 250
    const/16 v29, 0x0

    .line 251
    .line 252
    const/16 v30, 0x0

    .line 253
    .line 254
    const/16 v31, 0x0

    .line 255
    .line 256
    const/16 v32, 0x0

    .line 257
    .line 258
    const/16 v33, 0x0

    .line 259
    .line 260
    const/16 v34, 0x0

    .line 261
    .line 262
    const/16 v36, 0x0

    .line 263
    .line 264
    const/16 v37, 0x0

    .line 265
    .line 266
    const/16 v38, 0x0

    .line 267
    .line 268
    const-wide/16 v39, 0x0

    .line 269
    .line 270
    const/16 v41, 0x0

    .line 271
    .line 272
    const/16 v42, 0x0

    .line 273
    .line 274
    const/16 v43, 0x0

    .line 275
    .line 276
    const/16 v44, 0x0

    .line 277
    .line 278
    const-wide/16 v45, 0x0

    .line 279
    .line 280
    const/16 v47, 0x0

    .line 281
    .line 282
    const/16 v48, 0x0

    .line 283
    .line 284
    const-wide/16 v49, 0x0

    .line 285
    .line 286
    const/16 v51, 0x0

    .line 287
    .line 288
    const-wide/16 v52, 0x0

    .line 289
    .line 290
    const/16 v54, 0x0

    .line 291
    .line 292
    const/16 v55, 0x0

    .line 293
    .line 294
    const/16 v56, 0x0

    .line 295
    .line 296
    const/16 v57, 0x0

    .line 297
    .line 298
    const/16 v58, 0x0

    .line 299
    .line 300
    const/16 v59, 0x0

    .line 301
    .line 302
    const/16 v60, 0x0

    .line 303
    .line 304
    const/16 v61, 0x0

    .line 305
    .line 306
    const/16 v62, 0x0

    .line 307
    .line 308
    const/16 v63, 0x0

    .line 309
    .line 310
    const/16 v64, 0x0

    .line 311
    .line 312
    const/16 v65, 0x0

    .line 313
    .line 314
    const/16 v66, 0x0

    .line 315
    .line 316
    const/16 v67, 0x0

    .line 317
    .line 318
    const/16 v68, 0x0

    .line 319
    .line 320
    const/16 v69, 0x0

    .line 321
    .line 322
    const/16 v70, 0x0

    .line 323
    .line 324
    const/16 v71, 0x0

    .line 325
    .line 326
    const/16 v72, 0x0

    .line 327
    .line 328
    const/16 v73, 0x0

    .line 329
    .line 330
    const/16 v74, 0x0

    .line 331
    .line 332
    const/16 v75, 0x0

    .line 333
    .line 334
    const/16 v76, 0x0

    .line 335
    .line 336
    const/16 v77, 0x0

    .line 337
    .line 338
    const/16 v78, 0x0

    .line 339
    .line 340
    const/16 v79, 0x0

    .line 341
    .line 342
    const/16 v80, 0x0

    .line 343
    .line 344
    const/16 v81, 0x0

    .line 345
    .line 346
    const/16 v82, 0x0

    .line 347
    .line 348
    const/16 v83, 0x0

    .line 349
    .line 350
    const/16 v84, 0x0

    .line 351
    .line 352
    const/16 v85, 0x0

    .line 353
    .line 354
    const/16 v86, 0x0

    .line 355
    .line 356
    const/16 v87, 0x0

    .line 357
    .line 358
    const/16 v88, 0x0

    .line 359
    .line 360
    const/16 v89, 0x0

    .line 361
    .line 362
    const/16 v90, 0x0

    .line 363
    .line 364
    const/16 v91, 0x0

    .line 365
    .line 366
    const v92, -0x8000040

    .line 367
    .line 368
    .line 369
    const/16 v93, -0x1

    .line 370
    .line 371
    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 372
    .line 373
    .line 374
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 375
    .line 376
    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    if-eqz v4, :cond_e

    .line 381
    .line 382
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    if-eqz v4, :cond_e

    .line 387
    .line 388
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    if-eqz v4, :cond_e

    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    goto :goto_c

    .line 399
    :cond_e
    move-object v4, v2

    .line 400
    :goto_c
    invoke-virtual {v1, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 404
    .line 405
    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    if-eqz v4, :cond_f

    .line 410
    .line 411
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    const/4 v5, 0x1

    .line 416
    if-ne v4, v5, :cond_f

    .line 417
    .line 418
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 419
    .line 420
    invoke-static {v2, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 421
    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_f
    sget-object v4, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 425
    .line 426
    invoke-virtual {v4}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 431
    .line 432
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    const-string v5, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 437
    .line 438
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    move-object v12, v4

    .line 442
    check-cast v12, Landroidx/fragment/app/FragmentActivity;

    .line 443
    .line 444
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 445
    .line 446
    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    if-eqz v4, :cond_10

    .line 451
    .line 452
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    :cond_10
    move-object v15, v2

    .line 457
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 458
    .line 459
    invoke-static {v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    if-eqz v2, :cond_12

    .line 464
    .line 465
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    if-eqz v2, :cond_12

    .line 470
    .line 471
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    if-eqz v2, :cond_12

    .line 476
    .line 477
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    if-nez v2, :cond_11

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_11
    move-object/from16 v16, v2

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_12
    :goto_d
    move-object/from16 v16, v3

    .line 488
    .line 489
    :goto_e
    const/16 v19, 0x60

    .line 490
    .line 491
    const/16 v20, 0x0

    .line 492
    .line 493
    const-string v14, "postdetail_video"

    .line 494
    .line 495
    const/16 v17, 0x0

    .line 496
    .line 497
    const/16 v18, 0x0

    .line 498
    .line 499
    move-object v13, v1

    .line 500
    invoke-static/range {v11 .. v20}, Lcom/transsnet/downloader/DownloadManagerApi;->P(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    :goto_f
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 504
    .line 505
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 506
    .line 507
    invoke-static {v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 512
    .line 513
    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getPageFrom$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    const-string v4, "postdetail_video"

    .line 518
    .line 519
    invoke-virtual {v1, v2, v4, v3}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/share/share/a$a;->c(Lcom/transsion/share/share/a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
