.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/d;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lur/m;

.field private c:Lur/n;

.field private final d:Lui/m0;

.field private final e:Lui/s0;

.field private f:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->d:Lui/m0;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->e:Lui/s0;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic m()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->r()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->q(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lur/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->b:Lur/m;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lur/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->c:Lur/n;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final q(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/DownloadItem;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->k:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$a;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$a;->a(I)Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->O0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "DownloadingTipsDialogFragment"

    .line 35
    .line 36
    invoke-virtual {p1, p2, p0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private static final r()Lcom/transsnet/downloader/manager/g;
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

.method private final s()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->a:Lkotlin/Lazy;

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

.method private final t(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/ShortTVItem;
    .locals 26

    .line 1
    new-instance v10, Lcom/transsion/shorttv/bean/Video;

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    move-object v6, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v0, v10

    .line 48
    invoke-direct/range {v0 .. v9}, Lcom/transsion/shorttv/bean/Video;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v17, Lcom/transsion/shorttv/bean/Media;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object/from16 v0, v17

    .line 57
    .line 58
    move-object v7, v10

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/transsion/shorttv/bean/Media;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Lcom/transsion/shorttv/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv/bean/Video;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 81
    .line 82
    .line 83
    move-result-wide v20

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 85
    .line 86
    .line 87
    move-result v22

    .line 88
    const/16 v24, 0x4d0

    .line 89
    .line 90
    const/16 v25, 0x0

    .line 91
    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/16 v18, 0x0

    .line 95
    .line 96
    const/16 v19, 0x0

    .line 97
    .line 98
    const/16 v23, 0x0

    .line 99
    .line 100
    move-object v11, v0

    .line 101
    invoke-direct/range {v11 .. v25}, Lcom/transsion/shorttv/bean/ShortTVItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transsion/shorttv/bean/Media;Lcom/transsion/shorttv/bean/Link;Ljava/lang/String;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method

.method private final u(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/Subject;
    .locals 80

    .line 1
    new-instance v0, Lcom/transsion/shorttv/bean/Cover;

    .line 2
    .line 3
    move-object/from16 v17, v0

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const/16 v10, 0x1d7

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/transsion/shorttv/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v13

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v15

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v32

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 43
    .line 44
    .line 45
    move-result v48

    .line 46
    new-instance v1, Lcom/transsion/shorttv/bean/Subject;

    .line 47
    .line 48
    move-object v12, v1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    const v78, 0x3ffffff7    # 1.9999989f

    .line 54
    .line 55
    .line 56
    const/16 v79, 0x0

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v18, 0x0

    .line 61
    .line 62
    const/16 v19, 0x0

    .line 63
    .line 64
    const/16 v20, 0x0

    .line 65
    .line 66
    const/16 v21, 0x0

    .line 67
    .line 68
    const/16 v22, 0x0

    .line 69
    .line 70
    const/16 v23, 0x0

    .line 71
    .line 72
    const/16 v24, 0x0

    .line 73
    .line 74
    const/16 v25, 0x0

    .line 75
    .line 76
    const/16 v26, 0x0

    .line 77
    .line 78
    const/16 v27, 0x0

    .line 79
    .line 80
    const/16 v28, 0x0

    .line 81
    .line 82
    const/16 v29, 0x0

    .line 83
    .line 84
    const/16 v30, 0x0

    .line 85
    .line 86
    const/16 v31, 0x0

    .line 87
    .line 88
    const/16 v33, 0x0

    .line 89
    .line 90
    const/16 v34, 0x0

    .line 91
    .line 92
    const/16 v35, 0x0

    .line 93
    .line 94
    const/16 v36, 0x0

    .line 95
    .line 96
    const/16 v37, 0x0

    .line 97
    .line 98
    const/16 v38, 0x0

    .line 99
    .line 100
    const/16 v39, 0x0

    .line 101
    .line 102
    const/16 v40, 0x0

    .line 103
    .line 104
    const/16 v41, 0x0

    .line 105
    .line 106
    const/16 v42, 0x0

    .line 107
    .line 108
    const/16 v43, 0x0

    .line 109
    .line 110
    const/16 v44, 0x0

    .line 111
    .line 112
    const/16 v45, 0x0

    .line 113
    .line 114
    const/16 v46, 0x0

    .line 115
    .line 116
    const/16 v47, 0x0

    .line 117
    .line 118
    const/16 v49, 0x0

    .line 119
    .line 120
    const/16 v50, 0x0

    .line 121
    .line 122
    const-wide/16 v51, 0x0

    .line 123
    .line 124
    const/16 v53, 0x0

    .line 125
    .line 126
    const/16 v54, 0x0

    .line 127
    .line 128
    const-wide/16 v55, 0x0

    .line 129
    .line 130
    const/16 v57, 0x0

    .line 131
    .line 132
    const/16 v58, 0x0

    .line 133
    .line 134
    const/16 v59, 0x0

    .line 135
    .line 136
    const/16 v60, 0x0

    .line 137
    .line 138
    const/16 v61, 0x0

    .line 139
    .line 140
    const/16 v62, 0x0

    .line 141
    .line 142
    const/16 v63, 0x0

    .line 143
    .line 144
    const/16 v64, 0x0

    .line 145
    .line 146
    const/16 v65, 0x0

    .line 147
    .line 148
    const/16 v66, 0x0

    .line 149
    .line 150
    const/16 v67, 0x0

    .line 151
    .line 152
    const/16 v68, 0x0

    .line 153
    .line 154
    const/16 v69, 0x0

    .line 155
    .line 156
    const/16 v70, 0x0

    .line 157
    .line 158
    const/16 v71, 0x0

    .line 159
    .line 160
    const/16 v72, 0x0

    .line 161
    .line 162
    const/16 v73, 0x0

    .line 163
    .line 164
    const/16 v74, 0x0

    .line 165
    .line 166
    const/16 v75, 0x0

    .line 167
    .line 168
    const/16 v76, 0x0

    .line 169
    .line 170
    const v77, -0x80018

    .line 171
    .line 172
    .line 173
    invoke-direct/range {v12 .. v79}, Lcom/transsion/shorttv/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/shorttv/bean/SubjectDl;Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Lcom/transsion/shorttv/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/transsion/shorttv/bean/PlayUrl;IILjava/util/List;ILcom/transsion/shorttv/bean/SkuInfo;ILjava/util/Set;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    .line 175
    .line 176
    return-object v1
.end method

.method private final v(Lcom/transsion/shorttv/bean/DownloadListBean;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/DownloadItem;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 95

    .line 1
    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v92, ""

    if-nez v0, :cond_0

    move-object/from16 v1, v92

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v2, v92

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 4
    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v3, v92

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v93, v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v93, v92

    .line 6
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v5

    const v90, 0xffff

    const/16 v91, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, -0x20

    const/16 v89, -0x1

    move-object v0, v4

    move-object/from16 v94, v4

    move-object/from16 v4, v93

    .line 7
    invoke-direct/range {v0 .. v91}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object/from16 v2, v94

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getGenre()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v1, v0

    goto :goto_5

    :goto_7
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    if-eqz p2, :cond_8

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v0

    :goto_8
    if-nez v1, :cond_a

    move-object/from16 v1, v92

    :cond_a
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_c
    move-object v1, v0

    :cond_d
    :goto_9
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCountryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_f
    move-object v1, v0

    :cond_10
    :goto_a
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_11
    move-object v1, v0

    :goto_b
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_12
    move-object v1, v0

    :goto_c
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    if-eqz p2, :cond_13

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_13
    move-object v1, v0

    :goto_d
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    if-eqz p2, :cond_14

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_14
    move-object v1, v0

    :goto_e
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    if-eqz p1, :cond_15

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_15
    move-object v1, v0

    :goto_f
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAverageHueLight(Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getUploadBy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move-object/from16 v1, v92

    :cond_16
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getEpse()Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    :cond_17
    move v1, v3

    :goto_10
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    .line 22
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getEp()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    .line 23
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getSe()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    .line 24
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getResolution()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_18
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    if-eqz p1, :cond_19

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_19
    move-object v1, v0

    :goto_11
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_1b
    move-object v1, v0

    :cond_1c
    :goto_12
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    move-object/from16 v1, p4

    .line 27
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    move-object/from16 v1, p5

    .line 28
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 29
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object/from16 v1, v92

    :cond_1d
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRequireMemberType(Ljava/lang/Integer;)V

    .line 33
    sget-object v1, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getSubjectType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_13

    :cond_1e
    move-object v3, v0

    :goto_13
    invoke-virtual {v1, v3}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    if-eqz p1, :cond_1f

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getSubjectType()I

    move-result v1

    goto :goto_14

    :cond_1f
    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v1

    :goto_14
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    if-eqz p1, :cond_20

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_20
    move-object v1, v0

    :goto_15
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectDurationSeconds(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getTotalEpisode()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_16

    :cond_21
    move v3, v1

    :goto_16
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    if-eqz p1, :cond_22

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v3

    if-le v0, v3, :cond_23

    .line 38
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setMultiresolution(I)V

    :cond_23
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsnet/downloader/manager/g;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

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
    iput v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

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
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput v3, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

    .line 60
    .line 61
    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->v(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-ne p2, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 69
    .line 70
    new-instance p1, Ljava/util/ArrayList;

    .line 71
    .line 72
    const/16 v0, 0xa

    .line 73
    .line 74
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->t(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    return-object p1
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->d:Lui/m0;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->k(Lui/m0;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->b:Lur/m;

    .line 12
    .line 13
    return-void
.end method

.method public d(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-wide v4, p3

    .line 10
    move-object v6, p5

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d0(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public e(J)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->t()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/n;->j(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Lcom/transsnet/downloader/manager/g;->w()Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    :goto_0
    add-long/2addr p1, v3

    .line 48
    cmp-long p1, p1, v0

    .line 49
    .line 50
    if-ltz p1, :cond_2

    .line 51
    .line 52
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 53
    .line 54
    sget p2, Lcom/transsion/baseui/R$string;->insufficient_storage_available:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 60
    .line 61
    const-string p2, "--- \u53ef\u7528\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u91ca\u653e\u7a7a\u95f4\u5e76\u91cd\u8bd5 ---"

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, p2, v0}, Lwf/a$a;->o(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :catchall_0
    :cond_2
    return v2
.end method

.method public f(Ljava/lang/String;)Lcom/transsion/shorttv/bean/DownloadItem;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    new-instance v1, Lcom/transsion/shorttv/bean/DownloadItem;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_2
    move-object v3, v2

    .line 39
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-wide/16 v6, 0x0

    .line 59
    .line 60
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSourceUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    move-object v2, v1

    .line 110
    invoke-direct/range {v2 .. v17}, Lcom/transsion/shorttv/bean/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    const-string v0, ""

    .line 120
    .line 121
    :cond_4
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/bean/DownloadItem;->setTaskId(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_1
    return-object v1
.end method

.method public g(Lcom/transsion/shorttv/bean/DownloadListBean;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    check-cast p6, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p6

    .line 17
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v8, v1

    .line 28
    check-cast v8, Lcom/transsion/shorttv/bean/DownloadItem;

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object v6, p4

    .line 35
    move-object v7, p5

    .line 36
    invoke-direct/range {v2 .. v8}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->v(Lcom/transsion/shorttv/bean/DownloadListBean;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/DownloadItem;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iput-object v1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 45
    .line 46
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->C(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public h(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/DownloadItem;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "formatSize"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const p4, 0x1020002

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    check-cast p4, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/d;

    .line 26
    .line 27
    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/postdetail/shorttv/factory/d;-><init>(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 p1, 0x12c

    .line 31
    .line 32
    invoke-virtual {p4, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

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
    iput v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

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
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput v3, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

    .line 60
    .line 61
    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->v(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-ne p2, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->u(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/Subject;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    const/4 p1, 0x0

    .line 84
    :goto_2
    return-object p1
.end method

.method public j(Lur/m;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->b:Lur/m;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->d:Lui/m0;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->g(Lui/m0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public k(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lur/d$a;->a(Lur/d;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public l(Lur/n;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->c:Lur/n;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->e:Lui/s0;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->E(Lui/s0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
