.class final Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/moviedetailapi/bean/Subject;

.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:F


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->e:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->f:I

    .line 7
    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->g:I

    .line 13
    .line 14
    add-int/lit8 v0, p2, -0x1

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x8

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x18

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr p1, v0

    .line 26
    int-to-float p1, p1

    .line 27
    int-to-float p2, p2

    .line 28
    div-float/2addr p1, p2

    .line 29
    iput p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->h:F

    .line 30
    .line 31
    const/high16 p2, 0x43150000    # 149.0f

    .line 32
    .line 33
    mul-float/2addr p1, p2

    .line 34
    const/high16 p2, 0x42d60000    # 107.0f

    .line 35
    .line 36
    div-float/2addr p1, p2

    .line 37
    iput p1, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->i:F

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->e:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_hor:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->e:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getStyle()Lcom/transsion/moviedetailapi/bean/LayoutStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/LayoutStyle;->getShape()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_1
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->Horizontal:Lcom/transsion/moviedetailapi/SubjectLayoutStyle;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->getValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_hor:I

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->Square:Lcom/transsion/moviedetailapi/SubjectLayoutStyle;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectLayoutStyle;->getValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_square:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you:I

    .line 74
    .line 75
    :goto_2
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 10

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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget v0, Lcom/transsion/moviedetail/R$id;->iv_cover:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-instance v7, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider$convert$1$1;

    .line 53
    .line 54
    invoke-direct {v7, p2, v0, v3}, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider$convert$1$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v8, 0x3

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v5, "getContext(...)"

    .line 72
    .line 73
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_2
    invoke-virtual {v1, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget v3, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->h:F

    .line 95
    .line 96
    float-to-int v3, v3

    .line 97
    invoke-virtual {v1, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget v3, p0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;->i:F

    .line 102
    .line 103
    float-to-int v3, v3

    .line 104
    invoke-virtual {v1, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-nez v3, :cond_4

    .line 119
    .line 120
    :cond_3
    const-string v3, ""

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v1, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_0
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_title:I

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_for_you_corner:I

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    if-eqz p2, :cond_8

    .line 166
    .line 167
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-nez p2, :cond_7

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    move p2, v2

    .line 175
    goto :goto_2

    .line 176
    :cond_8
    :goto_1
    const/4 p2, 0x1

    .line 177
    :goto_2
    if-nez p2, :cond_9

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    const/16 v2, 0x8

    .line 181
    .line 182
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
