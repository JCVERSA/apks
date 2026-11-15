.class public final Lcom/transsnet/downloader/util/DownloadTransferUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/util/DownloadTransferUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/DownloadTransferUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadTransferUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/util/DownloadTransferUtils;->a:Lcom/transsnet/downloader/util/DownloadTransferUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->f(Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/util/Map;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->d(Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->h(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "http"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v8, 0x4

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    move v5, p2

    .line 35
    invoke-static/range {v3 .. v9}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v1, p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    :goto_0
    return-object v1
.end method

.method private static final f(Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/util/Map;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "pathMap"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "Transfer_d"

    .line 11
    .line 12
    const-string v3, "getTransferDataList-----2"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v2, v0

    .line 30
    move-object v3, p0

    .line 31
    move-object v4, p3

    .line 32
    move v5, p1

    .line 33
    move-object v6, p2

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;-><init>(Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v4, v0

    .line 42
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private final g(Lkotlinx/coroutines/n0;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v3, Lcom/transsnet/downloader/util/DownloadTransferUtils$loadPath$1;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {v3, p3, p4, p2, v0}, Lcom/transsnet/downloader/util/DownloadTransferUtils$loadPath$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    move-object v0, p1

    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final h(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;
    .locals 18

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ".mp4"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    move-object v1, v2

    .line 63
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-lez v4, :cond_4

    .line 80
    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v4, "getName(...)"

    .line 91
    .line 92
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    move-object v7, v0

    .line 96
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v4, "transLocalData2FileData: coverImagePath:"

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", coverPath:"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    const/4 v12, 0x4

    .line 126
    const/4 v13, 0x0

    .line 127
    const-string v9, "Transfer_d"

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/transsion/transfer/impl/entity/FileData;

    .line 134
    .line 135
    if-nez v3, :cond_5

    .line 136
    .line 137
    move-object v6, v2

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    move-object v6, v3

    .line 140
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    :goto_2
    move-wide v8, v2

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    const-wide/16 v2, 0x0

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :goto_3
    const/16 v16, 0xf0

    .line 156
    .line 157
    const/16 v17, 0x0

    .line 158
    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v13, 0x0

    .line 162
    const-wide/16 v14, 0x0

    .line 163
    .line 164
    move-object v5, v0

    .line 165
    move-object/from16 v10, p1

    .line 166
    .line 167
    invoke-direct/range {v5 .. v17}, Lcom/transsion/transfer/impl/entity/FileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    .line 169
    .line 170
    move-object/from16 v1, p2

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 173
    .line 174
    .line 175
    return-object v0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "callback"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v3, v1

    .line 18
    check-cast v3, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    :cond_0
    move-object/from16 v1, p0

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    const/high16 v3, 0x42f00000    # 120.0f

    .line 33
    .line 34
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    new-instance v11, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    move-object v4, v1

    .line 44
    check-cast v4, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_6

    .line 55
    .line 56
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x2

    .line 68
    const/4 v15, 0x0

    .line 69
    const-string v10, "http"

    .line 70
    .line 71
    const/4 v9, 0x1

    .line 72
    if-ne v5, v9, :cond_4

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v16

    .line 84
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v5, :cond_2

    .line 101
    .line 102
    invoke-static {v5, v10, v15, v14, v13}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-ne v5, v9, :cond_2

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_2

    .line 113
    .line 114
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 115
    .line 116
    const/16 v17, 0x4

    .line 117
    .line 118
    const/16 v18, 0x0

    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x1

    .line 122
    move v6, v3

    .line 123
    move/from16 v9, v17

    .line 124
    .line 125
    move-object/from16 v17, v12

    .line 126
    .line 127
    move-object v12, v10

    .line 128
    move-object/from16 v10, v18

    .line 129
    .line 130
    invoke-static/range {v4 .. v10}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    move-object/from16 v17, v12

    .line 139
    .line 140
    move-object v12, v10

    .line 141
    :goto_2
    move-object v10, v12

    .line 142
    move-object/from16 v12, v17

    .line 143
    .line 144
    const/4 v9, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    move-object/from16 v17, v12

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    move-object/from16 v17, v12

    .line 150
    .line 151
    move-object v12, v10

    .line 152
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-eqz v5, :cond_5

    .line 157
    .line 158
    invoke-static {v5, v12, v15, v14, v13}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v6, 0x1

    .line 163
    if-ne v5, v6, :cond_5

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-eqz v5, :cond_5

    .line 170
    .line 171
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 172
    .line 173
    const/4 v9, 0x4

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    const/4 v8, 0x1

    .line 177
    move v6, v3

    .line 178
    invoke-static/range {v4 .. v10}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_5
    :goto_3
    move-object/from16 v12, v17

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_6
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 190
    .line 191
    const/4 v9, 0x4

    .line 192
    const/4 v10, 0x0

    .line 193
    const-string v6, "Transfer_d"

    .line 194
    .line 195
    const-string v7, "getTransferDataList-----1"

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    new-instance v5, Lcom/transsnet/downloader/util/k;

    .line 210
    .line 211
    invoke-direct {v5, v1, v3, v2}, Lcom/transsnet/downloader/util/k;-><init>(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v1, p0

    .line 215
    .line 216
    invoke-direct {v1, v4, v0, v11, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->g(Lkotlinx/coroutines/n0;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    return-void
.end method
