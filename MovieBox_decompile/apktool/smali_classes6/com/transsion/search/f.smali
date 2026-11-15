.class public abstract Lcom/transsion/search/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroid/content/Context;I)Landroid/text/style/ImageSpan;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/text/style/ImageSpan;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/text/style/ImageSpan;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method public static final b(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/search/R$drawable;->ic_search_result_split:I

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1d

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, p0, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v1
.end method

.method public static final c(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "playModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpBrowser()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getPlayUrl()Lcom/transsion/moviedetailapi/bean/PlayUrl;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PlayUrl;->getPlayUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    invoke-static {p0}, Lij/k;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpWebview()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getPlayUrl()Lcom/transsion/moviedetailapi/bean/PlayUrl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PlayUrl;->getPlayUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-static {p0, p1, v1, p1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string v0, "/movie/detail"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :goto_0
    const-string v3, "subject_type"

    .line 79
    .line 80
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "id"

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v2, "module_name"

    .line 95
    .line 96
    invoke-virtual {v0, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "season"

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeason()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "autoPlay"

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "ops"

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    return-void
.end method

.method public static final d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const-string v1, "pageName"

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "context"

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "playModule"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v13, "download_subject"

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v1, v4, :cond_1

    .line 46
    .line 47
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v1, v2

    .line 54
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/16 v10, 0x180

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    const-string v5, ""

    .line 64
    .line 65
    const-string v6, "download_subject"

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    move-object v3, v5

    .line 73
    move-object v5, v6

    .line 74
    move v6, v8

    .line 75
    move-object/from16 v7, p0

    .line 76
    .line 77
    move-object v8, v9

    .line 78
    move-object v9, v12

    .line 79
    invoke-static/range {v0 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_1
    :goto_0
    sget-object v1, Lij/t;->a:Lij/t;

    .line 85
    .line 86
    invoke-virtual {v1}, Lij/t;->b()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v8, "play_subject"

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-static {v7, v0}, Lcom/transsion/search/f;->c(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    move-object v13, v8

    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_3
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    const/4 v1, 0x0

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    move-object v15, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object v15, v1

    .line 116
    :goto_2
    if-eqz v7, :cond_5

    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    move-object/from16 v16, v4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    move-object/from16 v16, v1

    .line 132
    .line 133
    :goto_3
    const/4 v4, 0x0

    .line 134
    if-eqz v7, :cond_6

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    const/4 v6, 0x1

    .line 141
    if-ne v5, v6, :cond_6

    .line 142
    .line 143
    move/from16 v17, v6

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move/from16 v17, v4

    .line 147
    .line 148
    :goto_4
    const/16 v19, 0x8

    .line 149
    .line 150
    const/16 v20, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    invoke-static/range {v14 .. v20}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_7

    .line 159
    .line 160
    if-eqz v7, :cond_2

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_2

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/16 v5, 0x8

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v4, 0x0

    .line 176
    move-object/from16 v2, p2

    .line 177
    .line 178
    move-object/from16 v3, p1

    .line 179
    .line 180
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->z0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 189
    .line 190
    if-eqz v7, :cond_8

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_8
    move-object v5, v1

    .line 197
    if-eqz v7, :cond_a

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_a

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-nez v1, :cond_9

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_9
    :goto_5
    move-object v6, v1

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    :goto_6
    const-string v1, ""

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :goto_7
    const/16 v11, 0x3c0

    .line 218
    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v9, 0x0

    .line 223
    const/4 v10, 0x0

    .line 224
    const/4 v14, 0x0

    .line 225
    move-object v1, v2

    .line 226
    move-object/from16 v2, p0

    .line 227
    .line 228
    move-object/from16 v3, p1

    .line 229
    .line 230
    move-object v7, v8

    .line 231
    move-object v8, v9

    .line 232
    move-object v9, v10

    .line 233
    move v10, v14

    .line 234
    invoke-static/range {v0 .. v12}, Lcom/transsnet/downloader/DownloadManagerApi;->M(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :goto_8
    return-object v13
.end method

.method public static final e(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    const-string v0, "resources"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 11
    .line 12
    and-int/lit8 p0, p0, 0xf

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-lt p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
