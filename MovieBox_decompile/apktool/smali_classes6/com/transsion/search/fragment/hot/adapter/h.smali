.class public final Lcom/transsion/search/fragment/hot/adapter/h;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0011\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B)\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0014\u0010\"\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/search/fragment/hot/adapter/h;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/search/bean/HotSubject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "parentCategory",
        "",
        "parentIndex",
        "",
        "isTabLayout",
        "sugSource",
        "<init>",
        "(Ljava/lang/String;IZLjava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "subject",
        "position",
        "",
        "F1",
        "(Landroid/view/View;Lcom/transsion/search/bean/HotSubject;I)V",
        "E1",
        "()I",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/HotSubject;)V",
        "F",
        "Ljava/lang/String;",
        "G",
        "I",
        "H",
        "Z",
        "J",
        "mIsLowDevice",
        "Search_psRelease"
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
.field private final F:Ljava/lang/String;

.field private final G:I

.field private final H:Z

.field private final I:Ljava/lang/String;

.field private final J:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3

    const-string v0, "parentCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sugSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/transsion/search/R$layout;->item_search_hot_rank_inner:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/adapter/h;->F:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/transsion/search/fragment/hot/adapter/h;->G:I

    .line 6
    iput-boolean p3, p0, Lcom/transsion/search/fragment/hot/adapter/h;->H:Z

    .line 7
    iput-object p4, p0, Lcom/transsion/search/fragment/hot/adapter/h;->I:Ljava/lang/String;

    .line 8
    sget-object p1, Lij/h;->a:Lij/h;

    invoke-virtual {p1}, Lij/h;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/search/fragment/hot/adapter/h;->J:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 1
    const-string p4, "mb_sug"

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/search/fragment/hot/adapter/h;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/search/fragment/hot/adapter/h;Lcom/transsion/search/bean/HotSubject;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/adapter/h;->D1(Lcom/transsion/search/fragment/hot/adapter/h;Lcom/transsion/search/bean/HotSubject;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/transsion/search/fragment/hot/adapter/h;Lcom/transsion/search/bean/HotSubject;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/search/fragment/hot/adapter/h;->F1(Landroid/view/View;Lcom/transsion/search/bean/HotSubject;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final E1()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const v0, 0x800005

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x800003

    .line 17
    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method private final F1(Landroid/view/View;Lcom/transsion/search/bean/HotSubject;I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/transsion/search/fragment/hot/adapter/h;->F:Ljava/lang/String;

    .line 4
    .line 5
    iget v4, p0, Lcom/transsion/search/fragment/hot/adapter/h;->G:I

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/transsion/search/fragment/hot/adapter/h;->J:Z

    .line 8
    .line 9
    iget-object v6, p0, Lcom/transsion/search/fragment/hot/adapter/h;->I:Ljava/lang/String;

    .line 10
    .line 11
    move-object v1, p2

    .line 12
    move v2, p3

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/search/widget/d$a;->o(Lcom/transsion/search/bean/HotSubject;ILjava/lang/String;IZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    instance-of p3, p3, Landroid/app/Activity;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    .line 29
    .line 30
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p3, Landroid/app/Activity;

    .line 34
    .line 35
    invoke-static {p3}, Lcom/blankj/utilcode/util/KeyboardUtils;->g(Landroid/app/Activity;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast p3, Landroid/app/Activity;

    .line 49
    .line 50
    invoke-static {p3}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getSubjectType()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez p3, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-ne p3, v0, :cond_2

    .line 71
    .line 72
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 83
    .line 84
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v1, p1

    .line 88
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getOps()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getSubjectId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const/16 v10, 0x140

    .line 99
    .line 100
    const/4 v11, 0x0

    .line 101
    const-string v2, "search_hot_subject"

    .line 102
    .line 103
    const-string v3, ""

    .line 104
    .line 105
    const-string v5, "download_subject"

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    invoke-static/range {v0 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_0
    const-string p3, "/movie/detail"

    .line 115
    .line 116
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getSubjectType()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    :goto_1
    const-string v1, "subject_type"

    .line 138
    .line 139
    invoke-virtual {p3, v1, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    const-string v0, "id"

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getSubjectId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    const-string v0, "ops"

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getOps()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p3, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const/4 p3, 0x2

    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-static {p2, p1, v0, p3, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/HotSubject;)V
    .locals 11

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
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->isMusicType()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_image_linear:I

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-boolean v4, p0, Lcom/transsion/search/fragment/hot/adapter/h;->H:Z

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move v4, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v3

    .line 36
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    int-to-float v4, v4

    .line 41
    const/high16 v6, 0x42a00000    # 80.0f

    .line 42
    .line 43
    mul-float/2addr v6, v4

    .line 44
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/high16 v6, 0x42340000    # 45.0f

    .line 55
    .line 56
    mul-float/2addr v4, v6

    .line 57
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_title_text:I

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 79
    .line 80
    .line 81
    :cond_1
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no4:I

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    if-eq v0, v3, :cond_3

    .line 86
    .line 87
    if-eq v0, v2, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no3:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no2:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no1:I

    .line 97
    .line 98
    :goto_1
    sget v2, Lcom/transsion/search/R$id;->search_hot_rank_item_index_text:I

    .line 99
    .line 100
    add-int/lit8 v4, v0, 0x1

    .line 101
    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {p1, v2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 107
    .line 108
    .line 109
    sget v2, Lcom/transsion/search/R$id;->search_hot_rank_item_index_text:I

    .line 110
    .line 111
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 112
    .line 113
    .line 114
    iget-boolean v1, p0, Lcom/transsion/search/fragment/hot/adapter/h;->J:Z

    .line 115
    .line 116
    const-string v2, ""

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_image_linear:I

    .line 121
    .line 122
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v1, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getCover()Lcom/transsion/search/bean/HotCover;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/transsion/search/bean/HotCover;->getUrl()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-nez v4, :cond_7

    .line 147
    .line 148
    :cond_6
    move-object v4, v2

    .line 149
    :cond_7
    invoke-virtual {v1, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getCover()Lcom/transsion/search/bean/HotCover;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/transsion/search/bean/HotCover;->getThumbnail()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-nez v4, :cond_9

    .line 164
    .line 165
    :cond_8
    move-object v4, v2

    .line 166
    :cond_9
    invoke-virtual {v1, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const/high16 v4, 0x42480000    # 50.0f

    .line 171
    .line 172
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {v1, v4}, Lni/f$b;->m(I)Lni/f$b;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    sget v4, Lcom/transsion/search/R$id;->search_hot_rank_item_image:I

    .line 181
    .line 182
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Landroid/widget/ImageView;

    .line 187
    .line 188
    invoke-virtual {v1, v4}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_title_text:I

    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getTitle()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 198
    .line 199
    .line 200
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_title_text:I

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/adapter/h;->E1()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    .line 214
    .line 215
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_subtitle_text:I

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/adapter/h;->E1()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 231
    .line 232
    new-instance v4, Lcom/transsion/search/fragment/hot/adapter/g;

    .line 233
    .line 234
    invoke-direct {v4, p0, p2, v0}, Lcom/transsion/search/fragment/hot/adapter/g;-><init>(Lcom/transsion/search/fragment/hot/adapter/h;Lcom/transsion/search/bean/HotSubject;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    sget v0, Lcom/transsion/search/R$id;->search_hot_rank_item_corner:I

    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getCorner()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const/4 v4, 0x0

    .line 247
    if-eqz v1, :cond_b

    .line 248
    .line 249
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_a

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_a
    move v1, v4

    .line 257
    goto :goto_4

    .line 258
    :cond_b
    :goto_3
    move v1, v3

    .line 259
    :goto_4
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 260
    .line 261
    .line 262
    sget v0, Lcom/transsion/search/R$id;->search_hot_rank_item_corner:I

    .line 263
    .line 264
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getCorner()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-nez v1, :cond_c

    .line 269
    .line 270
    move-object v1, v2

    .line 271
    :cond_c
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 272
    .line 273
    .line 274
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 275
    .line 276
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getSubjectType()Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {v5}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    invoke-static {v1, v5}, Lcom/transsion/search/f;->a(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    const-string v5, "\ufffc"

    .line 296
    .line 297
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 298
    .line 299
    .line 300
    const/16 v6, 0x21

    .line 301
    .line 302
    invoke-virtual {v0, v1, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    sub-int/2addr v7, v3

    .line 321
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    invoke-virtual {v0, v1, v7, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getImdbRatingValue()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-eqz v1, :cond_e

    .line 333
    .line 334
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->isMusicType()Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_e

    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    sget v7, Lcom/transsion/search/R$drawable;->ic_search_result_star:I

    .line 345
    .line 346
    invoke-static {v1, v7}, Lcom/transsion/search/f;->a(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    sub-int/2addr v7, v3

    .line 358
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    invoke-virtual {v0, v1, v7, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 363
    .line 364
    .line 365
    const-string v1, " "

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getImdbRatingValue()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 375
    .line 376
    .line 377
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 378
    .line 379
    sget v7, Lcom/tn/lib/widget/R$color;->yellow_60:I

    .line 380
    .line 381
    invoke-static {v7}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getImdbRatingValue()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    if-eqz v7, :cond_d

    .line 393
    .line 394
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    goto :goto_5

    .line 399
    :cond_d
    move v7, v4

    .line 400
    :goto_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    sub-int/2addr v8, v7

    .line 405
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    invoke-virtual {v0, v1, v8, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-static {v1}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    sub-int/2addr v7, v3

    .line 428
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 429
    .line 430
    .line 431
    move-result v8

    .line 432
    invoke-virtual {v0, v1, v7, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 433
    .line 434
    .line 435
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getReleaseDate()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    if-eqz v1, :cond_11

    .line 440
    .line 441
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getReleaseDate()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    if-nez v1, :cond_f

    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_f
    move-object v2, v1

    .line 449
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    const/4 v7, 0x4

    .line 454
    if-lt v1, v7, :cond_10

    .line 455
    .line 456
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    const-string v1, "substring(...)"

    .line 461
    .line 462
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_10
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-static {v1}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    sub-int/2addr v2, v3

    .line 484
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    invoke-virtual {v0, v1, v2, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 489
    .line 490
    .line 491
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getCountryName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    if-eqz v1, :cond_12

    .line 496
    .line 497
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getCountryName()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-static {v1}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    sub-int/2addr v2, v3

    .line 520
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 525
    .line 526
    .line 527
    :cond_12
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getGenre()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    if-eqz v1, :cond_15

    .line 532
    .line 533
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotSubject;->getGenre()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    if-eqz v5, :cond_13

    .line 538
    .line 539
    const-string p2, ","

    .line 540
    .line 541
    filled-new-array {p2}, [Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    const/4 v9, 0x6

    .line 546
    const/4 v10, 0x0

    .line 547
    const/4 v7, 0x0

    .line 548
    const/4 v8, 0x0

    .line 549
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 550
    .line 551
    .line 552
    move-result-object p2

    .line 553
    if-nez p2, :cond_14

    .line 554
    .line 555
    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    :cond_14
    move-object v1, p2

    .line 560
    check-cast v1, Ljava/util/Collection;

    .line 561
    .line 562
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-nez v1, :cond_15

    .line 567
    .line 568
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p2

    .line 572
    check-cast p2, Ljava/lang/CharSequence;

    .line 573
    .line 574
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 575
    .line 576
    .line 577
    :cond_15
    sget p2, Lcom/transsion/search/R$id;->search_hot_rank_item_subtitle_text:I

    .line 578
    .line 579
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    check-cast p1, Landroid/widget/TextView;

    .line 584
    .line 585
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    .line 587
    .line 588
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search/bean/HotSubject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/fragment/hot/adapter/h;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/HotSubject;)V

    .line 4
    .line 5
    .line 6
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
