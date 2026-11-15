.class public final Lcom/transsion/usercenter/profile/see/adapter/a$c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/profile/see/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42900000    # 72.0f

    .line 5
    .line 6
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/transsion/usercenter/profile/see/adapter/a$c;->e:I

    .line 11
    .line 12
    const/high16 v0, 0x42c40000    # 98.0f

    .line 13
    .line 14
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/transsion/usercenter/profile/see/adapter/a$c;->f:I

    .line 19
    .line 20
    return-void
.end method

.method private final A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;)V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$id;->jumpTv:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    sget v1, Lcom/tn/lib/widget/R$mipmap;->ic_btn_arrow_transparent:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 15
    .line 16
    new-instance v1, Lcom/transsion/usercenter/profile/see/adapter/c;

    .line 17
    .line 18
    invoke-direct {v1, p2, p1}, Lcom/transsion/usercenter/profile/see/adapter/c;-><init>(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final B(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const-wide/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const-string p2, "/movie/staff"

    .line 16
    .line 17
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "staff"

    .line 22
    .line 23
    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x2

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, p1, v0, p2, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private final C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;)V
    .locals 6

    .line 1
    sget v0, Lcom/transsion/usercenter/R$id;->coverIv:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "getContext(...)"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getAvatarUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, ""

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    move-object v2, v3

    .line 33
    :cond_0
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget v2, Lcom/transsion/usercenter/R$mipmap;->profile_staff_default_avatar:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lni/f$b;->i(I)Lni/f$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v2, p0, Lcom/transsion/usercenter/profile/see/adapter/a$c;->e:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v2, p0, Lcom/transsion/usercenter/profile/see/adapter/a$c;->f:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 56
    .line 57
    .line 58
    sget v0, Lcom/transsion/usercenter/R$id;->nameTv:I

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 65
    .line 66
    .line 67
    sget v0, Lcom/transsion/usercenter/R$id;->maskTv:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v1, 0x8

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    sget v0, Lcom/transsion/usercenter/R$id;->tagTv:I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getStaffTypes()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    check-cast v2, Ljava/lang/Iterable;

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/transsion/moviedetailapi/bean/StaffType;

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-lez v5, :cond_1

    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, " I "

    .line 125
    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :cond_1
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/StaffType;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    sget v4, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 162
    .line 163
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    sget v2, Lcom/transsion/usercenter/R$mipmap;->profile_ic_staff:I

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-virtual {v0, v2, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 177
    .line 178
    .line 179
    sget v0, Lcom/transsion/usercenter/R$id;->desTv:I

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getDescription()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getDescription()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    if-eqz p2, :cond_4

    .line 199
    .line 200
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-nez p2, :cond_3

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    move p2, v3

    .line 208
    goto :goto_2

    .line 209
    :cond_4
    :goto_1
    const/4 p2, 0x1

    .line 210
    :goto_2
    if-nez p2, :cond_5

    .line 211
    .line 212
    move v1, v3

    .line 213
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public static synthetic y(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/profile/see/adapter/a$c;->B(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lp6/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/see/adapter/a$c;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;)V

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
    sget v0, Lcom/transsion/usercenter/R$layout;->profile_item_see_content:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;)V
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
    check-cast p2, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/see/adapter/a$c;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/see/adapter/a$c;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
