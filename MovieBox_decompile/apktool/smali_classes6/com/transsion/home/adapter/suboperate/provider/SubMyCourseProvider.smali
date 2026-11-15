.class public final Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final e:I

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field private h:Lcom/transsion/edcation/bean/CourseBean;

.field private final i:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/e0;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/transsion/home/adapter/suboperate/provider/e0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->i:Lkotlin/Lazy;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->V(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->M(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->N(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->Q(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/edcation/bean/CourseBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/edcation/bean/CourseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic I(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->U(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final L(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "/edu/courseList"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final M(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p3, "/home/filter"

    .line 2
    .line 3
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    .line 8
    .line 9
    const-string v1, "tabId"

    .line 10
    .line 11
    invoke-virtual {p3, v1, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-static {p3, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "click_my_course_explore"

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->T(Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final N(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 67

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v2

    .line 14
    :goto_0
    if-eqz v1, :cond_3

    .line 15
    .line 16
    new-instance v1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move-object v4, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v4, v2

    .line 29
    :goto_1
    iget-object v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectType()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_2
    move-object v5, v2

    .line 38
    const v65, 0x3ffffff

    .line 39
    .line 40
    .line 41
    const/16 v66, 0x0

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/16 v20, 0x0

    .line 62
    .line 63
    const/16 v21, 0x0

    .line 64
    .line 65
    const/16 v22, 0x0

    .line 66
    .line 67
    const/16 v23, 0x0

    .line 68
    .line 69
    const/16 v24, 0x0

    .line 70
    .line 71
    const/16 v25, 0x0

    .line 72
    .line 73
    const/16 v26, 0x0

    .line 74
    .line 75
    const/16 v27, 0x0

    .line 76
    .line 77
    const/16 v28, 0x0

    .line 78
    .line 79
    const/16 v29, 0x0

    .line 80
    .line 81
    const/16 v30, 0x0

    .line 82
    .line 83
    const/16 v31, 0x0

    .line 84
    .line 85
    const/16 v32, 0x0

    .line 86
    .line 87
    const/16 v33, 0x0

    .line 88
    .line 89
    const/16 v34, 0x0

    .line 90
    .line 91
    const/16 v35, 0x0

    .line 92
    .line 93
    const/16 v36, 0x0

    .line 94
    .line 95
    const/16 v37, 0x0

    .line 96
    .line 97
    const/16 v38, 0x0

    .line 98
    .line 99
    const/16 v39, 0x0

    .line 100
    .line 101
    const/16 v40, 0x0

    .line 102
    .line 103
    const/16 v41, 0x0

    .line 104
    .line 105
    const-wide/16 v42, 0x0

    .line 106
    .line 107
    const/16 v44, 0x0

    .line 108
    .line 109
    const/16 v45, 0x0

    .line 110
    .line 111
    const-wide/16 v46, 0x0

    .line 112
    .line 113
    const/16 v48, 0x0

    .line 114
    .line 115
    const/16 v49, 0x0

    .line 116
    .line 117
    const/16 v50, 0x0

    .line 118
    .line 119
    const/16 v51, 0x0

    .line 120
    .line 121
    const/16 v52, 0x0

    .line 122
    .line 123
    const/16 v53, 0x0

    .line 124
    .line 125
    const/16 v54, 0x0

    .line 126
    .line 127
    const/16 v55, 0x0

    .line 128
    .line 129
    const/16 v56, 0x0

    .line 130
    .line 131
    const/16 v57, 0x0

    .line 132
    .line 133
    const/16 v58, 0x0

    .line 134
    .line 135
    const/16 v59, 0x0

    .line 136
    .line 137
    const/16 v60, 0x0

    .line 138
    .line 139
    const/16 v61, 0x0

    .line 140
    .line 141
    const/16 v62, 0x0

    .line 142
    .line 143
    const/16 v63, 0x0

    .line 144
    .line 145
    const/16 v64, -0x4

    .line 146
    .line 147
    move-object v3, v1

    .line 148
    invoke-direct/range {v3 .. v66}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .line 150
    .line 151
    const-string v2, "operation_course"

    .line 152
    .line 153
    invoke-static {v1, v2}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    const-string v1, "click_my_course_learn"

    .line 157
    .line 158
    move-object/from16 v2, p1

    .line 159
    .line 160
    invoke-direct {v0, v1, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->T(Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method private final O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->i:Lkotlin/Lazy;

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

.method private static final P()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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

.method private static final Q(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final R()V
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
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$registerCourse$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lkotlin/coroutines/Continuation;)V

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
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    return-void
.end method

.method private final S(Lcom/transsion/home/bean/OperateItem;)V
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
    const-string v2, "browse_my_course"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "title"

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "tabId"

    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 38
    .line 39
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 40
    .line 41
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final T(Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

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
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "title"

    .line 20
    .line 21
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "tabId"

    .line 31
    .line 32
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    :cond_0
    const-string p1, ""

    .line 46
    .line 47
    :cond_1
    const-string p2, "subjectId"

    .line 48
    .line 49
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 53
    .line 54
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 55
    .line 56
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final U(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V
    .locals 4

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v0, v2, v3

    .line 12
    .line 13
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "%.0f"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "format(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "%"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_item_percent_text:I

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    .line 62
    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_item_percent_bg:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    if-eqz v0, :cond_2

    .line 71
    .line 72
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/i0;

    .line 73
    .line 74
    invoke-direct {v1, p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/i0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method private static final V(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_item_percent_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    mul-float/2addr p1, p2

    .line 13
    const/16 p2, 0x64

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    div-float/2addr p1, p2

    .line 17
    float-to-int p1, p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final W()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_start_liner:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_item_liner:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_start_liner:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_item_liner:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 67
    .line 68
    const-string v1, ""

    .line 69
    .line 70
    if-eqz v0, :cond_9

    .line 71
    .line 72
    sget v2, Lcom/transsion/home/R$id;->sub_operation_course_item_image:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .line 80
    if-eqz v0, :cond_9

    .line 81
    .line 82
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const-string v4, "getContext(...)"

    .line 89
    .line 90
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 98
    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    :cond_5
    move-object v3, v1

    .line 114
    :cond_6
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 119
    .line 120
    if-eqz v3, :cond_7

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_7

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-nez v3, :cond_8

    .line 133
    .line 134
    :cond_7
    move-object v3, v1

    .line 135
    :cond_8
    invoke-virtual {v2, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    .line 151
    .line 152
    if-eqz v0, :cond_b

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/transsion/edcation/bean/CourseBean;->getTitle()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_a

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_a
    move-object v1, v0

    .line 162
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 163
    .line 164
    if-eqz v0, :cond_c

    .line 165
    .line 166
    sget v2, Lcom/transsion/home/R$id;->sub_operation_course_item_title_text:I

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    .line 174
    if-eqz v0, :cond_c

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;

    .line 188
    .line 189
    const/4 v0, 0x0

    .line 190
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lkotlin/coroutines/Continuation;)V

    .line 191
    .line 192
    .line 193
    const/4 v5, 0x3

    .line 194
    const/4 v6, 0x0

    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public static synthetic y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->L(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->P()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    .line 1
    const-string v0, "helper"

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
    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_title:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/f0;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/f0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_explore:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/g0;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/g0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_learn:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/h0;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/h0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->S(Lcom/transsion/home/bean/OperateItem;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->MY_COURSE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_my_course:I

    .line 2
    .line 3
    return v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 3

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/d0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/suboperate/provider/d0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0x3e8

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->R()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, p1, v1, p1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    return-void
.end method
