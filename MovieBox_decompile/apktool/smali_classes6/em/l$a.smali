.class public final Lem/l$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/member/view/InviteUserView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lem/l;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lem/l;

.field final synthetic b:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method constructor <init>(Lem/l;Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lem/l$a;->a:Lem/l;

    .line 2
    .line 3
    iput-object p2, p0, Lem/l$a;->b:Lcom/transsion/member/view/InviteUserView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lem/l$a;->a:Lem/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lem/l;->S()Lcom/transsion/member/MemberViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lem/l$a;->a:Lem/l;

    .line 8
    .line 9
    invoke-static {v1}, Lem/l;->H(Lem/l;)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/16 v2, 0xf

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/transsion/member/MemberViewModel;->K(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/memberapi/MemberTaskItemInvite;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lem/l$a;->e(ILcom/transsion/memberapi/MemberTaskItemInvite;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic c(Lcom/transsion/member/view/InviteUserView$e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/transsion/memberapi/MemberTaskItemInvite;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lem/l$a;->d(Lcom/transsion/member/view/InviteUserView$e;ILcom/transsion/memberapi/MemberTaskItemInvite;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lcom/transsion/member/view/InviteUserView$e;ILcom/transsion/memberapi/MemberTaskItemInvite;)V
    .locals 8

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "data"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Lcom/transsion/member/R$id;->tag_iv:I

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 22
    .line 23
    sget v1, Lcom/transsion/member/R$id;->member_reward:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lem/l$a;->a:Lem/l;

    .line 32
    .line 33
    iget-object v2, p0, Lem/l$a;->b:Lcom/transsion/member/view/InviteUserView;

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardAmount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardType()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-ne v4, v5, :cond_0

    .line 45
    .line 46
    const-string v4, "days"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v4, "points"

    .line 50
    .line 51
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v7, "+"

    .line 57
    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-ne v0, v5, :cond_2

    .line 79
    .line 80
    invoke-static {v1}, Lem/l;->G(Lem/l;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 87
    .line 88
    sget v1, Lcom/transsion/member/R$id;->member_invite_user_tv:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 100
    .line 101
    sget v1, Lcom/transsion/member/R$id;->member_invite_user_pb:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 114
    .line 115
    sget v1, Lcom/transsion/member/R$id;->member_invite_user_tv:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 127
    .line 128
    sget v1, Lcom/transsion/member/R$id;->member_invite_user_pb:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_5

    .line 144
    .line 145
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 146
    .line 147
    sget v0, Lcom/transsion/member/R$id;->member_invite_user_tv:I

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/TextView;

    .line 154
    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget v1, Lcom/transsion/member/R$string;->member_reward_friend_tips:I

    .line 162
    .line 163
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getFriendSeq()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-array v3, v5, [Ljava/lang/Object;

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    aput-object v2, v3, v4

    .line 175
    .line 176
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardType()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-ne p1, v5, :cond_6

    .line 188
    .line 189
    sget p1, Lcom/transsion/member/R$mipmap;->ic_member_small:I

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    sget p1, Lcom/transsion/member/R$mipmap;->ic_member_points:I

    .line 193
    .line 194
    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public e(ILcom/transsion/memberapi/MemberTaskItemInvite;)I
    .locals 0

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p2, 0x3

    .line 19
    :goto_0
    return p2
.end method
