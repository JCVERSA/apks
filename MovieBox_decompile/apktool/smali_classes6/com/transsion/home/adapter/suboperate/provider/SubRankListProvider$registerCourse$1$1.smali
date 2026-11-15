.class final Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$1:I

    .line 39
    .line 40
    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$0:I

    .line 41
    .line 42
    iget-object v4, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Ljava/util/Iterator;

    .line 45
    .line 46
    iget-object v5, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Ljava/util/Iterator;

    .line 49
    .line 50
    iget-object v6, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    .line 53
    .line 54
    iget-object v7, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v7, Lcom/transsion/edcation/bean/CourseBean;

    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/bean/OperateItem;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_7

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_7

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-eqz p2, :cond_7

    .line 92
    .line 93
    check-cast p2, Ljava/lang/Iterable;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const/4 v4, 0x0

    .line 102
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    add-int/lit8 v6, v4, 0x1

    .line 113
    .line 114
    if-gez v4, :cond_3

    .line 115
    .line 116
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 117
    .line 118
    .line 119
    :cond_3
    check-cast v5, Lcom/transsion/home/bean/RankingListItem;

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    if-eqz v5, :cond_6

    .line 126
    .line 127
    check-cast v5, Ljava/lang/Iterable;

    .line 128
    .line 129
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    move-object v7, p1

    .line 134
    move p1, v4

    .line 135
    move-object v4, v5

    .line 136
    move-object v5, p2

    .line 137
    move v11, v6

    .line 138
    move-object v6, v2

    .line 139
    move v2, v11

    .line 140
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_5

    .line 145
    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 151
    .line 152
    invoke-virtual {v7}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_4

    .line 165
    .line 166
    invoke-virtual {v7}, Lcom/transsion/edcation/bean/CourseBean;->getSeenStatus()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {p2, v8}, Lcom/transsion/moviedetailapi/bean/Subject;->setSeenStatus(Ljava/lang/Integer;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    new-instance v9, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$1$1$1;

    .line 182
    .line 183
    const/4 v10, 0x0

    .line 184
    invoke-direct {v9, v6, p1, p2, v10}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$1$1$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;ILcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

    .line 185
    .line 186
    .line 187
    iput-object v7, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v6, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v5, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$2:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object v4, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$3:Ljava/lang/Object;

    .line 194
    .line 195
    iput v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$0:I

    .line 196
    .line 197
    iput p1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$1:I

    .line 198
    .line 199
    iput v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    .line 200
    .line 201
    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-ne p2, v1, :cond_4

    .line 206
    .line 207
    return-object v1

    .line 208
    :cond_5
    move v4, v2

    .line 209
    move-object p2, v5

    .line 210
    move-object v2, v6

    .line 211
    move-object p1, v7

    .line 212
    goto :goto_1

    .line 213
    :cond_6
    move v4, v6

    .line 214
    goto :goto_1

    .line 215
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/edcation/bean/CourseBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
