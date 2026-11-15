.class final Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->J(Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.rewardscenter.task.member.BaseTaskCommonProvider$startClaim$1"
    f = "BaseTaskCommonProvider.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
            "Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->$item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->h(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->g(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->B()Lzo/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget p1, Lcom/transsion/rewardscenter/R$string;->claim_points_failed_tips:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "getString(...)"

    .line 29
    .line 30
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-static {p1, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->B()Lzo/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move v4, v2

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_8

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    add-int/lit8 v6, v4, 0x1

    .line 51
    .line 52
    if-gez v4, :cond_0

    .line 53
    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 55
    .line 56
    .line 57
    :cond_0
    check-cast v5, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v8, 0x0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    invoke-virtual {v9}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move-object v9, v8

    .line 78
    :goto_1
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_7

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_7

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    move-object v3, v8

    .line 98
    :goto_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    if-eqz v5, :cond_6

    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eqz v5, :cond_6

    .line 109
    .line 110
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 115
    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    move-object v7, v8

    .line 126
    :goto_3
    invoke-virtual {v5, v7}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setStatus(Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    move-object v7, v8

    .line 137
    :goto_4
    invoke-virtual {v5, v7}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setProgress(Ljava/lang/Integer;)V

    .line 138
    .line 139
    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    :cond_5
    invoke-virtual {v5, v8}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setTotalProgress(Ljava/lang/Integer;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    move v3, v4

    .line 150
    :cond_7
    move v4, v6

    .line 151
    goto :goto_0

    .line 152
    :cond_8
    if-eqz p1, :cond_9

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getCurrentPoint()Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->B()Lzo/a;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->C(I)V

    .line 173
    .line 174
    .line 175
    :cond_9
    if-gez v3, :cond_a

    .line 176
    .line 177
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_a
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_b

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 197
    .line 198
    if-eqz p1, :cond_b

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-eqz p1, :cond_b

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    goto :goto_5

    .line 211
    :cond_b
    move p1, v2

    .line 212
    :goto_5
    sget-object v4, Lfh/b;->a:Lfh/b$a;

    .line 213
    .line 214
    sget v5, Lcom/transsion/rewardscenter/R$layout;->claim_succeed_layout:I

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    sget v6, Lcom/transsion/rewardscenter/R$string;->claim_points_receive_tips:I

    .line 221
    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    .line 227
    .line 228
    aput-object p1, v0, v2

    .line 229
    .line 230
    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const-string p1, "getString(...)"

    .line 235
    .line 236
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const/high16 p1, 0x42840000    # 66.0f

    .line 240
    .line 241
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    const/16 v10, 0x8

    .line 246
    .line 247
    const/4 v11, 0x0

    .line 248
    const/16 v7, 0x50

    .line 249
    .line 250
    const/4 v8, 0x0

    .line 251
    invoke-static/range {v4 .. v11}, Lfh/b$a;->h(Lfh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->G()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    if-eqz p0, :cond_c

    .line 262
    .line 263
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 264
    .line 265
    .line 266
    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 267
    .line 268
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->$item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;-><init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->$item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    .line 36
    .line 37
    new-instance v4, Lcom/transsion/rewardscenter/task/member/b;

    .line 38
    .line 39
    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/task/member/b;-><init>(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    .line 43
    .line 44
    new-instance v5, Lcom/transsion/rewardscenter/task/member/c;

    .line 45
    .line 46
    invoke-direct {v5, v3}, Lcom/transsion/rewardscenter/task/member/c;-><init>(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;)V

    .line 47
    .line 48
    .line 49
    iput v2, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->label:I

    .line 50
    .line 51
    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1
.end method
