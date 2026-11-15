.class public final Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler;
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
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;->label:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;->label:I

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 63
    .line 64
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v5, Ltg/b;->a:Ltg/b;

    .line 68
    .line 69
    invoke-virtual {v5}, Ltg/b;->l()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v7, 0x0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyModel()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object v8, v7

    .line 82
    :goto_1
    const-class v9, [Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v8, v9}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, [Ljava/lang/String;

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    if-eqz v8, :cond_7

    .line 92
    .line 93
    array-length v10, v8

    .line 94
    if-nez v10, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    array-length v10, v8

    .line 98
    move v11, v9

    .line 99
    :goto_2
    if-ge v11, v10, :cond_8

    .line 100
    .line 101
    aget-object v12, v8, v11

    .line 102
    .line 103
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 104
    .line 105
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    const-string v15, "toLowerCase(...)"

    .line 110
    .line 111
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 v3, 0x2

    .line 122
    invoke-static {v14, v6, v9, v3, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_5

    .line 127
    .line 128
    invoke-virtual {v5, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v6, v12, v9, v3, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    :cond_5
    const/4 v3, 0x1

    .line 149
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 150
    .line 151
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 152
    .line 153
    const/4 v6, 0x1

    .line 154
    move-object/from16 v3, p0

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    :goto_3
    iput-boolean v9, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 158
    .line 159
    :cond_8
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 160
    .line 161
    if-nez v1, :cond_b

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    const/4 v3, 0x1

    .line 170
    iput v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler$doHandle$1;->label:I

    .line 171
    .line 172
    move-object/from16 v3, p1

    .line 173
    .line 174
    move-object/from16 v5, p3

    .line 175
    .line 176
    invoke-virtual {v1, v3, v0, v5, v2}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-ne v1, v4, :cond_9

    .line 181
    .line 182
    return-object v4

    .line 183
    :cond_9
    :goto_4
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 184
    .line 185
    if-nez v1, :cond_c

    .line 186
    .line 187
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_5

    .line 192
    :cond_b
    new-instance v1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 193
    .line 194
    const-string v0, "\u5f53\u524d\u624b\u673a\u673a\u578b\u5728\u9ed1\u540d\u5355\u4e2d"

    .line 195
    .line 196
    invoke-direct {v1, v9, v0}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_c
    :goto_5
    return-object v1
.end method
