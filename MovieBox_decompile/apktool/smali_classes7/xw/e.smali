.class public final Lxw/e;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lio/f;->a:Lio/f;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/f;->c(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :goto_0
    move-wide v4, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide/16 v1, 0x1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move-wide v6, v1

    .line 41
    :goto_2
    const-wide/16 v8, 0x0

    .line 42
    .line 43
    cmp-long v0, v6, v8

    .line 44
    .line 45
    if-gtz v0, :cond_2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_2
    move-wide v1, v6

    .line 49
    :goto_3
    long-to-float v0, v4

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    .line 52
    mul-float/2addr v0, v3

    .line 53
    long-to-float v1, v1

    .line 54
    div-float/2addr v0, v1

    .line 55
    const/16 v1, 0x64

    .line 56
    .line 57
    int-to-float v1, v1

    .line 58
    mul-float/2addr v0, v1

    .line 59
    float-to-int v3, v0

    .line 60
    sget v0, Lcom/transsnet/downloader/R$id;->progress_bar:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ProgressBar;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-ltz v3, :cond_3

    .line 78
    .line 79
    const/16 v0, 0x65

    .line 80
    .line 81
    if-ge v3, v0, :cond_3

    .line 82
    .line 83
    sget v0, Lcom/transsnet/downloader/R$id;->tv_read_progress:I

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    .line 90
    .line 91
    new-instance v0, Lxw/d;

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    move-object v6, p2

    .line 95
    invoke-direct/range {v2 .. v7}, Lxw/d;-><init>(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method private static final C(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const/16 p1, 0x64

    .line 6
    .line 7
    if-eq p0, p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    sget p1, Lcom/transsnet/downloader/R$string;->download_listened:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-array p2, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p0, p2, v0

    .line 24
    .line 25
    invoke-virtual {p4, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget p1, Lcom/transsnet/downloader/R$string;->download_watched:I

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-array p2, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p0, p2, v0

    .line 39
    .line 40
    invoke-virtual {p4, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget p0, Lcom/transsnet/downloader/R$string;->download_finished:I

    .line 46
    .line 47
    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p0, p1, v2

    .line 55
    .line 56
    if-lez p0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-ne p0, v1, :cond_3

    .line 63
    .line 64
    sget p0, Lcom/transsnet/downloader/R$string;->download_listened:I

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-array p2, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p1, p2, v0

    .line 73
    .line 74
    invoke-virtual {p4, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget p0, Lcom/transsnet/downloader/R$string;->download_watched:I

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-array p2, v1, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p1, p2, v0

    .line 88
    .line 89
    invoke-virtual {p4, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    sget p0, Lcom/transsnet/downloader/R$string;->download_not_open:I

    .line 95
    .line 96
    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :goto_0
    return-object p0
.end method

.method public static synthetic y(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lxw/e;->C(IJLcom/transsion/baselib/db/download/DownloadBean;Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V
    .locals 1

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
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lxw/e;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lxw/e;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lxw/e;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/adapter/LayoutType;->DONE_LAYOUT:Lcom/transsnet/downloader/adapter/LayoutType;

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
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloaded_item:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "helper"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "item"

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :goto_0
    sub-int/2addr v2, v0

    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x64

    .line 41
    .line 42
    invoke-static {v1}, Llj/a;->b(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v4}, Llj/a;->b(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_1
    sget v2, Lcom/transsnet/downloader/R$id;->cl_item_root:I

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const-string v2, ""

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    sget v1, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    .line 78
    sget-object v5, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    move-object v6, v2

    .line 87
    :cond_2
    invoke-virtual {v5, v6}, Lcom/transsnet/downloader/viewmodel/a0;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v6, "getContext(...)"

    .line 108
    .line 109
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget v6, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 113
    .line 114
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v5, v6, v1, v7}, Lcom/transsnet/downloader/util/DownloadUtilKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/16 v5, 0x9

    .line 132
    .line 133
    if-ne v1, v5, :cond_5

    .line 134
    .line 135
    move v1, v0

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move v1, v3

    .line 138
    :goto_3
    sget v5, Lcom/transsnet/downloader/R$id;->tv_shorts:I

    .line 139
    .line 140
    xor-int/lit8 v6, v1, 0x1

    .line 141
    .line 142
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 143
    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    sget v1, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 148
    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    sget v1, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 154
    .line 155
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 156
    .line 157
    .line 158
    sget v1, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    move-object v5, v1

    .line 165
    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_7

    .line 172
    .line 173
    sget v1, Lcom/transsion/baseui/R$drawable;->ic_tag_local_file:I

    .line 174
    .line 175
    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_9

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-nez v1, :cond_8

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-static/range {v5 .. v10}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->j(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v1}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 235
    .line 236
    .line 237
    :goto_5
    sget v1, Lcom/transsnet/downloader/R$id;->tv_name:I

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleNameAppendResolution()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    sget v1, Lcom/transsnet/downloader/R$id;->tv_ep:I

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-lez v5, :cond_a

    .line 269
    .line 270
    move v5, v0

    .line 271
    goto :goto_6

    .line 272
    :cond_a
    move v5, v3

    .line 273
    :goto_6
    if-eqz v5, :cond_b

    .line 274
    .line 275
    move v5, v3

    .line 276
    goto :goto_7

    .line 277
    :cond_b
    move v5, v4

    .line 278
    :goto_7
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    if-eqz v1, :cond_d

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 295
    .line 296
    .line 297
    move-result-wide v5

    .line 298
    invoke-static {v5, v6, v0}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-nez v1, :cond_c

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_c
    move-object v2, v1

    .line 306
    :cond_d
    :goto_8
    sget v1, Lcom/transsnet/downloader/R$id;->tv_file_size:I

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Landroid/widget/TextView;

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    const/16 v2, 0xa

    .line 322
    .line 323
    if-ne v1, v2, :cond_e

    .line 324
    .line 325
    sget v1, Lcom/transsnet/downloader/R$id;->tv_series_line:I

    .line 326
    .line 327
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 332
    .line 333
    .line 334
    sget v1, Lcom/transsnet/downloader/R$id;->tv_series_count:I

    .line 335
    .line 336
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    check-cast v1, Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    sget v4, Lcom/transsnet/downloader/R$string;->download_episodes:I

    .line 352
    .line 353
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    new-array v0, v0, [Ljava/lang/Object;

    .line 362
    .line 363
    aput-object v5, v0, v3

    .line 364
    .line 365
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    .line 371
    .line 372
    sget v0, Lcom/transsnet/downloader/R$id;->layout_no_file_tips:I

    .line 373
    .line 374
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_e
    sget v0, Lcom/transsnet/downloader/R$id;->tv_series_count:I

    .line 383
    .line 384
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 389
    .line 390
    .line 391
    sget v0, Lcom/transsnet/downloader/R$id;->tv_series_line:I

    .line 392
    .line 393
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    sget v1, Lcom/transsnet/downloader/R$id;->layout_no_file_tips:I

    .line 405
    .line 406
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    if-nez v0, :cond_f

    .line 411
    .line 412
    move v2, v3

    .line 413
    goto :goto_9

    .line 414
    :cond_f
    move v2, v4

    .line 415
    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    sget v1, Lcom/transsnet/downloader/R$id;->iv_play:I

    .line 419
    .line 420
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    if-eqz v0, :cond_10

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_10
    move v3, v4

    .line 428
    :goto_a
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    :goto_b
    invoke-direct {p0, p1, p2}, Lxw/e;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 432
    .line 433
    .line 434
    return-void
.end method
