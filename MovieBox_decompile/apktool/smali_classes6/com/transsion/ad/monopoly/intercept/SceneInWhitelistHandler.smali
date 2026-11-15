.class public final Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler;
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
    .locals 10

    .line 1
    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;->label:I

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
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 54
    .line 55
    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v2, 0x0

    .line 66
    :goto_1
    const-class v4, [Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, [Ljava/lang/String;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    array-length v5, v2

    .line 78
    if-nez v5, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    array-length v5, v2

    .line 82
    move v6, v4

    .line 83
    :goto_2
    if-ge v6, v5, :cond_7

    .line 84
    .line 85
    aget-object v7, v2, v6

    .line 86
    .line 87
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 88
    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const-string v9, "toLowerCase(...)"

    .line 94
    .line 95
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    iput-boolean v3, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 112
    .line 113
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    :goto_3
    iput-boolean v3, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 117
    .line 118
    :cond_7
    iget-boolean p4, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 119
    .line 120
    if-eqz p4, :cond_a

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    if-eqz p4, :cond_9

    .line 127
    .line 128
    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler$doHandle$1;->label:I

    .line 129
    .line 130
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    if-ne p4, v1, :cond_8

    .line 135
    .line 136
    return-object v1

    .line 137
    :cond_8
    :goto_4
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 138
    .line 139
    if-nez p4, :cond_b

    .line 140
    .line 141
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    goto :goto_5

    .line 146
    :cond_a
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 147
    .line 148
    const-string p1, "\u5f53\u524d\u573a\u666f\u4e0d\u5728\u767d\u540d\u5355\u4e2d"

    .line 149
    .line 150
    invoke-direct {p4, v4, p1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_b
    :goto_5
    return-object p4
.end method
