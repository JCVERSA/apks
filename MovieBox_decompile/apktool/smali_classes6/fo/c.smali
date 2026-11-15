.class public final Lfo/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lrv/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrv/e;)V
    .locals 1

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dotHelper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lfo/c;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lfo/c;->f:Lrv/e;

    .line 17
    .line 18
    return-void
.end method

.method private static final A(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;Lfo/c;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isShortTV()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "download_subject"

    .line 9
    .line 10
    const-string v4, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v6, v1

    .line 28
    check-cast v6, Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    iget-object v7, v0, Lfo/c;->e:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v15, 0x180

    .line 33
    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    const-string v8, ""

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const-string v10, "download_subject"

    .line 40
    .line 41
    const/4 v11, 0x1

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    move-object/from16 v12, p3

    .line 45
    .line 46
    invoke-static/range {v5 .. v16}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    move-object v10, v3

    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_0
    sget-object v1, Lij/t;->a:Lij/t;

    .line 53
    .line 54
    invoke-virtual {v1}, Lij/t;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v5, "play_subject"

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-static/range {p5 .. p5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object/from16 v1, p3

    .line 66
    .line 67
    move-object/from16 v3, p5

    .line 68
    .line 69
    invoke-direct {v0, v3, v1}, Lfo/c;->B(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    move-object v10, v5

    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_2
    move-object/from16 v1, p3

    .line 76
    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetectors()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string v7, ""

    .line 82
    .line 83
    if-eqz v6, :cond_5

    .line 84
    .line 85
    move-object v8, v6

    .line 86
    check-cast v8, Ljava/util/Collection;

    .line 87
    .line 88
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_3

    .line 93
    .line 94
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-nez v6, :cond_4

    .line 105
    .line 106
    :cond_3
    move-object v6, v7

    .line 107
    :cond_4
    move-object v10, v6

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move-object v10, v7

    .line 110
    :goto_2
    sget-object v6, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    const/16 v13, 0x8

    .line 125
    .line 126
    const/4 v14, 0x0

    .line 127
    const/4 v12, 0x0

    .line 128
    invoke-static/range {v8 .. v14}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_6

    .line 133
    .line 134
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    if-eqz v10, :cond_1

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    const-string v1, "getContext(...)"

    .line 149
    .line 150
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v12, v0, Lfo/c;->e:Ljava/lang/String;

    .line 154
    .line 155
    const/16 v14, 0x8

    .line 156
    .line 157
    const/4 v15, 0x0

    .line 158
    const/4 v13, 0x0

    .line 159
    invoke-static/range {v9 .. v15}, Lcom/transsnet/downloader/DownloadManagerApi;->z0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    invoke-virtual {v6}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    move-object v4, v5

    .line 175
    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    .line 176
    .line 177
    iget-object v9, v0, Lfo/c;->e:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    if-eqz v5, :cond_8

    .line 188
    .line 189
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    if-nez v5, :cond_7

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    move-object v12, v5

    .line 197
    goto :goto_4

    .line 198
    :cond_8
    :goto_3
    move-object v12, v7

    .line 199
    :goto_4
    const/16 v17, 0x3c0

    .line 200
    .line 201
    const/16 v18, 0x0

    .line 202
    .line 203
    const-string v10, ""

    .line 204
    .line 205
    const/4 v13, 0x0

    .line 206
    const/4 v14, 0x0

    .line 207
    const/4 v15, 0x0

    .line 208
    const/16 v16, 0x0

    .line 209
    .line 210
    move-object v7, v4

    .line 211
    move-object/from16 v8, p3

    .line 212
    .line 213
    invoke-static/range {v6 .. v18}, Lcom/transsnet/downloader/DownloadManagerApi;->M(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    new-instance v4, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 217
    .line 218
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    if-eqz v6, :cond_9

    .line 227
    .line 228
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    goto :goto_5

    .line 233
    :cond_9
    const/4 v6, 0x0

    .line 234
    :goto_5
    const/4 v7, 0x1

    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-direct {v4, v5, v6, v7, v1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 240
    .line 241
    .line 242
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 243
    .line 244
    const-class v5, Lcom/transsnet/flow/event/FlowEventBus;

    .line 245
    .line 246
    invoke-virtual {v1, v5}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 251
    .line 252
    const-class v5, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    const-string v6, "getName(...)"

    .line 259
    .line 260
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-wide/16 v6, 0x0

    .line 264
    .line 265
    invoke-virtual {v1, v5, v4, v6, v7}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :goto_6
    iget-object v8, v0, Lfo/c;->f:Lrv/e;

    .line 271
    .line 272
    iget-object v9, v0, Lfo/c;->e:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz v0, :cond_a

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    :cond_a
    move v13, v2

    .line 289
    move-object/from16 v12, p4

    .line 290
    .line 291
    invoke-virtual/range {v8 .. v13}, Lrv/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method private final B(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "/playvideo/detail"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    const-string v2, "subject_type"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "id"

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "season"

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeason()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "ops"

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v0, 0x2

    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {p2, p1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static synthetic y(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;Lfo/c;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lfo/c;->A(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;Lfo/c;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lfo/c;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/postdetail/R$layout;->item_foryou:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x1

    .line 7
    const-string v1, "holder"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "item"

    .line 13
    .line 14
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    move-object v5, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    sget v1, Lcom/transsion/postdetail/R$id;->tv_title:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    sget v1, Lcom/transsion/postdetail/R$id;->iv_cover:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 59
    .line 60
    const-string v9, ""

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "getContext(...)"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    :cond_2
    move-object v3, v9

    .line 92
    :cond_3
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-nez v3, :cond_5

    .line 107
    .line 108
    :cond_4
    move-object v3, v9

    .line 109
    :cond_5
    invoke-virtual {v2, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    sget v1, Lcom/transsion/postdetail/R$id;->tv_desc:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    if-eqz v1, :cond_f

    .line 125
    .line 126
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_8

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v4, " / "

    .line 156
    .line 157
    if-eqz v3, :cond_a

    .line 158
    .line 159
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_9

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 175
    .line 176
    .line 177
    :cond_a
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-eqz v3, :cond_c

    .line 182
    .line 183
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_b

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 199
    .line 200
    .line 201
    :cond_c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-eqz v3, :cond_d

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v3}, Lcom/transsion/baseui/util/TimeUtilKt;->g(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 220
    .line 221
    .line 222
    :cond_d
    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    new-array v3, v8, [C

    .line 227
    .line 228
    const/16 v4, 0x2f

    .line 229
    .line 230
    aput-char v4, v3, v7

    .line 231
    .line 232
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->o1(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 237
    .line 238
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v4, "  "

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v2}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 259
    .line 260
    const/16 v10, 0x1d

    .line 261
    .line 262
    if-lt v4, v10, :cond_e

    .line 263
    .line 264
    new-instance v4, Landroid/text/style/ImageSpan;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    const/4 v11, 0x2

    .line 271
    invoke-direct {v4, v10, v2, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_e
    new-instance v4, Landroid/text/style/ImageSpan;

    .line 276
    .line 277
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-direct {v4, v10, v2, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 282
    .line 283
    .line 284
    :goto_5
    const/16 v2, 0x22

    .line 285
    .line 286
    invoke-virtual {v3, v4, v7, v8, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    :cond_f
    sget v1, Lcom/transsion/postdetail/R$id;->tv_score:I

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    if-eqz v1, :cond_10

    .line 301
    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    :cond_10
    sget v1, Lcom/transsion/postdetail/R$id;->ll_download:I

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    move-object v10, v0

    .line 316
    check-cast v10, Lcom/transsnet/downloader/widget/DownloadView;

    .line 317
    .line 318
    if-eqz v10, :cond_17

    .line 319
    .line 320
    move-object/from16 v15, p0

    .line 321
    .line 322
    iget-object v0, v15, Lfo/c;->e:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v10, v0}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 332
    .line 333
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_16

    .line 338
    .line 339
    new-instance v11, Lfo/b;

    .line 340
    .line 341
    move-object v0, v11

    .line 342
    move-object/from16 v1, p2

    .line 343
    .line 344
    move-object v2, v10

    .line 345
    move-object/from16 v3, p0

    .line 346
    .line 347
    move-object/from16 v4, p2

    .line 348
    .line 349
    invoke-direct/range {v0 .. v5}, Lfo/b;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;Lfo/c;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v10}, Luf/c;->k(Landroid/view/View;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->isShortTV()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_11

    .line 363
    .line 364
    return-void

    .line 365
    :cond_11
    sget-object v0, Lij/t;->a:Lij/t;

    .line 366
    .line 367
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_12

    .line 372
    .line 373
    invoke-virtual {v10}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetectors()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-eqz v0, :cond_17

    .line 382
    .line 383
    move-object v1, v0

    .line 384
    check-cast v1, Ljava/util/Collection;

    .line 385
    .line 386
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_15

    .line 391
    .line 392
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    check-cast v1, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    if-nez v1, :cond_13

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_13
    move-object v9, v1

    .line 406
    :goto_6
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    if-nez v0, :cond_14

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-ne v0, v8, :cond_15

    .line 424
    .line 425
    move v7, v8

    .line 426
    :cond_15
    :goto_7
    move-object v12, v9

    .line 427
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 432
    .line 433
    .line 434
    move-result-object v13

    .line 435
    const/16 v16, 0x18

    .line 436
    .line 437
    const/16 v17, 0x0

    .line 438
    .line 439
    const/4 v14, 0x0

    .line 440
    const/4 v0, 0x0

    .line 441
    move v15, v0

    .line 442
    invoke-static/range {v10 .. v17}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_16
    invoke-static {v10}, Luf/c;->g(Landroid/view/View;)V

    .line 447
    .line 448
    .line 449
    :cond_17
    :goto_8
    return-void
.end method
