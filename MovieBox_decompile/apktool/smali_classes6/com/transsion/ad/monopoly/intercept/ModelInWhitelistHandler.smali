.class public final Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler;
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
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;->label:I

    .line 26
    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;

    .line 31
    .line 32
    move-object/from16 v5, p0

    .line 33
    .line 34
    invoke-direct {v4, v5, v3}, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v3, v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget v7, v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;->label:I

    .line 44
    .line 45
    const/4 v8, 0x2

    .line 46
    const/4 v9, 0x1

    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    if-eq v7, v9, :cond_2

    .line 50
    .line 51
    if-ne v7, v8, :cond_1

    .line 52
    .line 53
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getModel()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/4 v7, 0x0

    .line 82
    :goto_1
    const-class v10, [Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v7, v10}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, [Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v7, :cond_d

    .line 91
    .line 92
    array-length v10, v7

    .line 93
    if-nez v10, :cond_5

    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_5
    sget-object v10, Ltg/b;->a:Ltg/b;

    .line 98
    .line 99
    invoke-virtual {v10}, Ltg/b;->l()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 104
    .line 105
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 106
    .line 107
    .line 108
    array-length v12, v7

    .line 109
    const/4 v13, 0x0

    .line 110
    move v14, v13

    .line 111
    :goto_2
    if-ge v14, v12, :cond_8

    .line 112
    .line 113
    aget-object v15, v7, v14

    .line 114
    .line 115
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 116
    .line 117
    invoke-virtual {v15, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v8, "toLowerCase(...)"

    .line 122
    .line 123
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    move-object/from16 v17, v7

    .line 134
    .line 135
    move/from16 v16, v12

    .line 136
    .line 137
    const/4 v7, 0x2

    .line 138
    const/4 v12, 0x0

    .line 139
    invoke-static {v3, v5, v13, v7, v12}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_6

    .line 144
    .line 145
    invoke-virtual {v10, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v15, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v3, v5, v13, v7, v12}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    :cond_6
    const/4 v3, 0x1

    .line 166
    iput-boolean v3, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 167
    .line 168
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 169
    .line 170
    move/from16 v12, v16

    .line 171
    .line 172
    move-object/from16 v7, v17

    .line 173
    .line 174
    const/4 v8, 0x2

    .line 175
    const/4 v9, 0x1

    .line 176
    move-object/from16 v5, p0

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    iget-boolean v3, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 180
    .line 181
    if-eqz v3, :cond_b

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v3, :cond_a

    .line 188
    .line 189
    const/4 v5, 0x2

    .line 190
    iput v5, v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;->label:I

    .line 191
    .line 192
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    if-ne v3, v6, :cond_9

    .line 197
    .line 198
    return-object v6

    .line 199
    :cond_9
    :goto_3
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 200
    .line 201
    if-nez v3, :cond_c

    .line 202
    .line 203
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    goto :goto_4

    .line 208
    :cond_b
    new-instance v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 209
    .line 210
    const-string v0, "\u5f53\u524d\u624b\u673a\u673a\u578b\u4e0d\u5728\u767d\u540d\u5355\u4e2d"

    .line 211
    .line 212
    invoke-direct {v3, v13, v0}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    :goto_4
    return-object v3

    .line 216
    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-eqz v3, :cond_f

    .line 221
    .line 222
    const/4 v5, 0x1

    .line 223
    iput v5, v4, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler$doHandle$1;->label:I

    .line 224
    .line 225
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-ne v3, v6, :cond_e

    .line 230
    .line 231
    return-object v6

    .line 232
    :cond_e
    :goto_6
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 233
    .line 234
    if-nez v3, :cond_10

    .line 235
    .line 236
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    :cond_10
    return-object v3
.end method
