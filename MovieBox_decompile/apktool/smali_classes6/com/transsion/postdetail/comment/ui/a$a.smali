.class public final Lcom/transsion/postdetail/comment/ui/a$a;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/comment/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42000000    # 32.0f

    .line 5
    .line 6
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/transsion/postdetail/comment/ui/a$a;->e:I

    .line 11
    .line 12
    const/high16 v0, 0x424c0000    # 51.0f

    .line 13
    .line 14
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/transsion/postdetail/comment/ui/a$a;->f:I

    .line 19
    .line 20
    const/high16 v0, 0x42080000    # 34.0f

    .line 21
    .line 22
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/transsion/postdetail/comment/ui/a$a;->g:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/comment/ui/a$a;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/postdetail/R$layout;->item_my_comment_list_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v2, Lcom/transsion/postdetail/R$id;->avatarIV:I

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/ImageView;

    .line 20
    .line 21
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getAvatarUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, ""

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    move-object v5, v6

    .line 40
    :cond_0
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget v5, p0, Lcom/transsion/postdetail/comment/ui/a$a;->e:I

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget v5, p0, Lcom/transsion/postdetail/comment/ui/a$a;->e:I

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Lni/f$b;->c(I)Lni/f$b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 57
    .line 58
    .line 59
    sget v2, Lcom/transsion/postdetail/R$id;->contentIV:I

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v3, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_1

    .line 97
    .line 98
    move-object v5, v6

    .line 99
    :cond_1
    invoke-virtual {v3, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget v5, p0, Lcom/transsion/postdetail/comment/ui/a$a;->f:I

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget v5, p0, Lcom/transsion/postdetail/comment/ui/a$a;->g:I

    .line 110
    .line 111
    invoke-virtual {v3, v5}, Lni/f$b;->c(I)Lni/f$b;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-nez v4, :cond_2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    move-object v6, v4

    .line 123
    :goto_0
    invoke-virtual {v3, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    sget v2, Lcom/transsion/postdetail/R$id;->nameTV:I

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getNickName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 137
    .line 138
    .line 139
    sget v2, Lcom/transsion/postdetail/R$id;->commentTV:I

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 146
    .line 147
    .line 148
    sget v2, Lcom/transsion/postdetail/R$id;->timeTV:I

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Landroid/widget/TextView;

    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCreatedAt()Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz p2, :cond_4

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    sget v3, Lcom/transsion/postdetail/R$string;->comment_post_time:I

    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    invoke-static {v4, v5}, Lcom/transsion/postdetail/util/m;->b(J)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    new-array v5, v0, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object v4, v5, v1

    .line 179
    .line 180
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    if-eqz p2, :cond_5

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    move v0, v1

    .line 191
    :goto_1
    if-eqz v0, :cond_6

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    const/16 v1, 0x8

    .line 195
    .line 196
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    return-void
.end method
