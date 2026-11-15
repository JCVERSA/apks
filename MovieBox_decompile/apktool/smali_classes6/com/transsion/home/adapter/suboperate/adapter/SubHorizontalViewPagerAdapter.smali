.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/bean/OperateItem;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;II)V
    .locals 1

    .line 1
    const-string v0, "banners"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operateItem"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->a:Ljava/util/List;

    .line 15
    .line 16
    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 17
    .line 18
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    .line 19
    .line 20
    iput p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->d:I

    .line 21
    .line 22
    iput p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->e:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->l(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->m(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i(Lcom/transsion/home/bean/BannerData;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 65

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSeenStatus()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v17

    .line 24
    const v63, 0x3ffffff

    .line 25
    .line 26
    .line 27
    const/16 v64, 0x0

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v13, 0x0

    .line 39
    const/4 v14, 0x0

    .line 40
    const/4 v15, 0x0

    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    const/16 v19, 0x0

    .line 46
    .line 47
    const/16 v20, 0x0

    .line 48
    .line 49
    const/16 v21, 0x0

    .line 50
    .line 51
    const/16 v22, 0x0

    .line 52
    .line 53
    const/16 v23, 0x0

    .line 54
    .line 55
    const/16 v24, 0x0

    .line 56
    .line 57
    const/16 v25, 0x0

    .line 58
    .line 59
    const/16 v26, 0x0

    .line 60
    .line 61
    const/16 v27, 0x0

    .line 62
    .line 63
    const/16 v28, 0x0

    .line 64
    .line 65
    const/16 v29, 0x0

    .line 66
    .line 67
    const/16 v30, 0x0

    .line 68
    .line 69
    const/16 v31, 0x0

    .line 70
    .line 71
    const/16 v32, 0x0

    .line 72
    .line 73
    const/16 v33, 0x0

    .line 74
    .line 75
    const/16 v34, 0x0

    .line 76
    .line 77
    const/16 v35, 0x0

    .line 78
    .line 79
    const/16 v36, 0x0

    .line 80
    .line 81
    const/16 v37, 0x0

    .line 82
    .line 83
    const/16 v38, 0x0

    .line 84
    .line 85
    const/16 v39, 0x0

    .line 86
    .line 87
    const-wide/16 v40, 0x0

    .line 88
    .line 89
    const/16 v42, 0x0

    .line 90
    .line 91
    const/16 v43, 0x0

    .line 92
    .line 93
    const-wide/16 v44, 0x0

    .line 94
    .line 95
    const/16 v46, 0x0

    .line 96
    .line 97
    const/16 v47, 0x0

    .line 98
    .line 99
    const/16 v48, 0x0

    .line 100
    .line 101
    const/16 v49, 0x0

    .line 102
    .line 103
    const/16 v50, 0x0

    .line 104
    .line 105
    const/16 v51, 0x0

    .line 106
    .line 107
    const/16 v52, 0x0

    .line 108
    .line 109
    const/16 v53, 0x0

    .line 110
    .line 111
    const/16 v54, 0x0

    .line 112
    .line 113
    const/16 v55, 0x0

    .line 114
    .line 115
    const/16 v56, 0x0

    .line 116
    .line 117
    const/16 v57, 0x0

    .line 118
    .line 119
    const/16 v58, 0x0

    .line 120
    .line 121
    const/16 v59, 0x0

    .line 122
    .line 123
    const/16 v60, 0x0

    .line 124
    .line 125
    const/16 v61, 0x0

    .line 126
    .line 127
    const v62, -0x8004

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v1 .. v64}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method private static final l(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p3, "&module_name=opt_banner_free&autoPlay=true&ops="

    .line 24
    .line 25
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {v0, p3}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    if-eqz p3, :cond_0

    .line 44
    .line 45
    invoke-static {p3}, Lhr/c;->j(Landroid/net/Uri;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object p3, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/16 v5, 0xc

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    const-string p3, "play_subject"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string p3, "download_subject"

    .line 74
    .line 75
    :goto_0
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->p(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method private static final m(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V
    .locals 69

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/transsnet/downloader/widget/DownloadView;->getShowType()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    const-string v4, "opt_rank_list"

    .line 15
    .line 16
    if-eq v2, v3, :cond_2

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/transsnet/downloader/widget/DownloadView;->getShowType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x3

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 32
    .line 33
    iget v3, v1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_0
    move-object v6, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v5, 0x0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    const v67, 0x3ffffff

    .line 52
    .line 53
    .line 54
    const/16 v68, 0x0

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    const/4 v15, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const/16 v20, 0x0

    .line 74
    .line 75
    const/16 v21, 0x0

    .line 76
    .line 77
    const/16 v22, 0x0

    .line 78
    .line 79
    const/16 v23, 0x0

    .line 80
    .line 81
    const/16 v24, 0x0

    .line 82
    .line 83
    const/16 v25, 0x0

    .line 84
    .line 85
    const/16 v26, 0x0

    .line 86
    .line 87
    const/16 v27, 0x0

    .line 88
    .line 89
    const/16 v28, 0x0

    .line 90
    .line 91
    const/16 v29, 0x0

    .line 92
    .line 93
    const/16 v30, 0x0

    .line 94
    .line 95
    const/16 v31, 0x0

    .line 96
    .line 97
    const/16 v32, 0x0

    .line 98
    .line 99
    const/16 v33, 0x0

    .line 100
    .line 101
    const/16 v34, 0x0

    .line 102
    .line 103
    const/16 v35, 0x0

    .line 104
    .line 105
    const/16 v36, 0x0

    .line 106
    .line 107
    const/16 v37, 0x0

    .line 108
    .line 109
    const/16 v38, 0x0

    .line 110
    .line 111
    const/16 v39, 0x0

    .line 112
    .line 113
    const/16 v40, 0x0

    .line 114
    .line 115
    const/16 v41, 0x0

    .line 116
    .line 117
    const/16 v42, 0x0

    .line 118
    .line 119
    const/16 v43, 0x0

    .line 120
    .line 121
    const-wide/16 v44, 0x0

    .line 122
    .line 123
    const/16 v46, 0x0

    .line 124
    .line 125
    const/16 v47, 0x0

    .line 126
    .line 127
    const-wide/16 v48, 0x0

    .line 128
    .line 129
    const/16 v50, 0x0

    .line 130
    .line 131
    const/16 v51, 0x0

    .line 132
    .line 133
    const/16 v52, 0x0

    .line 134
    .line 135
    const/16 v53, 0x0

    .line 136
    .line 137
    const/16 v54, 0x0

    .line 138
    .line 139
    const/16 v55, 0x0

    .line 140
    .line 141
    const/16 v56, 0x0

    .line 142
    .line 143
    const/16 v57, 0x0

    .line 144
    .line 145
    const/16 v58, 0x0

    .line 146
    .line 147
    const/16 v59, 0x0

    .line 148
    .line 149
    const/16 v60, 0x0

    .line 150
    .line 151
    const/16 v61, 0x0

    .line 152
    .line 153
    const/16 v62, 0x0

    .line 154
    .line 155
    const/16 v63, 0x0

    .line 156
    .line 157
    const/16 v64, 0x0

    .line 158
    .line 159
    const/16 v65, 0x0

    .line 160
    .line 161
    const/16 v66, -0x2

    .line 162
    .line 163
    move-object v5, v3

    .line 164
    invoke-direct/range {v5 .. v68}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    move-object/from16 v5, p3

    .line 171
    .line 172
    invoke-static {v3, v2, v5, v4}, Lzk/h;->g(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    move/from16 v3, p4

    .line 177
    .line 178
    invoke-direct {v1, v0, v3, v2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->o(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 183
    .line 184
    sget-object v2, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSeenStatus()Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v2, v3, v5}, Lcom/transsion/edcation/CourseManager;->v(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->i(Lcom/transsion/home/bean/BannerData;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 202
    .line 203
    iget v1, v1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v0, v1, v4}, Lfk/a;->b(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    return-void
.end method

.method private final o(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "click_banner"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p2, "module_name"

    .line 23
    .line 24
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "tabId"

    .line 34
    .line 35
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v0}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 49
    .line 50
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 51
    .line 52
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final p(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "click_banner_poster"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p2, "module_name"

    .line 23
    .line 24
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "tabId"

    .line 34
    .line 35
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v0}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 49
    .line 50
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 51
    .line 52
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final q(Lcom/transsion/home/bean/BannerData;Lcom/transsnet/downloader/widget/DownloadView;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 20
    .line 21
    iget v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v1, v0

    .line 51
    :goto_1
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 61
    .line 62
    iget v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    sget-object v1, Lij/t;->a:Lij/t;

    .line 75
    .line 76
    invoke-virtual {v1}, Lij/t;->b()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectType()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ne v1, v3, :cond_4

    .line 95
    .line 96
    move v0, v2

    .line 97
    :cond_4
    if-nez v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    .line 100
    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_5
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_3
    move-object v1, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    const/4 p1, 0x0

    .line 112
    goto :goto_3

    .line 113
    :goto_4
    sget v5, Lcom/tn/lib/widget/R$string;->download_now:I

    .line 114
    .line 115
    const/16 v6, 0xe

    .line 116
    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x0

    .line 121
    move-object v0, p2

    .line 122
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_7
    if-eqz p1, :cond_9

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSeenStatus()Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-nez p1, :cond_8

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-ne p1, v2, :cond_9

    .line 140
    .line 141
    move v0, v2

    .line 142
    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setCourseAdded()V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_a
    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setAddCourse()V

    .line 149
    .line 150
    .line 151
    :goto_6
    return-void
.end method

.method private final r(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-ne p2, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/transsnet/downloader/widget/DownloadView;->setCourseAdded()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/transsnet/downloader/widget/DownloadView;->setAddCourse()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public j(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V
    .locals 12

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    rem-int v0, p2, v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v3, v0

    .line 29
    check-cast v3, Lcom/transsion/home/bean/BannerData;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->e:I

    .line 40
    .line 41
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-ne v1, v2, :cond_0

    .line 53
    .line 54
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    new-instance v9, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$onBindViewHolder$1;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v9, v3, p1, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$onBindViewHolder$1;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    const/4 v10, 0x3

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 77
    .line 78
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    :cond_1
    move-object v2, v0

    .line 100
    :cond_2
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->d:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-nez v2, :cond_4

    .line 123
    .line 124
    :cond_3
    move-object v2, v0

    .line 125
    :cond_4
    invoke-virtual {v1, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->g()Landroid/widget/TextView;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    move-object v0, v2

    .line 149
    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p0, v3, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->q(Lcom/transsion/home/bean/BannerData;Lcom/transsnet/downloader/widget/DownloadView;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Lcom/transsion/home/adapter/suboperate/adapter/m;

    .line 164
    .line 165
    invoke-direct {v1, v3, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/m;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v7, Lcom/transsion/home/adapter/suboperate/adapter/n;

    .line 176
    .line 177
    move-object v1, v7

    .line 178
    move-object v2, p1

    .line 179
    move-object v4, p0

    .line 180
    move v6, p2

    .line 181
    invoke-direct/range {v1 .. v6}, Lcom/transsion/home/adapter/suboperate/adapter/n;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public k(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;ILjava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "payloads"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p3

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    check-cast p2, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->r(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->j(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget v0, Lcom/transsion/home/R$layout;->item_sub_horizontal_view_pager:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->j(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->k(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->n(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
