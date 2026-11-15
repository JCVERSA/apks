.class public final Lcom/transsnet/downloader/viewmodel/DownloadListManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

.field private static final n:Lkotlin/Lazy;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Landroidx/lifecycle/b0;

.field private h:Landroidx/lifecycle/b0;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;

.field private j:Landroidx/lifecycle/b0;

.field private k:Z

.field private l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsnet/downloader/viewmodel/c;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsnet/downloader/viewmodel/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->n:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/downloader/viewmodel/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/d;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsnet/downloader/viewmodel/e;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/e;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsnet/downloader/viewmodel/f;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/f;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->c:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/transsnet/downloader/viewmodel/g;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/g;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->d:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/transsnet/downloader/viewmodel/h;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/h;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->e:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/transsnet/downloader/viewmodel/i;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/i;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->f:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k:Z

    .line 79
    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    .line 86
    .line 87
    return-void
.end method

.method public static synthetic I(Lcom/transsnet/downloader/viewmodel/DownloadListManager;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 12
    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->H(ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final L()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic N(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/lang/String;IILjava/lang/String;IILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    move v2, p2

    .line 7
    and-int/lit8 p2, p6, 0x4

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const/16 p3, 0x14

    .line 12
    .line 13
    :cond_1
    move v3, p3

    .line 14
    and-int/lit8 p2, p6, 0x8

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    const-string p4, ""

    .line 19
    .line 20
    :cond_2
    move-object v4, p4

    .line 21
    and-int/lit8 p2, p6, 0x10

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, "download_last_resolution"

    .line 32
    .line 33
    const/4 p4, 0x0

    .line 34
    invoke-virtual {p2, p3, p4}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p5

    .line 38
    :cond_3
    move v5, p5

    .line 39
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->M(Ljava/lang/String;IILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final R(Ljava/util/List;)Ljava/util/List;
    .locals 101

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    move-object/from16 v4, p1

    .line 14
    .line 15
    check-cast v4, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_4

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/util/List;

    .line 76
    .line 77
    if-eqz v6, :cond_0

    .line 78
    .line 79
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-array v7, v1, [Lcom/transsion/baselib/db/download/DownloadBean;

    .line 97
    .line 98
    aput-object v5, v7, v0

    .line 99
    .line 100
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_e

    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/util/Map$Entry;

    .line 131
    .line 132
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ne v5, v1, :cond_6

    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :cond_5
    move-object/from16 v1, p0

    .line 158
    .line 159
    move-object/from16 p1, v3

    .line 160
    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-le v5, v1, :cond_5

    .line 174
    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 186
    .line 187
    new-instance v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 188
    .line 189
    move-object v6, v9

    .line 190
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    const-wide/16 v98, 0x0

    .line 195
    .line 196
    invoke-static/range {v98 .. v99}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 205
    .line 206
    .line 207
    move-result-wide v24

    .line 208
    const v96, 0xffff

    .line 209
    .line 210
    .line 211
    const/16 v97, 0x0

    .line 212
    .line 213
    const/4 v12, 0x0

    .line 214
    const/4 v13, 0x0

    .line 215
    const/4 v14, 0x0

    .line 216
    const/4 v15, 0x0

    .line 217
    const-wide/16 v17, 0x0

    .line 218
    .line 219
    const/16 v19, 0x0

    .line 220
    .line 221
    const/16 v20, 0x0

    .line 222
    .line 223
    const/16 v21, 0x0

    .line 224
    .line 225
    const-wide/16 v22, 0x0

    .line 226
    .line 227
    const/16 v26, 0x0

    .line 228
    .line 229
    const/16 v27, 0x0

    .line 230
    .line 231
    const/16 v28, 0x0

    .line 232
    .line 233
    const/16 v29, 0x0

    .line 234
    .line 235
    const/16 v30, 0x0

    .line 236
    .line 237
    const/16 v31, 0x0

    .line 238
    .line 239
    const/16 v32, 0x0

    .line 240
    .line 241
    const/16 v33, 0x0

    .line 242
    .line 243
    const/16 v34, 0x0

    .line 244
    .line 245
    const/16 v35, 0x0

    .line 246
    .line 247
    const/16 v36, 0x0

    .line 248
    .line 249
    const/16 v37, 0x0

    .line 250
    .line 251
    const/16 v38, 0x0

    .line 252
    .line 253
    const/16 v39, 0x0

    .line 254
    .line 255
    const/16 v40, 0x0

    .line 256
    .line 257
    const-wide/16 v41, 0x0

    .line 258
    .line 259
    const/16 v43, 0x0

    .line 260
    .line 261
    const/16 v44, 0x0

    .line 262
    .line 263
    const/16 v45, 0x0

    .line 264
    .line 265
    const/16 v46, 0x0

    .line 266
    .line 267
    const-wide/16 v47, 0x0

    .line 268
    .line 269
    const/16 v49, 0x0

    .line 270
    .line 271
    const/16 v50, 0x0

    .line 272
    .line 273
    const-wide/16 v51, 0x0

    .line 274
    .line 275
    const/16 v53, 0x0

    .line 276
    .line 277
    const-wide/16 v54, 0x0

    .line 278
    .line 279
    const/16 v56, 0x0

    .line 280
    .line 281
    const/16 v57, 0x0

    .line 282
    .line 283
    const/16 v58, 0x0

    .line 284
    .line 285
    const/16 v59, 0x0

    .line 286
    .line 287
    const/16 v60, 0x0

    .line 288
    .line 289
    const/16 v61, 0x0

    .line 290
    .line 291
    const/16 v62, 0x0

    .line 292
    .line 293
    const/16 v63, 0x0

    .line 294
    .line 295
    const/16 v64, 0x0

    .line 296
    .line 297
    const/16 v65, 0x0

    .line 298
    .line 299
    const/16 v66, 0x0

    .line 300
    .line 301
    const/16 v67, 0x0

    .line 302
    .line 303
    const/16 v68, 0x0

    .line 304
    .line 305
    const/16 v69, 0x0

    .line 306
    .line 307
    const/16 v70, 0x0

    .line 308
    .line 309
    const/16 v71, 0x0

    .line 310
    .line 311
    const/16 v72, 0x0

    .line 312
    .line 313
    const/16 v73, 0x0

    .line 314
    .line 315
    const/16 v74, 0x0

    .line 316
    .line 317
    const/16 v75, 0x0

    .line 318
    .line 319
    const/16 v76, 0x0

    .line 320
    .line 321
    const/16 v77, 0x0

    .line 322
    .line 323
    const/16 v78, 0x0

    .line 324
    .line 325
    const/16 v79, 0x0

    .line 326
    .line 327
    const/16 v80, 0x0

    .line 328
    .line 329
    const/16 v81, 0x0

    .line 330
    .line 331
    const/16 v82, 0x0

    .line 332
    .line 333
    const/16 v83, 0x0

    .line 334
    .line 335
    const/16 v84, 0x0

    .line 336
    .line 337
    const/16 v85, 0x0

    .line 338
    .line 339
    const/16 v86, 0x0

    .line 340
    .line 341
    const/16 v87, 0x0

    .line 342
    .line 343
    const/16 v88, 0x0

    .line 344
    .line 345
    const/16 v89, 0x0

    .line 346
    .line 347
    const/16 v90, 0x0

    .line 348
    .line 349
    const/16 v91, 0x0

    .line 350
    .line 351
    const/16 v92, 0x0

    .line 352
    .line 353
    const/16 v93, 0x0

    .line 354
    .line 355
    const v94, -0x8220

    .line 356
    .line 357
    .line 358
    const/16 v95, -0x1

    .line 359
    .line 360
    const-string v7, "series"

    .line 361
    .line 362
    const-string v8, "series"

    .line 363
    .line 364
    const-string v100, ""

    .line 365
    .line 366
    move-object v0, v9

    .line 367
    move-object/from16 v9, v100

    .line 368
    .line 369
    invoke-direct/range {v6 .. v97}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 370
    .line 371
    .line 372
    const/16 v6, 0xa

    .line 373
    .line 374
    invoke-virtual {v0, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    check-cast v6, Ljava/util/List;

    .line 382
    .line 383
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-le v7, v1, :cond_7

    .line 388
    .line 389
    new-instance v7, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$lambda$14$$inlined$sortBy$1;

    .line 390
    .line 391
    invoke-direct {v7}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$lambda$14$$inlined$sortBy$1;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 395
    .line 396
    .line 397
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    check-cast v7, Ljava/util/Collection;

    .line 406
    .line 407
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    .line 409
    .line 410
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    check-cast v6, Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    move-object v15, v5

    .line 421
    move-wide/from16 v9, v98

    .line 422
    .line 423
    move-wide v11, v9

    .line 424
    move-wide v13, v11

    .line 425
    const/4 v7, 0x0

    .line 426
    const/4 v8, 0x0

    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v17

    .line 433
    if-eqz v17, :cond_d

    .line 434
    .line 435
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v17

    .line 439
    check-cast v17, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 440
    .line 441
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    move-object/from16 p1, v3

    .line 446
    .line 447
    const/16 v3, 0xe

    .line 448
    .line 449
    if-ne v1, v3, :cond_8

    .line 450
    .line 451
    move-object/from16 v3, p1

    .line 452
    .line 453
    const/4 v1, 0x1

    .line 454
    const/4 v8, 0x1

    .line 455
    goto :goto_2

    .line 456
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_9

    .line 461
    .line 462
    const/4 v7, 0x1

    .line 463
    :cond_9
    if-nez v16, :cond_a

    .line 464
    .line 465
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-nez v1, :cond_a

    .line 470
    .line 471
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_a

    .line 476
    .line 477
    move-object/from16 v15, v17

    .line 478
    .line 479
    const/16 v16, 0x1

    .line 480
    .line 481
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    if-eqz v1, :cond_b

    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 488
    .line 489
    .line 490
    move-result-wide v19

    .line 491
    goto :goto_3

    .line 492
    :cond_b
    move-wide/from16 v19, v98

    .line 493
    .line 494
    :goto_3
    add-long v9, v9, v19

    .line 495
    .line 496
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    if-eqz v1, :cond_c

    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 503
    .line 504
    .line 505
    move-result-wide v19

    .line 506
    goto :goto_4

    .line 507
    :cond_c
    move-wide/from16 v19, v98

    .line 508
    .line 509
    :goto_4
    add-long v11, v11, v19

    .line 510
    .line 511
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 512
    .line 513
    .line 514
    move-result-wide v19

    .line 515
    add-long v13, v13, v19

    .line 516
    .line 517
    move-object/from16 v3, p1

    .line 518
    .line 519
    const/4 v1, 0x1

    .line 520
    goto :goto_2

    .line 521
    :cond_d
    move-object/from16 p1, v3

    .line 522
    .line 523
    invoke-virtual {v0, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Ljava/util/List;

    .line 538
    .line 539
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    sub-int/2addr v1, v8

    .line 544
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCount(I)V

    .line 545
    .line 546
    .line 547
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSize(Ljava/lang/Long;)V

    .line 552
    .line 553
    .line 554
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v13, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    .line 618
    .line 619
    .line 620
    move-object/from16 v1, p0

    .line 621
    .line 622
    invoke-direct {v1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->c0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 623
    .line 624
    .line 625
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    :goto_5
    move-object/from16 v3, p1

    .line 629
    .line 630
    const/4 v0, 0x0

    .line 631
    const/4 v1, 0x1

    .line 632
    goto/16 :goto_1

    .line 633
    .line 634
    :cond_e
    move-object/from16 v1, p0

    .line 635
    .line 636
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    const/4 v3, 0x1

    .line 641
    if-le v0, v3, :cond_f

    .line 642
    .line 643
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$$inlined$sortByDescending$1;

    .line 644
    .line 645
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$$inlined$sortByDescending$1;-><init>()V

    .line 646
    .line 647
    .line 648
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 649
    .line 650
    .line 651
    :cond_f
    return-object v2
.end method

.method private final S(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    .line 16
    .line 17
    move-object v0, p1

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-lez v3, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method private final T(Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 95

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 9
    .line 10
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 11
    .line 12
    const-string v4, "ad"

    .line 13
    .line 14
    const-string v5, "ad"

    .line 15
    .line 16
    const-string v6, "ad"

    .line 17
    .line 18
    const-string v7, ""

    .line 19
    .line 20
    const-wide/16 v8, 0x0

    .line 21
    .line 22
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    const v93, 0xffff

    .line 27
    .line 28
    .line 29
    const/16 v94, 0x0

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const-wide/16 v14, 0x0

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const/16 v18, 0x0

    .line 43
    .line 44
    const-wide/16 v19, 0x0

    .line 45
    .line 46
    const-wide/16 v21, 0x0

    .line 47
    .line 48
    const/16 v23, 0x0

    .line 49
    .line 50
    const/16 v24, 0x0

    .line 51
    .line 52
    const/16 v25, 0x0

    .line 53
    .line 54
    const/16 v26, 0x0

    .line 55
    .line 56
    const/16 v27, 0x0

    .line 57
    .line 58
    const/16 v28, 0x0

    .line 59
    .line 60
    const/16 v29, 0x0

    .line 61
    .line 62
    const/16 v30, 0x0

    .line 63
    .line 64
    const/16 v31, 0x0

    .line 65
    .line 66
    const/16 v32, 0x0

    .line 67
    .line 68
    const/16 v33, 0x0

    .line 69
    .line 70
    const/16 v34, 0x0

    .line 71
    .line 72
    const/16 v35, 0x0

    .line 73
    .line 74
    const/16 v36, 0x0

    .line 75
    .line 76
    const/16 v37, 0x0

    .line 77
    .line 78
    const-wide/16 v38, 0x0

    .line 79
    .line 80
    const/16 v40, 0x0

    .line 81
    .line 82
    const/16 v41, 0x0

    .line 83
    .line 84
    const/16 v42, 0x0

    .line 85
    .line 86
    const/16 v43, 0x0

    .line 87
    .line 88
    const-wide/16 v44, 0x0

    .line 89
    .line 90
    const/16 v46, 0x0

    .line 91
    .line 92
    const/16 v47, 0x0

    .line 93
    .line 94
    const-wide/16 v48, 0x0

    .line 95
    .line 96
    const/16 v50, 0x0

    .line 97
    .line 98
    const-wide/16 v51, 0x0

    .line 99
    .line 100
    const/16 v53, 0x0

    .line 101
    .line 102
    const/16 v54, 0x0

    .line 103
    .line 104
    const/16 v55, 0x0

    .line 105
    .line 106
    const/16 v56, 0x0

    .line 107
    .line 108
    const/16 v57, 0x0

    .line 109
    .line 110
    const/16 v58, 0x0

    .line 111
    .line 112
    const/16 v59, 0x0

    .line 113
    .line 114
    const/16 v60, 0x0

    .line 115
    .line 116
    const/16 v61, 0x0

    .line 117
    .line 118
    const/16 v62, 0x0

    .line 119
    .line 120
    const/16 v63, 0x0

    .line 121
    .line 122
    const/16 v64, 0x0

    .line 123
    .line 124
    const/16 v65, 0x0

    .line 125
    .line 126
    const/16 v66, 0x0

    .line 127
    .line 128
    const/16 v67, 0x0

    .line 129
    .line 130
    const/16 v68, 0x0

    .line 131
    .line 132
    const/16 v69, 0x0

    .line 133
    .line 134
    const/16 v70, 0x0

    .line 135
    .line 136
    const/16 v71, 0x0

    .line 137
    .line 138
    const/16 v72, 0x0

    .line 139
    .line 140
    const/16 v73, 0x0

    .line 141
    .line 142
    const/16 v74, 0x0

    .line 143
    .line 144
    const/16 v75, 0x0

    .line 145
    .line 146
    const/16 v76, 0x0

    .line 147
    .line 148
    const/16 v77, 0x0

    .line 149
    .line 150
    const/16 v78, 0x0

    .line 151
    .line 152
    const/16 v79, 0x0

    .line 153
    .line 154
    const/16 v80, 0x0

    .line 155
    .line 156
    const/16 v81, 0x0

    .line 157
    .line 158
    const/16 v82, 0x0

    .line 159
    .line 160
    const/16 v83, 0x0

    .line 161
    .line 162
    const/16 v84, 0x0

    .line 163
    .line 164
    const/16 v85, 0x0

    .line 165
    .line 166
    const/16 v86, 0x0

    .line 167
    .line 168
    const/16 v87, 0x0

    .line 169
    .line 170
    const/16 v88, 0x0

    .line 171
    .line 172
    const/16 v89, 0x0

    .line 173
    .line 174
    const/16 v90, 0x0

    .line 175
    .line 176
    const/16 v91, -0x20

    .line 177
    .line 178
    const/16 v92, -0x1

    .line 179
    .line 180
    move-object v3, v2

    .line 181
    invoke-direct/range {v3 .. v94}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    .line 183
    .line 184
    const/16 v3, 0xd

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setWrapNativeManager(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->S0()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_1

    .line 197
    .line 198
    return-void

    .line 199
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    const/4 v3, 0x2

    .line 204
    if-lt v3, v1, :cond_2

    .line 205
    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    goto :goto_1

    .line 217
    :cond_2
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    goto :goto_2

    .line 227
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 228
    .line 229
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method private static final U()Lcom/transsnet/downloader/viewmodel/DownloadListManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final W()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final X()Lcx/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcx/a;

    .line 14
    .line 15
    return-object v0
.end method

.method public static synthetic a()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->X()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->y()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->w()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final c0(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public static synthetic d()Lcom/transsnet/downloader/viewmodel/DownloadListManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->U()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Lui/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->t()Lui/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->W()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->u()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->q(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->s(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->v(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->n:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/viewmodel/DownloadListManager;)Lcx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->L()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->S(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->T(Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q(Ljava/util/List;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_1

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    :goto_1
    move v8, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    goto :goto_1

    .line 80
    :goto_2
    const/4 v7, 0x0

    .line 81
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method private final s(Ljava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 11
    .line 12
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->s()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    array-length p1, p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p1, "download_ops"

    .line 45
    .line 46
    const-string v0, "delete_download_file"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 57
    .line 58
    const-string v1, "download"

    .line 59
    .line 60
    const-string v2, "app_perf"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, p1}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :goto_2
    return-void
.end method

.method private static final t()Lui/c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Lui/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method private static final u()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final v(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->R(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "2-  get getDownloadedList success = "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v4, 0x4

    .line 50
    const/4 v5, 0x0

    .line 51
    const-string v1, "DownloadPanel"

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object p2
.end method

.method private static final w()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    move-object v1, p1

    .line 78
    check-cast v1, Ljava/util/Collection;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_7

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v3, 0x0

    .line 91
    move v4, v3

    .line 92
    :goto_2
    if-ge v4, v2, :cond_5

    .line 93
    .line 94
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const/4 v4, -0x1

    .line 117
    :goto_3
    if-lez v4, :cond_6

    .line 118
    .line 119
    invoke-static {p1, v4, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    :cond_7
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "1 -- get getDownloadingList success = "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const/4 v9, 0x4

    .line 149
    const/4 v10, 0x0

    .line 150
    const-string v6, "DownloadPanel"

    .line 151
    .line 152
    const/4 v8, 0x0

    .line 153
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object v0
.end method

.method private static final y()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getDownloadedList$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getDownloadedList$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final F()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H(ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->E()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v2, v0

    .line 16
    move v3, p2

    .line 17
    move-object v4, p0

    .line 18
    move v5, p1

    .line 19
    move-object v6, p3

    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/DownloadListManager;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final J(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->G(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 10

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    move-object v2, v0

    .line 13
    move v3, p5

    .line 14
    move-object v4, p0

    .line 15
    move-object v5, p1

    .line 16
    move v6, p2

    .line 17
    move v7, p3

    .line 18
    move-object v8, p4

    .line 19
    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1;-><init>(ILcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v4, v0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "linkUrl"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/b0;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->L()Lcx/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 22
    .line 23
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1, p2, p1}, Lcx/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 32
    .line 33
    invoke-virtual {p2}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final Q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Y(Landroidx/lifecycle/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Landroidx/lifecycle/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Landroidx/lifecycle/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "downloadBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/b0;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    new-instance v1, Landroidx/lifecycle/b0;

    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/lifecycle/b0;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method
