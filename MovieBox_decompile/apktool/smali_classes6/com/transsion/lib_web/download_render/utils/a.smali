.class public final Lcom/transsion/lib_web/download_render/utils/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/utils/a;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/lib_web/download_render/utils/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/utils/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
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

.method private final c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :catchall_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method private final l(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V
    .locals 18

    .line 1
    move-object/from16 v14, p1

    .line 2
    .line 3
    const-string v0, "url"

    .line 4
    .line 5
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "source"

    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    sget-object v15, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance v13, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/lib_web/download_render/utils/RenderSource;->getDes()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    const/16 v12, 0x3f8

    .line 31
    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    move-object v0, v13

    .line 42
    move-object/from16 v1, p1

    .line 43
    .line 44
    move-object/from16 v17, v13

    .line 45
    .line 46
    move-object/from16 v13, v16

    .line 47
    .line 48
    invoke-direct/range {v0 .. v13}, Lcom/transsion/lib_web/download_render/utils/RenderStage;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    move-object/from16 v0, v17

    .line 52
    .line 53
    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :catchall_0
    return-void
.end method

.method public final b()V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageListData;->getH5Pages()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/PageListData;->getLocalH5Pages()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_2
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_3
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    check-cast v1, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_a

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/transsion/lib_web/download_render/data/PageData;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/transsion/lib_web/download_render/data/PageData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    const-string v6, ""

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    if-nez v5, :cond_7

    .line 74
    .line 75
    :try_start_1
    new-instance v5, Lcom/transsion/lib_web/download_render/utils/DownloadData;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-nez v8, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    move-object v6, v8

    .line 85
    :goto_1
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move v3, v7

    .line 97
    :goto_2
    invoke-direct {v5, v4, v6, v3, v7}, Lcom/transsion/lib_web/download_render/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    new-instance v8, Lcom/transsion/lib_web/download_render/utils/DownloadData;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-nez v9, :cond_8

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_8
    move-object v6, v9

    .line 114
    :goto_3
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_9

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    :cond_9
    invoke-virtual {v5}, Lcom/transsion/lib_web/download_render/data/PageData;->getLocalFileMap()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    invoke-direct {v8, v4, v6, v7, v3}, Lcom/transsion/lib_web/download_render/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_a
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    :catchall_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setException(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setException(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setException(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileDataNull(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileDataNull(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileDataNull(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileOperateStatusAbort(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileOperateStatusAbort(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileOperateStatusAbort(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileUnExist(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileUnExist(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileUnExist(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setHtmlFromRemote(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setHtmlFromRemote(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setHtmlFromRemote(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setScore(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setScore(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setScore(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setNeedReport(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "originalUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/16 p2, 0x64

    .line 18
    .line 19
    if-ne p3, p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->p(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setRenderWithDownload(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "<get-keys>(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "first(...)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/transsion/lib_web/download_render/utils/a;->q(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v3, "<get-values>(...)"

    .line 41
    .line 42
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->c(Lcom/transsion/lib_web/download_render/utils/RenderStage;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/transsion/lib_web/download_render/utils/a;->l(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/CacheType;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cacheType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/lib_web/download_render/utils/CacheType;->getDes()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setType(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setStageFinished(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderStartTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sub-long/2addr v1, v3

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setRenderTime(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setStageFinished(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderStartTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sub-long/2addr v1, v3

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setRenderTime(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setStageFinished(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderStartTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sub-long/2addr v1, v3

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setRenderTime(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
