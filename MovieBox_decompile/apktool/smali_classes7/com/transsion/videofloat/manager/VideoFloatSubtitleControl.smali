.class public final Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

.field private final b:Ldw/a;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:F

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/widget/SimpleSubtitleView;Ldw/a;)V
    .locals 1

    .line 1
    const-string v0, "subtitleView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "floatBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 17
    .line 18
    const-string p1, "VideoFloatSubtitle"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d:Z

    .line 24
    .line 25
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f:F

    .line 28
    .line 29
    new-instance p1, Lcom/transsion/videofloat/manager/j;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/transsion/videofloat/manager/j;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->g:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance p1, Lcom/transsion/videofloat/manager/k;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/transsion/videofloat/manager/k;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->h:Lkotlin/Lazy;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->o()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static synthetic a()Lui/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->i()Lui/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->x()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lui/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->j()Lui/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ldw/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->l()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->n(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->t(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i()Lui/c;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Lui/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final j()Lui/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lui/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n(Ljava/lang/String;Ljava/util/List;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/transsion/subtitle/helper/c;->a()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v6, "------------------cur  language = "

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "\uff0c country = "

    .line 31
    .line 32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v7, 0x1

    .line 43
    invoke-virtual {v1, v2, v3, v7}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "k_subtitle_language"

    .line 53
    .line 54
    const-string v8, ""

    .line 55
    .line 56
    invoke-virtual {v2, v3, v8}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "initDefaultSubtitle savedDiffId = "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, "\uff0c savedLan = "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v5, 0x4

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v2, 0x0

    .line 98
    move-object v3, v2

    .line 99
    move-object v4, v3

    .line 100
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lht/a;

    .line 111
    .line 112
    invoke-virtual {v5}, Lht/a;->d()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v10, "en"

    .line 128
    .line 129
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_2

    .line 134
    .line 135
    move-object v3, v5

    .line 136
    :cond_2
    if-eqz p1, :cond_3

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_4

    .line 143
    .line 144
    :cond_3
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_4

    .line 161
    .line 162
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 171
    .line 172
    iget-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v11, "111 phone set def language = "

    .line 180
    .line 181
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v4, v6, v10, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    :goto_1
    move-object v4, v5

    .line 195
    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_5

    .line 209
    .line 210
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 219
    .line 220
    iget-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 221
    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v11, "222 saved flag = "

    .line 228
    .line 229
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v4, v6, v10, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_5
    if-eqz p1, :cond_6

    .line 244
    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-nez v6, :cond_0

    .line 250
    .line 251
    :cond_6
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_0

    .line 264
    .line 265
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 274
    .line 275
    iget-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 276
    .line 277
    new-instance v10, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v11, "555 local set savedLan = "

    .line 283
    .line 284
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v4, v6, v10, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_7
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-nez p1, :cond_b

    .line 303
    .line 304
    if-eqz v3, :cond_8

    .line 305
    .line 306
    invoke-virtual {v3}, Lht/a;->d()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_8

    .line 311
    .line 312
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 321
    .line 322
    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 323
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v1, "333 english set def language = "

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {p1, p2, v0, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_8
    move-object p1, p2

    .line 346
    check-cast p1, Ljava/util/Collection;

    .line 347
    .line 348
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-nez p1, :cond_b

    .line 353
    .line 354
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result p2

    .line 362
    if-eqz p2, :cond_a

    .line 363
    .line 364
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    check-cast p2, Lht/a;

    .line 369
    .line 370
    invoke-virtual {p2}, Lht/a;->d()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_9

    .line 375
    .line 376
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    move-object v3, p2

    .line 385
    goto :goto_2

    .line 386
    :cond_a
    move-object v3, v4

    .line 387
    :goto_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-nez p1, :cond_c

    .line 392
    .line 393
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 394
    .line 395
    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 396
    .line 397
    const-string v0, "\u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    .line 398
    .line 399
    invoke-virtual {p1, p2, v0, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_b
    move-object v3, v4

    .line 404
    :cond_c
    :goto_3
    if-eqz v3, :cond_d

    .line 405
    .line 406
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    if-eqz p1, :cond_d

    .line 411
    .line 412
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    if-eqz p1, :cond_d

    .line 417
    .line 418
    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 419
    .line 420
    invoke-virtual {p2, p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setDefaultSubtitle(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_d
    if-eqz v3, :cond_e

    .line 424
    .line 425
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    if-eqz p1, :cond_e

    .line 430
    .line 431
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    if-eqz p1, :cond_e

    .line 436
    .line 437
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 438
    .line 439
    .line 440
    move-result-wide p1

    .line 441
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 442
    .line 443
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 444
    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v5, "default delayDuration = "

    .line 451
    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-virtual {v0, v1, v4, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 466
    .line 467
    invoke-virtual {v0, p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 468
    .line 469
    .line 470
    :cond_e
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 471
    .line 472
    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 473
    .line 474
    if-eqz v3, :cond_f

    .line 475
    .line 476
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    if-eqz v0, :cond_f

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    goto :goto_4

    .line 487
    :cond_f
    move-object v0, v2

    .line 488
    :goto_4
    if-eqz v3, :cond_10

    .line 489
    .line 490
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    if-eqz v1, :cond_10

    .line 495
    .line 496
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    const-string v3, "default select subtitle defDiffId = "

    .line 506
    .line 507
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v3, ", name= "

    .line 514
    .line 515
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v0, "\uff0cpath:"

    .line 522
    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {p1, p2, v0, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 534
    .line 535
    .line 536
    return-void
.end method

.method private final o()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldw/a;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 14
    .line 15
    invoke-virtual {v2}, Ldw/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "float subtitle----intercept\uff0c "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 42
    .line 43
    new-instance v1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$a;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$a;-><init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Lk5/a;Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v4, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-direct {v4, p0, v0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;-><init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final t(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lht/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lht/a;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method private static final x()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldw/a;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldw/a;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->b:Ldw/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldw/a;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->a:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public final v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final w(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f:F

    .line 2
    .line 3
    return-void
.end method
