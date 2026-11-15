.class public final Lcom/transsion/home/viewmodel/SubTabViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/SubTabViewModel$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/home/viewmodel/SubTabViewModel$a;

.field public static final i:I


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Lkotlin/Lazy;

.field private final e:Lyk/e;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/SubTabViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->h:Lcom/transsion/home/viewmodel/SubTabViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->i:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/lifecycle/b0;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->b:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/b0;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->c:Landroidx/lifecycle/b0;

    .line 22
    .line 23
    new-instance p1, Lcom/transsion/home/viewmodel/n;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/n;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->d:Lkotlin/Lazy;

    .line 33
    .line 34
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-class v0, Lyk/e;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lyk/e;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lyk/e;

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    .line 52
    .line 53
    sget-object p1, Lij/g;->a:Lij/g;

    .line 54
    .line 55
    invoke-virtual {p1}, Lij/g;->b()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/SubTabViewModel;->x()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->l(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->m(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/SubTabViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/viewmodel/SubTabViewModel;->r(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/home/viewmodel/SubTabViewModel;)Lyk/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lyk/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/SubTabViewModel;Lcom/transsion/home/bean/SubOperateData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->u(Lcom/transsion/home/bean/SubOperateData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/home/viewmodel/SubTabViewModel;ILcom/transsion/home/bean/SubOperateData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->v(ILcom/transsion/home/bean/SubOperateData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lcom/transsion/home/viewmodel/SubTabViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    .line 2
    .line 3
    return-void
.end method

.method private final l(Ljava/util/List;)Ljava/util/List;
    .locals 36

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/home/bean/TrendingRespItem;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getType()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lcom/transsion/home/bean/TrendingRespItemType;->SUBJECT:Lcom/transsion/home/bean/TrendingRespItemType;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/transsion/home/bean/TrendingRespItemType;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const v34, 0x1ffffffd

    .line 57
    .line 58
    .line 59
    const/16 v35, 0x0

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v12, 0x0

    .line 68
    const/4 v13, 0x0

    .line 69
    const/4 v14, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const/16 v17, 0x0

    .line 74
    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    const/16 v19, 0x0

    .line 78
    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    const/16 v21, 0x0

    .line 82
    .line 83
    const/16 v22, 0x0

    .line 84
    .line 85
    const/16 v23, 0x0

    .line 86
    .line 87
    const/16 v24, 0x0

    .line 88
    .line 89
    const/16 v25, 0x0

    .line 90
    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    const/16 v28, 0x0

    .line 96
    .line 97
    const/16 v29, 0x0

    .line 98
    .line 99
    const/16 v30, 0x0

    .line 100
    .line 101
    const/16 v31, 0x0

    .line 102
    .line 103
    const/16 v32, 0x0

    .line 104
    .line 105
    const/16 v33, 0x0

    .line 106
    .line 107
    invoke-direct/range {v4 .. v35}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v3, v2}, Lcom/transsion/home/bean/OperateItem;->setFeedsSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    return-object v0
.end method

.method private final m(Ljava/util/List;)Ljava/util/List;
    .locals 69

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_6

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/home/bean/TrendingRespItem;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v4

    .line 35
    :goto_1
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getDisplayMeta()Lcom/transsion/home/bean/DisplayMeta;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/home/bean/DisplayMeta;->getLayoutType()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v3, v4

    .line 49
    :goto_2
    sget-object v5, Lcom/transsion/home/bean/FeedsLayoutType;->FULL:Lcom/transsion/home/bean/FeedsLayoutType;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/transsion/home/bean/FeedsLayoutType;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 62
    .line 63
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_3
    move-object/from16 v26, v4

    .line 80
    .line 81
    const v35, 0x1feffffd

    .line 82
    .line 83
    .line 84
    const/16 v36, 0x0

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    const/16 v19, 0x0

    .line 102
    .line 103
    const/16 v20, 0x0

    .line 104
    .line 105
    const/16 v21, 0x0

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    const/16 v24, 0x0

    .line 112
    .line 113
    const/16 v25, 0x0

    .line 114
    .line 115
    const/16 v27, 0x0

    .line 116
    .line 117
    const/16 v28, 0x0

    .line 118
    .line 119
    const/16 v29, 0x0

    .line 120
    .line 121
    const/16 v30, 0x0

    .line 122
    .line 123
    const/16 v31, 0x0

    .line 124
    .line 125
    const/16 v32, 0x0

    .line 126
    .line 127
    const/16 v33, 0x0

    .line 128
    .line 129
    const/16 v34, 0x0

    .line 130
    .line 131
    move-object v5, v3

    .line 132
    invoke-direct/range {v5 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_4
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 141
    .line 142
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v39

    .line 148
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :cond_5
    move-object/from16 v58, v4

    .line 159
    .line 160
    const v67, 0x1feffffd

    .line 161
    .line 162
    .line 163
    const/16 v68, 0x0

    .line 164
    .line 165
    const/16 v38, 0x0

    .line 166
    .line 167
    const/16 v40, 0x0

    .line 168
    .line 169
    const/16 v41, 0x0

    .line 170
    .line 171
    const/16 v42, 0x0

    .line 172
    .line 173
    const/16 v43, 0x0

    .line 174
    .line 175
    const/16 v44, 0x0

    .line 176
    .line 177
    const/16 v45, 0x0

    .line 178
    .line 179
    const/16 v46, 0x0

    .line 180
    .line 181
    const/16 v47, 0x0

    .line 182
    .line 183
    const/16 v48, 0x0

    .line 184
    .line 185
    const/16 v49, 0x0

    .line 186
    .line 187
    const/16 v50, 0x0

    .line 188
    .line 189
    const/16 v51, 0x0

    .line 190
    .line 191
    const/16 v52, 0x0

    .line 192
    .line 193
    const/16 v53, 0x0

    .line 194
    .line 195
    const/16 v54, 0x0

    .line 196
    .line 197
    const/16 v55, 0x0

    .line 198
    .line 199
    const/16 v56, 0x0

    .line 200
    .line 201
    const/16 v57, 0x0

    .line 202
    .line 203
    const/16 v59, 0x0

    .line 204
    .line 205
    const/16 v60, 0x0

    .line 206
    .line 207
    const/16 v61, 0x0

    .line 208
    .line 209
    const/16 v62, 0x0

    .line 210
    .line 211
    const/16 v63, 0x0

    .line 212
    .line 213
    const/16 v64, 0x0

    .line 214
    .line 215
    const/16 v65, 0x0

    .line 216
    .line 217
    const/16 v66, 0x0

    .line 218
    .line 219
    move-object/from16 v37, v3

    .line 220
    .line 221
    invoke-direct/range {v37 .. v68}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_6
    return-object v0
.end method

.method private final o(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "_"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private final r(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v9, p1

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    instance-of v2, v1, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;

    .line 12
    .line 13
    iget v3, v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    sub-int/2addr v3, v4

    .line 22
    iput v3, v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    .line 23
    .line 24
    :goto_0
    move-object v6, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;-><init>(Lcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iget-object v1, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->result:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    iget v2, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    .line 39
    .line 40
    const-string v11, ""

    .line 41
    .line 42
    const-string v12, "sub_operation_version_prefix"

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    const/4 v13, 0x1

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-eq v2, v13, :cond_2

    .line 49
    .line 50
    if-ne v2, v3, :cond_1

    .line 51
    .line 52
    iget v2, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    .line 53
    .line 54
    iget-object v3, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_2
    iget v2, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    .line 71
    .line 72
    iget-object v3, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v1, Lzk/e;->a:Lzk/e;

    .line 84
    .line 85
    invoke-virtual {v1}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {p0, v12, v9}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2, v11}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    iget-boolean v1, v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object v1, v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lyk/e;

    .line 102
    .line 103
    iput-object v14, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    iput v9, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    .line 106
    .line 107
    iput v13, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v7, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    move/from16 v3, p1

    .line 113
    .line 114
    move-object v4, v14

    .line 115
    move-object/from16 v5, p2

    .line 116
    .line 117
    invoke-static/range {v1 .. v8}, Lyk/e$a;->f(Lyk/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-ne v1, v10, :cond_4

    .line 122
    .line 123
    return-object v10

    .line 124
    :cond_4
    move v2, v9

    .line 125
    move-object v3, v14

    .line 126
    :goto_2
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    iget-object v1, v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lyk/e;

    .line 130
    .line 131
    iput-object v14, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    iput v9, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    .line 134
    .line 135
    iput v3, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    const/4 v7, 0x1

    .line 139
    const/4 v8, 0x0

    .line 140
    move/from16 v3, p1

    .line 141
    .line 142
    move-object v4, v14

    .line 143
    move-object v5, v6

    .line 144
    move v6, v7

    .line 145
    move-object v7, v8

    .line 146
    invoke-static/range {v1 .. v7}, Lyk/e$a;->d(Lyk/e;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-ne v1, v10, :cond_6

    .line 151
    .line 152
    return-object v10

    .line 153
    :cond_6
    move v2, v9

    .line 154
    move-object v3, v14

    .line 155
    :goto_3
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 156
    .line 157
    :goto_4
    const-string v4, "sub_operation_prefix"

    .line 158
    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_7

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Lcom/transsion/home/bean/SubOperateData;

    .line 173
    .line 174
    if-eqz v3, :cond_8

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-ne v3, v13, :cond_8

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Lcom/transsion/home/bean/SubOperateData;

    .line 193
    .line 194
    if-eqz v3, :cond_8

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/transsion/home/bean/SubOperateData;->getVersion()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-eqz v3, :cond_8

    .line 201
    .line 202
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-lez v3, :cond_8

    .line 207
    .line 208
    sget-object v3, Lzk/e;->a:Lzk/e;

    .line 209
    .line 210
    invoke-virtual {v3}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-direct {p0, v4, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v3, v2, v11}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-class v3, Lcom/transsion/home/bean/SubOperateData;

    .line 223
    .line 224
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_8
    :goto_5
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Lcom/transsion/home/bean/SubOperateData;

    .line 237
    .line 238
    if-eqz v3, :cond_a

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    if-eqz v3, :cond_a

    .line 245
    .line 246
    check-cast v3, Ljava/util/Collection;

    .line 247
    .line 248
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    xor-int/2addr v3, v13

    .line 253
    if-ne v3, v13, :cond_a

    .line 254
    .line 255
    new-instance v3, Lcom/google/gson/Gson;

    .line 256
    .line 257
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    sget-object v5, Lzk/e;->a:Lzk/e;

    .line 269
    .line 270
    invoke-virtual {v5}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-direct {p0, v4, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v6, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-direct {p0, v12, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Lcom/transsion/home/bean/SubOperateData;

    .line 294
    .line 295
    if-eqz v4, :cond_9

    .line 296
    .line 297
    invoke-virtual {v4}, Lcom/transsion/home/bean/SubOperateData;->getVersion()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    goto :goto_6

    .line 302
    :cond_9
    const/4 v4, 0x0

    .line 303
    :goto_6
    invoke-virtual {v3, v2, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    .line 305
    .line 306
    :cond_a
    :goto_7
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    return-object v1
.end method

.method private final u(Lcom/transsion/home/bean/SubOperateData;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/transsion/home/bean/OperateItem;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_SUBJECT_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "UGC_VIDEO_LIST_METADATA"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_VERTICAL_OPT_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/OperateItem;->setType(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method private final v(ILcom/transsion/home/bean/SubOperateData;)V
    .locals 35

    .line 1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lij/o;->a:Lij/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-static {v0, v1, v1, v3, v1}, Lcom/transsion/edcation/CourseManager;->r(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    .line 38
    .line 39
    move-object v3, v15

    .line 40
    sget-object v4, Lcom/transsion/moviedetailapi/bean/PostItemType;->MY_COURSE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const v33, 0x1ffffffd

    .line 47
    .line 48
    .line 49
    const/16 v34, 0x0

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    move-object v1, v15

    .line 64
    move-object/from16 v15, v16

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    const/16 v20, 0x0

    .line 73
    .line 74
    const/16 v21, 0x0

    .line 75
    .line 76
    const/16 v22, 0x0

    .line 77
    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    const/16 v24, 0x0

    .line 81
    .line 82
    const/16 v25, 0x0

    .line 83
    .line 84
    const/16 v26, 0x0

    .line 85
    .line 86
    const/16 v27, 0x0

    .line 87
    .line 88
    const/16 v28, 0x0

    .line 89
    .line 90
    const/16 v29, 0x0

    .line 91
    .line 92
    const/16 v30, 0x0

    .line 93
    .line 94
    const/16 v31, 0x0

    .line 95
    .line 96
    const/16 v32, 0x0

    .line 97
    .line 98
    invoke-direct/range {v3 .. v34}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getTrendingTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 112
    :goto_0
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    if-eqz p2, :cond_3

    .line 122
    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getTrendingTitle()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    .line 140
    .line 141
    move-object v2, v1

    .line 142
    const v32, 0x1ffffffc

    .line 143
    .line 144
    .line 145
    const/16 v33, 0x0

    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    const/4 v11, 0x0

    .line 154
    const/4 v12, 0x0

    .line 155
    const/4 v13, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    const/4 v15, 0x0

    .line 158
    const/16 v16, 0x0

    .line 159
    .line 160
    const/16 v17, 0x0

    .line 161
    .line 162
    const/16 v18, 0x0

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const/16 v20, 0x0

    .line 167
    .line 168
    const/16 v21, 0x0

    .line 169
    .line 170
    const/16 v22, 0x0

    .line 171
    .line 172
    const/16 v23, 0x0

    .line 173
    .line 174
    const/16 v24, 0x0

    .line 175
    .line 176
    const/16 v25, 0x0

    .line 177
    .line 178
    const/16 v26, 0x0

    .line 179
    .line 180
    const/16 v27, 0x0

    .line 181
    .line 182
    const/16 v28, 0x0

    .line 183
    .line 184
    const/16 v29, 0x0

    .line 185
    .line 186
    const/16 v30, 0x0

    .line 187
    .line 188
    const/16 v31, 0x0

    .line 189
    .line 190
    invoke-direct/range {v2 .. v33}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_3
    :goto_1
    return-void
.end method

.method private static final x()Landroidx/lifecycle/b0;
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
.method public final n(IZLjava/lang/String;)V
    .locals 10

    .line 1
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    new-instance v9, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v0, v9

    .line 18
    move v1, p2

    .line 19
    move-object v2, p0

    .line 20
    move v4, p1

    .line 21
    move-object v5, p3

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;-><init>(ZLcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    const/4 p2, 0x0

    .line 27
    move-object v4, v7

    .line 28
    move-object v5, v8

    .line 29
    move-object v7, v9

    .line 30
    move v8, p1

    .line 31
    move-object v9, p2

    .line 32
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->d:Lkotlin/Lazy;

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

.method public final t(ILjava/lang/String;Z)V
    .locals 8

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    iput p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    .line 5
    .line 6
    :cond_0
    new-instance v1, Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/home/bean/TrendingRequestEntity;-><init>()V

    .line 9
    .line 10
    .line 11
    iget p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    .line 12
    .line 13
    add-int/lit8 v0, p3, 0x1

    .line 14
    .line 15
    iput v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPage(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    const/16 p3, 0xe

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 p3, 0xc

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPerPage(I)V

    .line 34
    .line 35
    .line 36
    sget-object p3, Ljg/b;->a:Ljg/b$a;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljg/b$a;->h()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setSessionId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/transsion/baselib/report/h;->b()Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    if-nez p3, :cond_3

    .line 58
    .line 59
    :cond_2
    const-string p3, ""

    .line 60
    .line 61
    :cond_3
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDeepLink(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p3, Lej/a;

    .line 65
    .line 66
    sget-object v0, Lej/b;->a:Lej/b$a;

    .line 67
    .line 68
    invoke-virtual {v0}, Lej/b$a;->e()Ljava/util/Queue;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p3, v0}, Lej/a;-><init>(Ljava/util/Queue;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    .line 76
    .line 77
    .line 78
    sget-object p3, Lij/o;->a:Lij/o;

    .line 79
    .line 80
    invoke-virtual {p3}, Lij/o;->i()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {p3}, Lij/o;->e()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setGrade(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    new-instance v7, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    move-object v0, v7

    .line 105
    move-object v2, p0

    .line 106
    move-object v3, p2

    .line 107
    move v4, p1

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x2

    .line 112
    const/4 p2, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    move-object v2, p3

    .line 115
    move-object v3, v6

    .line 116
    move-object v5, v7

    .line 117
    move v6, p1

    .line 118
    move-object v7, p2

    .line 119
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    .line 2
    .line 3
    return-void
.end method
