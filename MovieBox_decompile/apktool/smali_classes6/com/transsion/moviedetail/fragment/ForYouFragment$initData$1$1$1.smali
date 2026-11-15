.class final Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/ForYouFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

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
    .locals 10

    .line 1
    instance-of v0, p2, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->label:I

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
    iput v1, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;-><init>(Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->label:I

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
    iget p1, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->I$0:I

    .line 39
    .line 40
    iget-object v2, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->L$2:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/Iterator;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 47
    .line 48
    iget-object v5, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v5, Lcom/transsion/edcation/bean/CourseBean;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 69
    .line 70
    invoke-static {p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment;->q0(Lcom/transsion/moviedetail/fragment/ForYouFragment;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_6

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Iterable;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v4, 0x0

    .line 91
    move-object v9, v2

    .line 92
    move-object v2, p2

    .line 93
    move-object p2, v9

    .line 94
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    add-int/lit8 v6, v4, 0x1

    .line 105
    .line 106
    if-gez v4, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 109
    .line 110
    .line 111
    :cond_3
    check-cast v5, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSeenStatus()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v5, v7}, Lcom/transsion/moviedetailapi/bean/Subject;->setSeenStatus(Ljava/lang/Integer;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v7, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;

    .line 143
    .line 144
    const/4 v8, 0x0

    .line 145
    invoke-direct {v7, p2, v4, p1, v8}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$1$1;-><init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;ILcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)V

    .line 146
    .line 147
    .line 148
    iput-object p1, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p2, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v2, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->L$2:Ljava/lang/Object;

    .line 153
    .line 154
    iput v6, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->I$0:I

    .line 155
    .line 156
    iput v3, v0, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1$emit$1;->label:I

    .line 157
    .line 158
    invoke-static {v5, v7, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-ne v4, v1, :cond_4

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_4
    move-object v5, p1

    .line 166
    move-object v4, p2

    .line 167
    move p1, v6

    .line 168
    :goto_2
    move-object p2, v4

    .line 169
    move v4, p1

    .line 170
    move-object p1, v5

    .line 171
    goto :goto_1

    .line 172
    :cond_5
    move v4, v6

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/edcation/bean/CourseBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/ForYouFragment$initData$1$1$1;->a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
