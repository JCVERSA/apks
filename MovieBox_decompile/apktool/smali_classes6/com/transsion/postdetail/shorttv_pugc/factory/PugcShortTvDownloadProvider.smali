.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvs/c;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lvs/j;

.field private final c:Lui/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv_pugc/factory/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->c:Lui/m0;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic f()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->h()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)Lvs/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->b:Lvs/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final h()Lcom/transsnet/downloader/manager/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final i()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 32

    .line 1
    new-instance v12, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    move-object v0, v12

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->videoUGCId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v13, Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 13
    .line 14
    move-object v5, v13

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v17

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v19

    .line 23
    const/16 v23, 0x1d7

    .line 24
    .line 25
    const/16 v24, 0x0

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const/16 v18, 0x0

    .line 32
    .line 33
    const/16 v20, 0x0

    .line 34
    .line 35
    const/16 v21, 0x0

    .line 36
    .line 37
    const/16 v22, 0x0

    .line 38
    .line 39
    invoke-direct/range {v13 .. v24}, Lcom/transsion/shorttv_pugc/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    new-instance v14, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 51
    .line 52
    move-object v13, v14

    .line 53
    const/16 v19, 0xf

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    invoke-direct/range {v14 .. v20}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    new-instance v21, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 61
    .line 62
    move-object/from16 v14, v21

    .line 63
    .line 64
    const/16 v29, 0x7f

    .line 65
    .line 66
    const/16 v30, 0x0

    .line 67
    .line 68
    const/16 v23, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    const/16 v27, 0x0

    .line 75
    .line 76
    const/16 v28, 0x0

    .line 77
    .line 78
    invoke-direct/range {v21 .. v30}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->videoUGCPosition()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v17

    .line 89
    new-instance v16, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 90
    .line 91
    move-object/from16 v15, v16

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v19

    .line 97
    const/16 v21, 0xa

    .line 98
    .line 99
    invoke-direct/range {v16 .. v22}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    const v25, 0xff0bac

    .line 107
    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v10, 0x0

    .line 115
    const/16 v17, 0x0

    .line 116
    .line 117
    move-object/from16 v31, v12

    .line 118
    .line 119
    move-object/from16 v12, v17

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v21, 0x0

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v24, 0x0

    .line 128
    .line 129
    invoke-direct/range {v0 .. v26}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move-object/from16 v1, v31

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setPlayUrl(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v1
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "collectionId"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/16 v15, 0x1f04

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    move-object/from16 v5, p3

    .line 38
    .line 39
    move-object/from16 v7, p5

    .line 40
    .line 41
    move-object/from16 v8, p6

    .line 42
    .line 43
    move-object/from16 v9, p7

    .line 44
    .line 45
    invoke-static/range {v1 .. v16}, Lcom/transsnet/downloader/DownloadManagerApi;->g0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

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
    iput v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_3
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v4, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->P(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-ne p2, v1, :cond_4

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 73
    .line 74
    if-eqz p2, :cond_7

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Iterable;

    .line 77
    .line 78
    new-instance p1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v1, v0

    .line 98
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 111
    .line 112
    const/16 p2, 0xa

    .line 113
    .line 114
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_7

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 136
    .line 137
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->j(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-interface {v3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    return-object v3
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->i()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->c:Lui/m0;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->k(Lui/m0;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->b:Lvs/j;

    .line 12
    .line 13
    return-void
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

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
    iput v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_3
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v4, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-ne p2, v1, :cond_4

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_4
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 73
    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->j(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :cond_5
    return-object v3
.end method

.method public e(Lvs/j;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->b:Lvs/j;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->i()Lcom/transsnet/downloader/manager/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->c:Lui/m0;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->g(Lui/m0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
