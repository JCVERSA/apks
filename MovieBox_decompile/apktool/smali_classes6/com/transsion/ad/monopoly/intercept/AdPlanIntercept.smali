.class public final Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;->a:Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;-><init>(Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;->label:I

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
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :try_start_1
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 59
    .line 60
    new-instance p4, Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 61
    .line 62
    invoke-direct {p4}, Lcom/transsion/ad/monopoly/intercept/a$a;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;

    .line 66
    .line 67
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler;

    .line 75
    .line 76
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/SceneInWhitelistHandler;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler;

    .line 93
    .line 94
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler;

    .line 102
    .line 103
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler;

    .line 111
    .line 112
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/InDenyModelHandler;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler;

    .line 120
    .line 121
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/ModelInWhitelistHandler;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ValidTimeHandler;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/ValidTimeHandler;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;

    .line 138
    .line 139
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler;

    .line 147
    .line 148
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/c;

    .line 156
    .line 157
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/c;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/b;

    .line 165
    .line 166
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/b;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;

    .line 174
    .line 175
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p4, v2}, Lcom/transsion/ad/monopoly/intercept/a$a;->a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-virtual {p4}, Lcom/transsion/ad/monopoly/intercept/a$a;->b()Lcom/transsion/ad/monopoly/intercept/a;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    if-eqz p4, :cond_4

    .line 187
    .line 188
    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept$isHit$1;->label:I

    .line 189
    .line 190
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    if-ne p4, v1, :cond_3

    .line 195
    .line 196
    return-object v1

    .line 197
    :cond_3
    :goto_1
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 198
    .line 199
    if-eqz p4, :cond_4

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 203
    .line 204
    const-string p1, "default"

    .line 205
    .line 206
    invoke-direct {p4, v3, p1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    goto :goto_4

    .line 214
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 215
    .line 216
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    if-nez p2, :cond_5

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_5
    new-instance p1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-direct {p1, v3, p2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_5
    return-object p1
.end method
