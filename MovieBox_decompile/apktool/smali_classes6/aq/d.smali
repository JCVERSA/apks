.class public final Laq/d;
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


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search/bean/SuggestEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Laq/d;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/SuggestEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->fragment_search_suggest_staff_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/SuggestEntity;)V
    .locals 10

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
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/transsion/search/bean/SuggestEntity;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Staff;->getAvatarUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :cond_0
    const-string v1, ""

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget v1, Lcom/transsion/moviedetailapi/R$mipmap;->movie_staff_default_avatar:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lni/f$b;->i(I)Lni/f$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/transsion/search/R$id;->ivCover:I

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 54
    .line 55
    .line 56
    sget v0, Lcom/transsion/search/R$id;->tvTitle:I

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/search/bean/SuggestEntity;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Staff;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v1, v2

    .line 71
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 72
    .line 73
    .line 74
    sget v0, Lcom/transsion/search/R$id;->tvDes:I

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/transsion/search/bean/SuggestEntity;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x1

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Staff;->getStaffTypes()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    move-object v6, v3

    .line 104
    check-cast v6, Ljava/lang/Iterable;

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    move v7, v4

    .line 111
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_5

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    add-int/lit8 v9, v7, 0x1

    .line 122
    .line 123
    if-gez v7, :cond_3

    .line 124
    .line 125
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 126
    .line 127
    .line 128
    :cond_3
    check-cast v8, Lcom/transsion/moviedetailapi/bean/StaffType;

    .line 129
    .line 130
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/StaffType;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    sub-int/2addr v8, v5

    .line 146
    if-ge v7, v8, :cond_4

    .line 147
    .line 148
    const-string v7, " \u00b7 "

    .line 149
    .line 150
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_4
    move v7, v9

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 156
    .line 157
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v6, "  "

    .line 161
    .line 162
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    .line 171
    .line 172
    sget v1, Lcom/transsion/search/R$drawable;->search_suggest_staff:I

    .line 173
    .line 174
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    .line 176
    const/16 v7, 0x1d

    .line 177
    .line 178
    if-lt v6, v7, :cond_6

    .line 179
    .line 180
    new-instance v6, Landroid/text/style/ImageSpan;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    const/4 v8, 0x2

    .line 187
    invoke-direct {v6, v7, v1, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    new-instance v6, Landroid/text/style/ImageSpan;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-direct {v6, v7, v1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 198
    .line 199
    .line 200
    :goto_2
    const/16 v1, 0x22

    .line 201
    .line 202
    invoke-virtual {v3, v6, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    sget v0, Lcom/transsion/search/R$id;->tvWorks:I

    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/transsion/search/bean/SuggestEntity;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    if-eqz p2, :cond_8

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getSubjectNum()Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    sget v1, Lcom/transsion/search/R$string;->search_works:I

    .line 225
    .line 226
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, " "

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 251
    .line 252
    .line 253
    return-void
.end method
