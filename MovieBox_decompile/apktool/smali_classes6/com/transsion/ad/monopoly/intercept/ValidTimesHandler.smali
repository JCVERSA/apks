.class public final Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget p1, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->I$0:I

    .line 55
    .line 56
    iget-object p2, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    move-object p3, p2

    .line 59
    check-cast p3, Ljava/util/Map;

    .line 60
    .line 61
    iget-object p2, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 64
    .line 65
    iget-object v2, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    if-eqz p4, :cond_4

    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move p4, v3

    .line 90
    :goto_1
    sget-object v2, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a:Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

    .line 91
    .line 92
    iput-object p1, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object p2, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object p3, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 97
    .line 98
    iput p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->I$0:I

    .line 99
    .line 100
    iput v5, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    .line 101
    .line 102
    invoke-virtual {v2, p2, v0}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, v1, :cond_5

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_5
    move-object v6, v2

    .line 110
    move-object v2, p1

    .line 111
    move p1, p4

    .line 112
    move-object p4, v6

    .line 113
    :goto_2
    check-cast p4, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-ge p4, p1, :cond_8

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    const/4 p4, 0x0

    .line 128
    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 133
    .line 134
    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    .line 135
    .line 136
    invoke-virtual {p1, v2, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    if-ne p4, v1, :cond_6

    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_6
    :goto_3
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 144
    .line 145
    if-nez p4, :cond_9

    .line 146
    .line 147
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 153
    .line 154
    const-string p1, "\u5c55\u793a\u6b21\u6570\u5df2\u7ecf\u8fbe\u5230\u4e0a\u9650"

    .line 155
    .line 156
    invoke-direct {p4, v3, p1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_9
    :goto_4
    return-object p4
.end method
