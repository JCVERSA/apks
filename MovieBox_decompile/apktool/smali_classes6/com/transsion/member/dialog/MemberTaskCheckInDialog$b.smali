.class public final Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/member/view/CheckInView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

.field final synthetic b:Lcom/transsion/member/view/CheckInView;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->b:Lcom/transsion/member/view/CheckInView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/member/view/CheckInView$b;I)V
    .locals 7

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
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 8
    .line 9
    sget v2, Lcom/transsion/member/R$id;->tag_iv:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 18
    .line 19
    sget v3, Lcom/transsion/member/R$id;->member_point:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->s0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_9

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->getCheckInList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_9

    .line 40
    .line 41
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 46
    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardAmount()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "+"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v4, 0x2

    .line 82
    if-eq v2, v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v4, 0x5

    .line 89
    if-ne v2, v4, :cond_6

    .line 90
    .line 91
    :cond_2
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget-object v2, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->t0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 106
    .line 107
    sget v4, Lcom/transsion/member/R$id;->member_check_in_tv:I

    .line 108
    .line 109
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 119
    .line 120
    sget v4, Lcom/transsion/member/R$id;->member_check_in_pb:I

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 133
    .line 134
    sget v4, Lcom/transsion/member/R$id;->member_check_in_tv:I

    .line 135
    .line 136
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 146
    .line 147
    sget v4, Lcom/transsion/member/R$id;->member_check_in_pb:I

    .line 148
    .line 149
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_0
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardType()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-ne v2, v0, :cond_7

    .line 165
    .line 166
    sget v2, Lcom/transsion/member/R$mipmap;->ic_member_small:I

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    sget v2, Lcom/transsion/member/R$mipmap;->ic_member_points:I

    .line 170
    .line 171
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    .line 173
    .line 174
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 175
    .line 176
    sget v1, Lcom/transsion/member/R$id;->member_check_in:I

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/widget/TextView;

    .line 183
    .line 184
    if-eqz p1, :cond_9

    .line 185
    .line 186
    iget-object v1, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->b:Lcom/transsion/member/view/CheckInView;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget v2, Lcom/transsion/member/R$string;->member_task_day_tip:I

    .line 193
    .line 194
    add-int/2addr p2, v0

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    .line 201
    const/4 v3, 0x0

    .line 202
    aput-object p2, v0, v3

    .line 203
    .line 204
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_2
    return-void
.end method

.method public b(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->s0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->getCheckInList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->s0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->getCheckInList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, v3

    .line 46
    :goto_0
    const/4 v4, 0x1

    .line 47
    sub-int/2addr v2, v4

    .line 48
    if-ne p1, v2, :cond_2

    .line 49
    .line 50
    move v3, v4

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v1, 0x2

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    if-eqz v3, :cond_5

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/4 v1, 0x3

    .line 73
    goto :goto_1

    .line 74
    :cond_6
    if-eqz v3, :cond_7

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    goto :goto_1

    .line 78
    :cond_7
    move v1, v4

    .line 79
    :cond_8
    :goto_1
    return v1
.end method
