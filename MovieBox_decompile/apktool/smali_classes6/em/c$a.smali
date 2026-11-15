.class public final Lem/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/member/view/CheckInView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lem/c;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/memberapi/MemberTaskItem;

.field final synthetic b:Lem/c;

.field final synthetic c:Lcom/transsion/member/view/CheckInView;


# direct methods
.method constructor <init>(Lcom/transsion/memberapi/MemberTaskItem;Lem/c;Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lem/c$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    .line 2
    .line 3
    iput-object p2, p0, Lem/c$a;->b:Lem/c;

    .line 4
    .line 5
    iput-object p3, p0, Lem/c$a;->c:Lcom/transsion/member/view/CheckInView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/member/view/CheckInView$b;I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "holder"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lem/c$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v2, v1

    .line 14
    check-cast v2, Ljava/util/Collection;

    .line 15
    .line 16
    if-eqz v2, :cond_c

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 27
    .line 28
    sget v3, Lcom/transsion/member/R$id;->tag_iv:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 37
    .line 38
    sget v4, Lcom/transsion/member/R$id;->member_point:I

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardAmount()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardType()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ne v5, v0, :cond_1

    .line 63
    .line 64
    const-string v5, "days"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string v5, ""

    .line 68
    .line 69
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v7, "+"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v4, 0x5

    .line 97
    const/4 v5, 0x2

    .line 98
    if-eq v3, v5, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-ne v3, v4, :cond_7

    .line 105
    .line 106
    :cond_3
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    iget-object v3, p0, Lem/c$a;->b:Lem/c;

    .line 113
    .line 114
    invoke-static {v3}, Lem/c;->A(Lem/c;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 121
    .line 122
    sget v6, Lcom/transsion/member/R$id;->member_check_in_tv:I

    .line 123
    .line 124
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 134
    .line 135
    sget v6, Lcom/transsion/member/R$id;->member_check_in_pb:I

    .line 136
    .line 137
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_7

    .line 142
    .line 143
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 148
    .line 149
    sget v6, Lcom/transsion/member/R$id;->member_check_in_tv:I

    .line 150
    .line 151
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 161
    .line 162
    sget v6, Lcom/transsion/member/R$id;->member_check_in_pb:I

    .line 163
    .line 164
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-eqz v3, :cond_7

    .line 169
    .line 170
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_1
    if-eqz v2, :cond_9

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardType()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-ne v1, v0, :cond_8

    .line 180
    .line 181
    sget v1, Lcom/transsion/member/R$mipmap;->ic_member_small:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    sget v1, Lcom/transsion/member/R$mipmap;->ic_member_points:I

    .line 185
    .line 186
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    .line 188
    .line 189
    :cond_9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 190
    .line 191
    sget v2, Lcom/transsion/member/R$id;->member_check_in:I

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Landroid/widget/TextView;

    .line 198
    .line 199
    if-eqz v1, :cond_c

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eq v2, v4, :cond_b

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-ne p1, v5, :cond_a

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_a
    iget-object p1, p0, Lem/c$a;->c:Lcom/transsion/member/view/CheckInView;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    sget v2, Lcom/transsion/member/R$string;->member_task_day_tip:I

    .line 221
    .line 222
    add-int/2addr p2, v0

    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    new-array v0, v0, [Ljava/lang/Object;

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    aput-object p2, v0, v3

    .line 231
    .line 232
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    goto :goto_4

    .line 237
    :cond_b
    :goto_3
    iget-object p1, p0, Lem/c$a;->c:Lcom/transsion/member/view/CheckInView;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    sget p2, Lcom/transsion/member/R$string;->member_claim:I

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    :cond_c
    :goto_5
    return-void
.end method

.method public b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lem/c$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/Collection;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x1

    .line 31
    sub-int/2addr v0, v3

    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    move p1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    if-eqz p1, :cond_6

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const/4 v2, 0x6

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 v2, 0x3

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    if-eqz p1, :cond_5

    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    move v2, v3

    .line 64
    :cond_6
    :goto_1
    return v2
.end method
