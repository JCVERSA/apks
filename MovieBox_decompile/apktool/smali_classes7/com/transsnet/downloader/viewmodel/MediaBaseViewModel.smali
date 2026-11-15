.class public abstract Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LocalFile"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/b0;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->b:Landroidx/lifecycle/b0;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected final c(Lcom/transsnet/downloader/viewmodel/j0;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "video"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/a0;->j(Lcom/transsnet/downloader/viewmodel/j0;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    move-object/from16 v11, p0

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v11, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, ""

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    move-object v4, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v4, v2

    .line 38
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->d()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    move-object v2, v3

    .line 53
    :cond_2
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/viewmodel/a0;->f(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v94

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->a()Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v95

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object v3, v2

    .line 73
    :goto_1
    invoke-virtual {v1, v3}, Lcom/transsnet/downloader/viewmodel/a0;->e(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v12

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->f()I

    .line 78
    .line 79
    .line 80
    move-result v29

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/viewmodel/j0;->b()I

    .line 82
    .line 83
    .line 84
    move-result v30

    .line 85
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 88
    .line 89
    .line 90
    move-result v58

    .line 91
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    const v92, 0xffff

    .line 103
    .line 104
    .line 105
    const/16 v93, 0x0

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    const-wide/16 v13, 0x0

    .line 110
    .line 111
    const/4 v15, 0x0

    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/16 v17, 0x2

    .line 115
    .line 116
    const-wide/16 v18, 0x0

    .line 117
    .line 118
    const-wide/16 v20, 0x0

    .line 119
    .line 120
    const/16 v22, 0x1

    .line 121
    .line 122
    const/16 v23, 0x0

    .line 123
    .line 124
    const/16 v24, 0x0

    .line 125
    .line 126
    const/16 v25, 0x0

    .line 127
    .line 128
    const/16 v26, 0x0

    .line 129
    .line 130
    const/16 v27, 0x0

    .line 131
    .line 132
    const/16 v28, 0x0

    .line 133
    .line 134
    const/16 v31, 0x0

    .line 135
    .line 136
    const/16 v32, 0x0

    .line 137
    .line 138
    const/16 v33, 0x0

    .line 139
    .line 140
    const/16 v34, 0x0

    .line 141
    .line 142
    const/16 v35, 0x0

    .line 143
    .line 144
    const/16 v36, 0x0

    .line 145
    .line 146
    const-wide/16 v37, 0x0

    .line 147
    .line 148
    const/16 v39, 0x2

    .line 149
    .line 150
    const/16 v40, 0x0

    .line 151
    .line 152
    const/16 v41, 0x0

    .line 153
    .line 154
    const/16 v42, 0x0

    .line 155
    .line 156
    const-wide/16 v43, 0x0

    .line 157
    .line 158
    const/16 v45, 0x0

    .line 159
    .line 160
    const/16 v46, 0x0

    .line 161
    .line 162
    const-wide/16 v47, 0x0

    .line 163
    .line 164
    const/16 v49, 0x0

    .line 165
    .line 166
    const-wide/16 v50, 0x0

    .line 167
    .line 168
    const/16 v52, 0x0

    .line 169
    .line 170
    const/16 v53, 0x0

    .line 171
    .line 172
    const/16 v54, 0x0

    .line 173
    .line 174
    const/16 v55, 0x0

    .line 175
    .line 176
    const/16 v56, 0x0

    .line 177
    .line 178
    const/16 v57, 0x0

    .line 179
    .line 180
    const/16 v59, 0x0

    .line 181
    .line 182
    const/16 v60, 0x0

    .line 183
    .line 184
    const/16 v61, 0x0

    .line 185
    .line 186
    const/16 v62, 0x0

    .line 187
    .line 188
    const/16 v63, 0x0

    .line 189
    .line 190
    const/16 v64, 0x0

    .line 191
    .line 192
    const/16 v65, 0x0

    .line 193
    .line 194
    const/16 v66, 0x0

    .line 195
    .line 196
    const/16 v67, 0x0

    .line 197
    .line 198
    const/16 v68, 0x0

    .line 199
    .line 200
    const/16 v69, 0x0

    .line 201
    .line 202
    const/16 v70, 0x0

    .line 203
    .line 204
    const/16 v71, 0x0

    .line 205
    .line 206
    const/16 v72, 0x0

    .line 207
    .line 208
    const/16 v73, 0x0

    .line 209
    .line 210
    const/16 v74, 0x0

    .line 211
    .line 212
    const/16 v75, 0x0

    .line 213
    .line 214
    const/16 v76, 0x0

    .line 215
    .line 216
    const/16 v77, 0x0

    .line 217
    .line 218
    const/16 v78, 0x0

    .line 219
    .line 220
    const/16 v79, 0x0

    .line 221
    .line 222
    const/16 v80, 0x0

    .line 223
    .line 224
    const/16 v81, 0x0

    .line 225
    .line 226
    const/16 v82, 0x0

    .line 227
    .line 228
    const/16 v83, 0x0

    .line 229
    .line 230
    const/16 v84, 0x0

    .line 231
    .line 232
    const/16 v85, 0x0

    .line 233
    .line 234
    const/16 v86, 0x0

    .line 235
    .line 236
    const/16 v87, 0x0

    .line 237
    .line 238
    const/16 v88, 0x0

    .line 239
    .line 240
    const/16 v89, 0x0

    .line 241
    .line 242
    const/high16 v90, 0x67c0000

    .line 243
    .line 244
    const v91, -0x10002

    .line 245
    .line 246
    .line 247
    move-object v3, v4

    .line 248
    move-object v4, v5

    .line 249
    move-object v5, v10

    .line 250
    move-object/from16 v10, v94

    .line 251
    .line 252
    move-object/from16 v11, v95

    .line 253
    .line 254
    invoke-direct/range {v2 .. v93}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 255
    .line 256
    .line 257
    return-object v0
.end method

.method public final d()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v4, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v4, p0, v0}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method
