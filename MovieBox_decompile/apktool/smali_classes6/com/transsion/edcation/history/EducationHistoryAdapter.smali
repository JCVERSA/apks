.class public final Lcom/transsion/edcation/history/EducationHistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/edcation/history/EducationHistoryAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "data",
        "<init>",
        "(Ljava/util/List;)V",
        "item",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "E1",
        "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V",
        "videoDetailPlayBean",
        "Landroid/content/Context;",
        "context",
        "",
        "I1",
        "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;",
        "holder",
        "F1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "F",
        "Lkotlin/Lazy;",
        "H1",
        "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "mVideoDetailPlayDao",
        "Education_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final F:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/edcation/R$layout;->item_education_history:I

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/transsion/edcation/history/a;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/edcation/history/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter;->F:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic B1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->G1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->J1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic D1(Lcom/transsion/edcation/history/EducationHistoryAdapter;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->H1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V
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
    new-instance v4, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

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

.method private static final G1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->I1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final H1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter;->F:Lkotlin/Lazy;

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

.method private final I1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Lij/t;->a:Lij/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "play_subject"

    .line 8
    .line 9
    const-string v2, "Education History"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v5, v3

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v6, v3

    .line 36
    :goto_1
    const/16 v9, 0x8

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    invoke-static/range {v4 .. v10}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    instance-of v4, p2, Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p2, p1, v2}, Lcom/transsnet/downloader/DownloadManagerApi;->t0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-object v1

    .line 73
    :cond_3
    const-string v0, "/movie/detail"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const-string v5, "subject_type"

    .line 86
    .line 87
    invoke-virtual {v0, v5, v4}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object p1, v3

    .line 99
    :goto_2
    const-string v4, "id"

    .line 100
    .line 101
    invoke-virtual {v0, v4, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "module_name"

    .line 106
    .line 107
    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 v0, 0x2

    .line 112
    invoke-static {p1, p2, v3, v0, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-object v1
.end method

.method private static final J1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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
.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->F1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected F1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 3

    .line 1
    const-string v0, "holder"

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
    sget v0, Lcom/transsion/edcation/R$id;->education_history_cover:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const-string v2, ""

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 42
    .line 43
    .line 44
    sget v0, Lcom/transsion/edcation/R$id;->education_history_title:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 54
    .line 55
    new-instance v1, Lcom/transsion/edcation/history/b;

    .line 56
    .line 57
    invoke-direct {v1, p0, p2}, Lcom/transsion/edcation/history/b;-><init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    sget v0, Lcom/transsion/edcation/R$id;->education_history_tag:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-direct {p0, p2, p1}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->E1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
