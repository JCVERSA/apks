.class public final Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;
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

.method public static final synthetic g(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;[Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;->h([Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h([Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;-><init>(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->I$1:I

    .line 40
    .line 41
    iget p2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->I$0:I

    .line 42
    .line 43
    iget-object v2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, [Ljava/lang/String;

    .line 46
    .line 47
    iget-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Ljava/util/List;

    .line 50
    .line 51
    iget-object v6, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v6, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object v9, v5

    .line 59
    move-object v5, v0

    .line 60
    move-object v0, v6

    .line 61
    move-object v6, v9

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance p3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    array-length v2, p1

    .line 80
    move-object v5, p3

    .line 81
    move p3, v3

    .line 82
    move-object v9, p2

    .line 83
    move-object p2, p1

    .line 84
    move p1, v2

    .line 85
    move-object v2, v0

    .line 86
    move-object v0, v9

    .line 87
    :goto_1
    if-ge p3, p1, :cond_5

    .line 88
    .line 89
    aget-object v6, p2, p3

    .line 90
    .line 91
    sget-object v7, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    .line 92
    .line 93
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 94
    .line 95
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const-string v8, "toLowerCase(...)"

    .line 100
    .line 101
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v5, v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p2, v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$2:Ljava/lang/Object;

    .line 109
    .line 110
    iput p3, v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->I$0:I

    .line 111
    .line 112
    iput p1, v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->I$1:I

    .line 113
    .line 114
    iput v4, v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    .line 115
    .line 116
    invoke-virtual {v7, v6, v2}, Lcom/transsion/ad/strategy/NationalInformationManager;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-ne v6, v1, :cond_3

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_3
    move-object v9, v2

    .line 124
    move-object v2, p2

    .line 125
    move p2, p3

    .line 126
    move-object p3, v6

    .line 127
    move-object v6, v5

    .line 128
    move-object v5, v9

    .line 129
    :goto_2
    check-cast p3, Ljava/util/List;

    .line 130
    .line 131
    if-eqz p3, :cond_4

    .line 132
    .line 133
    check-cast p3, Ljava/util/Collection;

    .line 134
    .line 135
    invoke-interface {v6, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    .line 137
    .line 138
    :cond_4
    add-int/lit8 p3, p2, 0x1

    .line 139
    .line 140
    move-object p2, v2

    .line 141
    move-object v2, v5

    .line 142
    move-object v5, v6

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    sget-object p1, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/transsion/ad/strategy/NationalInformationManager;->d()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    const-string p3, "toUpperCase(...)"

    .line 155
    .line 156
    if-eqz p2, :cond_8

    .line 157
    .line 158
    check-cast v5, Ljava/lang/Iterable;

    .line 159
    .line 160
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_a

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    check-cast p2, Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 181
    .line 182
    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    const/4 v1, 0x0

    .line 200
    :goto_3
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_6

    .line 205
    .line 206
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    return-object p1

    .line 211
    :cond_8
    check-cast v5, Ljava/lang/Iterable;

    .line 212
    .line 213
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_9

    .line 254
    .line 255
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    return-object p1

    .line 260
    :cond_a
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_5

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
    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    move-object p3, p1

    .line 57
    check-cast p3, Ljava/util/Map;

    .line 58
    .line 59
    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    move-object p2, p1

    .line 62
    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 63
    .line 64
    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move-object p4, v5

    .line 83
    :goto_1
    const-class v2, [Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p4, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    check-cast p4, [Ljava/lang/String;

    .line 90
    .line 91
    if-eqz p4, :cond_8

    .line 92
    .line 93
    array-length v2, p4

    .line 94
    if-nez v2, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    if-eqz p2, :cond_6

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move-object v2, v5

    .line 105
    :goto_2
    iput-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object p2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object p3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 110
    .line 111
    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    .line 112
    .line 113
    invoke-direct {p0, p4, v2, v0}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;->h([Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    if-ne p4, v1, :cond_7

    .line 118
    .line 119
    return-object v1

    .line 120
    :cond_7
    :goto_3
    check-cast p4, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    :cond_8
    :goto_4
    if-eqz v4, :cond_b

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    if-eqz p4, :cond_a

    .line 133
    .line 134
    iput-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 139
    .line 140
    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    .line 141
    .line 142
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    if-ne p4, v1, :cond_9

    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_9
    :goto_5
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 150
    .line 151
    if-nez p4, :cond_c

    .line 152
    .line 153
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 154
    .line 155
    .line 156
    move-result-object p4

    .line 157
    goto :goto_6

    .line 158
    :cond_b
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    const-string p2, "\u5f53\u524d\u56fd\u5bb6\u4e0d\u5728\u767d\u540d\u5355\u4e2d"

    .line 162
    .line 163
    invoke-direct {p4, p1, p2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_c
    :goto_6
    return-object p4
.end method
