.class public final Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler;
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
    instance-of v2, v1, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

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
    iput v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

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
    goto/16 :goto_5

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
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v7, ""

    .line 73
    .line 74
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object v9, v8

    .line 85
    :goto_1
    const-class v10, [Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v9, v10}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, [Ljava/lang/String;

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    if-eqz v9, :cond_a

    .line 95
    .line 96
    array-length v11, v9

    .line 97
    if-nez v11, :cond_4

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    sget-object v11, Lmg/a;->a:Lmg/a$a;

    .line 101
    .line 102
    invoke-virtual {v11}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    if-eqz v11, :cond_6

    .line 107
    .line 108
    const-string v12, "phone_brand"

    .line 109
    .line 110
    invoke-virtual {v11, v12, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    if-nez v11, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    move-object v7, v11

    .line 118
    :cond_6
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_7

    .line 123
    .line 124
    sget-object v7, Ltg/b;->a:Ltg/b;

    .line 125
    .line 126
    invoke-virtual {v7}, Ltg/b;->d()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    :cond_7
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    array-length v7, v9

    .line 133
    move v11, v10

    .line 134
    :goto_3
    if-ge v11, v7, :cond_b

    .line 135
    .line 136
    aget-object v12, v9, v11

    .line 137
    .line 138
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 139
    .line 140
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    const-string v15, "toLowerCase(...)"

    .line 145
    .line 146
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v6, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x2

    .line 161
    invoke-static {v14, v6, v10, v3, v8}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-nez v6, :cond_8

    .line 166
    .line 167
    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v6, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v6, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v6, v12, v10, v3, v8}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_9

    .line 190
    .line 191
    :cond_8
    const/4 v3, 0x1

    .line 192
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 193
    .line 194
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 195
    .line 196
    const/4 v6, 0x1

    .line 197
    move-object/from16 v3, p0

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    :goto_4
    iput-boolean v10, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 201
    .line 202
    :cond_b
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 203
    .line 204
    if-nez v1, :cond_e

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    iput v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

    .line 214
    .line 215
    move-object/from16 v3, p1

    .line 216
    .line 217
    move-object/from16 v5, p3

    .line 218
    .line 219
    invoke-virtual {v1, v3, v0, v5, v2}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-ne v1, v4, :cond_c

    .line 224
    .line 225
    return-object v4

    .line 226
    :cond_c
    :goto_5
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 227
    .line 228
    if-nez v1, :cond_f

    .line 229
    .line 230
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    goto :goto_6

    .line 235
    :cond_e
    new-instance v1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 236
    .line 237
    const-string v0, "\u5f53\u524d\u624b\u673a\u54c1\u724c\u5728\u9ed1\u540d\u5355\u4e2d"

    .line 238
    .line 239
    invoke-direct {v1, v10, v0}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_f
    :goto_6
    return-object v1
.end method
