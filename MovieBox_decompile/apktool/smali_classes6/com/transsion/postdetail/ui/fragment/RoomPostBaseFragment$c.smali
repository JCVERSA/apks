.class public final Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/share/share/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onShareClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/share/share/ShareDialogFragment;

.field final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field final synthetic c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/share/share/ShareDialogFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V
    .locals 0

    .line 1
    const-string p2, "id"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->u(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getTAG()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "id"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$removePost(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
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
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getId()I

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
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-object v1, v2

    .line 65
    :goto_0
    invoke-static {v1}, Lcom/transsion/postdetail/util/t;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v3, v2

    .line 79
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move-object v3, v2

    .line 95
    :cond_4
    :goto_2
    move-object v7, v3

    .line 96
    const-string v3, ""

    .line 97
    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-nez v4, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    move-object v5, v4

    .line 108
    goto :goto_4

    .line 109
    :cond_6
    :goto_3
    move-object v5, v3

    .line 110
    :goto_4
    if-eqz v1, :cond_8

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-nez v4, :cond_7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    move-object v6, v4

    .line 120
    goto :goto_6

    .line 121
    :cond_8
    :goto_5
    move-object v6, v3

    .line 122
    :goto_6
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 123
    .line 124
    if-eqz v4, :cond_a

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz v4, :cond_a

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_a

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-nez v4, :cond_9

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_9
    move-object v8, v4

    .line 146
    goto :goto_8

    .line 147
    :cond_a
    :goto_7
    move-object v8, v3

    .line 148
    :goto_8
    if-eqz v1, :cond_b

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getSize()Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    int-to-long v9, v1

    .line 161
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object v9, v1

    .line 166
    goto :goto_9

    .line 167
    :cond_b
    move-object v9, v2

    .line 168
    :goto_9
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 169
    .line 170
    if-eqz v1, :cond_c

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move-object/from16 v35, v1

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_c
    move-object/from16 v35, v2

    .line 180
    .line 181
    :goto_a
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 182
    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    move-object v10, v1

    .line 190
    goto :goto_b

    .line 191
    :cond_d
    move-object v10, v2

    .line 192
    :goto_b
    new-instance v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 193
    .line 194
    move-object v4, v1

    .line 195
    const v94, 0xffff

    .line 196
    .line 197
    .line 198
    const/16 v95, 0x0

    .line 199
    .line 200
    const/4 v11, 0x0

    .line 201
    const/4 v12, 0x0

    .line 202
    const/4 v13, 0x0

    .line 203
    const/4 v14, 0x0

    .line 204
    const-wide/16 v15, 0x0

    .line 205
    .line 206
    const/16 v17, 0x0

    .line 207
    .line 208
    const/16 v18, 0x0

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    const-wide/16 v20, 0x0

    .line 213
    .line 214
    const-wide/16 v22, 0x0

    .line 215
    .line 216
    const/16 v24, 0x0

    .line 217
    .line 218
    const/16 v25, 0x0

    .line 219
    .line 220
    const/16 v26, 0x0

    .line 221
    .line 222
    const/16 v27, 0x0

    .line 223
    .line 224
    const/16 v28, 0x0

    .line 225
    .line 226
    const/16 v29, 0x0

    .line 227
    .line 228
    const/16 v30, 0x0

    .line 229
    .line 230
    const/16 v31, 0x0

    .line 231
    .line 232
    const/16 v32, 0x0

    .line 233
    .line 234
    const/16 v33, 0x0

    .line 235
    .line 236
    const/16 v34, 0x0

    .line 237
    .line 238
    const/16 v36, 0x0

    .line 239
    .line 240
    const/16 v37, 0x0

    .line 241
    .line 242
    const/16 v38, 0x0

    .line 243
    .line 244
    const-wide/16 v39, 0x0

    .line 245
    .line 246
    const/16 v41, 0x0

    .line 247
    .line 248
    const/16 v42, 0x0

    .line 249
    .line 250
    const/16 v43, 0x0

    .line 251
    .line 252
    const/16 v44, 0x0

    .line 253
    .line 254
    const-wide/16 v45, 0x0

    .line 255
    .line 256
    const/16 v47, 0x0

    .line 257
    .line 258
    const/16 v48, 0x0

    .line 259
    .line 260
    const-wide/16 v49, 0x0

    .line 261
    .line 262
    const/16 v51, 0x0

    .line 263
    .line 264
    const-wide/16 v52, 0x0

    .line 265
    .line 266
    const/16 v54, 0x0

    .line 267
    .line 268
    const/16 v55, 0x0

    .line 269
    .line 270
    const/16 v56, 0x0

    .line 271
    .line 272
    const/16 v57, 0x0

    .line 273
    .line 274
    const/16 v58, 0x0

    .line 275
    .line 276
    const/16 v59, 0x0

    .line 277
    .line 278
    const/16 v60, 0x0

    .line 279
    .line 280
    const/16 v61, 0x0

    .line 281
    .line 282
    const/16 v62, 0x0

    .line 283
    .line 284
    const/16 v63, 0x0

    .line 285
    .line 286
    const/16 v64, 0x0

    .line 287
    .line 288
    const/16 v65, 0x0

    .line 289
    .line 290
    const/16 v66, 0x0

    .line 291
    .line 292
    const/16 v67, 0x0

    .line 293
    .line 294
    const/16 v68, 0x0

    .line 295
    .line 296
    const/16 v69, 0x0

    .line 297
    .line 298
    const/16 v70, 0x0

    .line 299
    .line 300
    const/16 v71, 0x0

    .line 301
    .line 302
    const/16 v72, 0x0

    .line 303
    .line 304
    const/16 v73, 0x0

    .line 305
    .line 306
    const/16 v74, 0x0

    .line 307
    .line 308
    const/16 v75, 0x0

    .line 309
    .line 310
    const/16 v76, 0x0

    .line 311
    .line 312
    const/16 v77, 0x0

    .line 313
    .line 314
    const/16 v78, 0x0

    .line 315
    .line 316
    const/16 v79, 0x0

    .line 317
    .line 318
    const/16 v80, 0x0

    .line 319
    .line 320
    const/16 v81, 0x0

    .line 321
    .line 322
    const/16 v82, 0x0

    .line 323
    .line 324
    const/16 v83, 0x0

    .line 325
    .line 326
    const/16 v84, 0x0

    .line 327
    .line 328
    const/16 v85, 0x0

    .line 329
    .line 330
    const/16 v86, 0x0

    .line 331
    .line 332
    const/16 v87, 0x0

    .line 333
    .line 334
    const/16 v88, 0x0

    .line 335
    .line 336
    const/16 v89, 0x0

    .line 337
    .line 338
    const/16 v90, 0x0

    .line 339
    .line 340
    const/16 v91, 0x0

    .line 341
    .line 342
    const v92, -0x8000040

    .line 343
    .line 344
    .line 345
    const/16 v93, -0x1

    .line 346
    .line 347
    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    .line 349
    .line 350
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 351
    .line 352
    if-eqz v4, :cond_e

    .line 353
    .line 354
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    if-eqz v4, :cond_e

    .line 359
    .line 360
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    if-eqz v4, :cond_e

    .line 365
    .line 366
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    goto :goto_c

    .line 371
    :cond_e
    move-object v4, v2

    .line 372
    :goto_c
    invoke-virtual {v1, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 376
    .line 377
    if-eqz v4, :cond_f

    .line 378
    .line 379
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    const/4 v5, 0x1

    .line 384
    if-ne v4, v5, :cond_f

    .line 385
    .line 386
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 387
    .line 388
    invoke-static {v2, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 389
    .line 390
    .line 391
    goto :goto_f

    .line 392
    :cond_f
    sget-object v4, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 395
    .line 396
    .line 397
    move-result-object v11

    .line 398
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 399
    .line 400
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    const-string v5, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 405
    .line 406
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    move-object v12, v4

    .line 410
    check-cast v12, Landroidx/fragment/app/FragmentActivity;

    .line 411
    .line 412
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 413
    .line 414
    if-eqz v4, :cond_10

    .line 415
    .line 416
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    :cond_10
    move-object v15, v2

    .line 421
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 422
    .line 423
    if-eqz v2, :cond_12

    .line 424
    .line 425
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    if-eqz v2, :cond_12

    .line 430
    .line 431
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    if-eqz v2, :cond_12

    .line 436
    .line 437
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    if-nez v2, :cond_11

    .line 442
    .line 443
    goto :goto_d

    .line 444
    :cond_11
    move-object/from16 v16, v2

    .line 445
    .line 446
    goto :goto_e

    .line 447
    :cond_12
    :goto_d
    move-object/from16 v16, v3

    .line 448
    .line 449
    :goto_e
    const/16 v19, 0x60

    .line 450
    .line 451
    const/16 v20, 0x0

    .line 452
    .line 453
    const-string v14, "postdetail_video"

    .line 454
    .line 455
    const/16 v17, 0x0

    .line 456
    .line 457
    const/16 v18, 0x0

    .line 458
    .line 459
    move-object v13, v1

    .line 460
    invoke-static/range {v11 .. v20}, Lcom/transsnet/downloader/DownloadManagerApi;->P(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    :goto_f
    sget-object v2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 464
    .line 465
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 466
    .line 467
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;->c:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 468
    .line 469
    invoke-virtual {v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const/4 v6, 0x4

    .line 474
    const/4 v7, 0x0

    .line 475
    const/4 v5, 0x0

    .line 476
    invoke-static/range {v2 .. v7}, Lcom/transsion/postdetail/helper/a;->j(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
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
