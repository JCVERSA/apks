.class public final Lcom/transsion/search_pugc/fragment/hot/adapter/g;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/hot/adapter/g;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "parentName",
        "",
        "parentIndex",
        "",
        "showRank",
        "<init>",
        "(Ljava/lang/String;IZ)V",
        "video",
        "position",
        "",
        "F1",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V",
        "E1",
        "()I",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "F",
        "Ljava/lang/String;",
        "G",
        "I",
        "H",
        "Z",
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

.field private final I:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    const-string v0, "parentName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/search/R$layout;->item_search_rank_item:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->F:Ljava/lang/String;

    .line 14
    .line 15
    iput p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->G:I

    .line 16
    .line 17
    iput-boolean p3, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->H:Z

    .line 18
    .line 19
    sget-object p1, Lij/h;->a:Lij/h;

    .line 20
    .line 21
    invoke-virtual {p1}, Lij/h;->a()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->I:Z

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic B1(Lcom/transsion/search_pugc/fragment/hot/adapter/g;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->D1(Lcom/transsion/search_pugc/fragment/hot/adapter/g;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/transsion/search_pugc/fragment/hot/adapter/g;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->F1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 2
    .line 3
    .line 4
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

.method private final F1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->F:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->G:I

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/transsion/search_pugc/g;->t(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    instance-of p2, p2, Landroid/app/Activity;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    .line 31
    .line 32
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p2, Landroid/app/Activity;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/blankj/utilcode/util/KeyboardUtils;->g(Landroid/app/Activity;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p2, Landroid/app/Activity;

    .line 51
    .line 52
    invoke-static {p2}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const/4 p2, 0x1

    .line 56
    const/4 v0, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v1, p2, v0}, Lcom/transsion/search_pugc/constant/a;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

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
    iget-boolean v1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->H:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no4:I

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-eq v0, v3, :cond_1

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-eq v0, v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no3:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no2:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget v1, Lcom/transsion/search/R$drawable;->bg_hot_subject_no1:I

    .line 38
    .line 39
    :goto_0
    sget v4, Lcom/transsion/search/R$id;->search_hot_rank_item_index_text:I

    .line 40
    .line 41
    add-int/lit8 v5, v0, 0x1

    .line 42
    .line 43
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 48
    .line 49
    .line 50
    sget v4, Lcom/transsion/search/R$id;->search_hot_rank_item_index_text:I

    .line 51
    .line 52
    invoke-virtual {p1, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_index_text:I

    .line 57
    .line 58
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-boolean v1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->I:Z

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_image_linear:I

    .line 68
    .line 69
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v1, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_5

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_6

    .line 94
    .line 95
    :cond_5
    move-object v5, v4

    .line 96
    :cond_6
    invoke-virtual {v1, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-nez v5, :cond_8

    .line 111
    .line 112
    :cond_7
    move-object v5, v4

    .line 113
    :cond_8
    invoke-virtual {v1, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const/high16 v5, 0x42480000    # 50.0f

    .line 118
    .line 119
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-virtual {v1, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget v5, Lcom/transsion/search/R$id;->search_hot_rank_item_image:I

    .line 128
    .line 129
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-virtual {v1, v5}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_title_text:I

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-nez v5, :cond_9

    .line 145
    .line 146
    move-object v5, v4

    .line 147
    :cond_9
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 148
    .line 149
    .line 150
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_title_text:I

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->E1()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    .line 164
    .line 165
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_item_subtitle_text:I

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->E1()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 181
    .line 182
    new-instance v5, Lcom/transsion/search_pugc/fragment/hot/adapter/f;

    .line 183
    .line 184
    invoke-direct {v5, p0, p2, v0}, Lcom/transsion/search_pugc/fragment/hot/adapter/f;-><init>(Lcom/transsion/search_pugc/fragment/hot/adapter/g;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    sget v0, Lcom/transsion/search/R$id;->search_hot_rank_item_corner:I

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    if-eqz v1, :cond_b

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_a

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_a
    move v3, v2

    .line 206
    :cond_b
    :goto_3
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 207
    .line 208
    .line 209
    sget v0, Lcom/transsion/search/R$id;->search_hot_rank_item_corner:I

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_c

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_c
    move-object v4, v1

    .line 219
    :goto_4
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 220
    .line 221
    .line 222
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_d

    .line 232
    .line 233
    invoke-static {v1}, Lcom/transsion/search_pugc/constant/a;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    goto :goto_5

    .line 238
    :cond_d
    const/4 v1, 0x0

    .line 239
    :goto_5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    sget v4, Lcom/transsion/search/R$string;->views:I

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, " "

    .line 258
    .line 259
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getHashTags()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    if-eqz p2, :cond_e

    .line 277
    .line 278
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 283
    .line 284
    if-eqz p2, :cond_e

    .line 285
    .line 286
    const-string v1, "\ufffc"

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 296
    .line 297
    .line 298
    :cond_e
    sget p2, Lcom/transsion/search/R$id;->search_hot_rank_item_subtitle_text:I

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

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
