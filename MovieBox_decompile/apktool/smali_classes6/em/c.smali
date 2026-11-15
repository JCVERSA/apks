.class public final Lem/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Landroidx/lifecycle/u;

.field private final f:Lcom/transsion/member/MemberViewModel;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/u;Lcom/transsion/member/MemberViewModel;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lem/c;->e:Landroidx/lifecycle/u;

    .line 15
    .line 16
    iput-object p2, p0, Lem/c;->f:Lcom/transsion/member/MemberViewModel;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic A(Lem/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lem/c;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method private static final C(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lem/c;II)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p4, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p4, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    sget-object p4, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-wide/16 v1, 0x7d0

    .line 15
    .line 16
    invoke-virtual {p4, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-eqz p4, :cond_1

    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    :try_start_0
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    move-object v0, p4

    .line 32
    check-cast v0, Ljava/util/Collection;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "event_detail"

    .line 49
    .line 50
    const-string v2, "task_check_in_item"

    .line 51
    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string v1, "index"

    .line 56
    .line 57
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    invoke-direct {p2, p1, v0}, Lem/c;->F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    if-nez p4, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p2, Lem/c;->g:Z

    .line 89
    .line 90
    invoke-virtual {p0, p3}, Lcom/transsion/member/view/CheckInView;->notifyItemCheckInStateChange(I)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p2, Lem/c;->f:Lcom/transsion/member/MemberViewModel;

    .line 94
    .line 95
    invoke-virtual {p0, p3}, Lcom/transsion/member/MemberViewModel;->M(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0, p3}, Lcom/transsion/member/view/CheckInView;->notifyItemCheckInStateChange(I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 111
    .line 112
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method

.method private static final D(Lem/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, Lem/c;->g:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iput-boolean v1, p0, Lem/c;->g:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/Collection;

    .line 17
    .line 18
    if-eqz v2, :cond_7

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;

    .line 43
    .line 44
    const-string v3, "getString(...)"

    .line 45
    .line 46
    const-string v4, "index"

    .line 47
    .line 48
    const-string v5, "event_detail"

    .line 49
    .line 50
    if-eqz p3, :cond_6

    .line 51
    .line 52
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v7, "task_check_in_item_success"

    .line 58
    .line 59
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-direct {p0, p1, v6}, Lem/c;->F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    move-object v5, v4

    .line 97
    check-cast v5, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const/4 v4, 0x0

    .line 107
    :goto_0
    check-cast v4, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 108
    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4, v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->setHasCheckIn(Z)V

    .line 112
    .line 113
    .line 114
    :cond_4
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;->getRewardType()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-ne v4, v0, :cond_5

    .line 125
    .line 126
    sget v4, Lcom/transsion/member/R$string;->member_claimed_succeed_days:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    sget v4, Lcom/transsion/member/R$string;->member_reward_points_receive_tips:I

    .line 130
    .line 131
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;->getRewardAmount()I

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    new-array v3, v0, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object p3, v3, v1

    .line 149
    .line 150
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string p3, "format(...)"

    .line 159
    .line 160
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1}, Lem/c;->G(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v0, "task_check_in_item_fail"

    .line 173
    .line 174
    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    invoke-direct {p0, p1, p3}, Lem/c;->F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    sget p3, Lcom/transsion/member/R$string;->member_reward_receive_fault_tips:I

    .line 194
    .line 195
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p1}, Lem/c;->G(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_2
    invoke-virtual {p2, v2}, Lcom/transsion/member/view/CheckInView;->notifyItemCheckInStateChange(I)V

    .line 206
    .line 207
    .line 208
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object p0
.end method

.method private final E(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "task_browse"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "taskSubType"

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardType()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "rewardType"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "rewardAmount"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_0

    .line 89
    .line 90
    move-object v1, v2

    .line 91
    :cond_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 92
    .line 93
    :cond_2
    if-nez v1, :cond_3

    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const/4 p1, 0x0

    .line 98
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v1, "showClaim"

    .line 103
    .line 104
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 108
    .line 109
    const-string v1, "memberdetail"

    .line 110
    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private final F(Lcom/transsion/memberapi/MemberTaskItem;Ljava/util/Map;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "task_click"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "taskSubType"

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardType()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "rewardType"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "rewardAmount"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_0

    .line 89
    .line 90
    move-object v1, v2

    .line 91
    :cond_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 92
    .line 93
    :cond_2
    if-nez v1, :cond_3

    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const/4 p1, 0x0

    .line 98
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v1, "showClaim"

    .line 103
    .line 104
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 111
    .line 112
    const-string p2, "memberdetail"

    .line 113
    .line 114
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private final G(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    sget v1, Lcom/transsion/member/R$layout;->claim_succeed_layout:I

    .line 4
    .line 5
    const/high16 v2, 0x42840000    # 66.0f

    .line 6
    .line 7
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v3, 0x50

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v2, p1

    .line 18
    invoke-static/range {v0 .. v7}, Lfh/b$a;->h(Lfh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic y(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lem/c;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lem/c;->C(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lem/c;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lem/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lem/c;->D(Lem/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 3

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
    invoke-direct {p0, p2}, Lem/c;->E(Lcom/transsion/memberapi/MemberTaskItem;)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/transsion/member/R$id;->member_check_in_view:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/transsion/member/view/CheckInView;

    .line 21
    .line 22
    new-instance v0, Lem/c$a;

    .line 23
    .line 24
    invoke-direct {v0, p2, p0, p1}, Lem/c$a;-><init>(Lcom/transsion/memberapi/MemberTaskItem;Lem/c;Lcom/transsion/member/view/CheckInView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/member/view/CheckInView;->setDataViewBinder(Lcom/transsion/member/view/CheckInView$d;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lem/a;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2, p0}, Lem/a;-><init>(Lcom/transsion/member/view/CheckInView;Lcom/transsion/memberapi/MemberTaskItem;Lem/c;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/transsion/member/view/CheckInView;->setItemClicker(Lkotlin/jvm/functions/Function2;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView;->notifyAllChange()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lem/c;->f:Lcom/transsion/member/MemberViewModel;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lem/c;->e:Landroidx/lifecycle/u;

    .line 48
    .line 49
    new-instance v2, Lem/b;

    .line 50
    .line 51
    invoke-direct {v2, p0, p2, p1}, Lem/b;-><init>(Lem/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lem/c$b;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Lem/c$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/memberapi/MemberTaskItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lem/c;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/member/constants/TaskType;->CHECK_IN:Lcom/transsion/member/constants/TaskType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/member/constants/TaskType;->getValue()I

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
    sget v0, Lcom/transsion/member/R$layout;->item_task_check_in_container:I

    .line 2
    .line 3
    return v0
.end method
