.class public final Lcom/transsion/member/MemberViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/MemberViewModel$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/member/MemberViewModel$a;

.field public static final p:I


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private l:Ljava/util/Map;

.field private m:Lio/reactivex/rxjava3/disposables/c;

.field private n:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/member/MemberViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/member/MemberViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/member/MemberViewModel;->o:Lcom/transsion/member/MemberViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/member/MemberViewModel;->p:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/member/e0;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/member/e0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/member/f0;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/member/f0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Landroidx/lifecycle/b0;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->d:Landroidx/lifecycle/b0;

    .line 37
    .line 38
    new-instance p1, Landroidx/lifecycle/b0;

    .line 39
    .line 40
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    .line 44
    .line 45
    new-instance p1, Landroidx/lifecycle/b0;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    .line 51
    .line 52
    new-instance p1, Landroidx/lifecycle/b0;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->g:Landroidx/lifecycle/b0;

    .line 58
    .line 59
    new-instance p1, Landroidx/lifecycle/b0;

    .line 60
    .line 61
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->h:Landroidx/lifecycle/b0;

    .line 65
    .line 66
    new-instance p1, Landroidx/lifecycle/b0;

    .line 67
    .line 68
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->i:Landroidx/lifecycle/b0;

    .line 72
    .line 73
    new-instance p1, Landroidx/lifecycle/b0;

    .line 74
    .line 75
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->j:Landroidx/lifecycle/b0;

    .line 79
    .line 80
    new-instance p1, Landroidx/lifecycle/b0;

    .line 81
    .line 82
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->k:Landroidx/lifecycle/b0;

    .line 86
    .line 87
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->l:Ljava/util/Map;

    .line 93
    .line 94
    return-void
.end method

.method private static final F()Lfm/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lfm/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lfm/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final G()Lim/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lim/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lim/b;

    .line 11
    .line 12
    return-object v0
.end method

.method private final H()V
    .locals 7

    .line 1
    sget-object v0, Lim/i;->a:Lim/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lim/i;->b()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/transsion/memberapi/SkuData;

    .line 12
    .line 13
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "Preload skuCache is "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "MemberViewModel"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final I(Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lcom/transsion/member/MemberViewModel$redeem$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/member/MemberViewModel$redeem$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

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
    iput v1, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/member/MemberViewModel$redeem$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/member/MemberViewModel$redeem$1;-><init>(Lcom/transsion/member/MemberViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

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
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_3

    .line 45
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
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 58
    .line 59
    new-instance p2, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "skuId"

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/transsion/member/MemberViewModel;->l:Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    const-string v4, "clientOrderId"

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    :try_start_2
    iget-object v2, p0, Lcom/transsion/member/MemberViewModel;->l:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/transsion/member/MemberViewModel;->l:Ljava/util/Map;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :goto_1
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 126
    .line 127
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const-string v2, "toString(...)"

    .line 132
    .line 133
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 137
    .line 138
    const-string v4, "application/json"

    .line 139
    .line 140
    invoke-virtual {v2, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p1, p2, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 153
    .line 154
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iput v3, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

    .line 159
    .line 160
    invoke-interface {p2, v2, p1, v0}, Lfm/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    if-ne p2, v1, :cond_4

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_4
    :goto_2
    return-object p2

    .line 168
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 169
    .line 170
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    instance-of p2, p1, Lretrofit2/HttpException;

    .line 185
    .line 186
    const/4 v0, 0x0

    .line 187
    if-eqz p2, :cond_b

    .line 188
    .line 189
    sget-object p2, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;

    .line 190
    .line 191
    check-cast p1, Lretrofit2/HttpException;

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-instance p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 198
    .line 199
    const-string v1, ""

    .line 200
    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-nez v2, :cond_6

    .line 208
    .line 209
    :cond_5
    move-object v2, v1

    .line 210
    :cond_6
    if-eqz p1, :cond_7

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    if-nez v3, :cond_8

    .line 217
    .line 218
    :cond_7
    move-object v3, v1

    .line 219
    :cond_8
    if-eqz p1, :cond_a

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getReason()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-nez p1, :cond_9

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_9
    move-object v1, p1

    .line 229
    :cond_a
    :goto_4
    invoke-direct {p2, v2, v3, v0, v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-object p2

    .line 233
    :cond_b
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 234
    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v1, "it = "

    .line 241
    .line 242
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const/4 v8, 0x4

    .line 253
    const/4 v9, 0x0

    .line 254
    const-string v5, "MemberViewModel"

    .line 255
    .line 256
    const/4 v7, 0x0

    .line 257
    invoke-static/range {v4 .. v9}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    return-object v0

    .line 261
    :cond_c
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 262
    .line 263
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 264
    .line 265
    .line 266
    throw p1
.end method

.method public static synthetic c()Lfm/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/member/MemberViewModel;->F()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lim/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/member/MemberViewModel;->G()Lim/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/member/MemberViewModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->k:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/member/MemberViewModel;Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/member/MemberViewModel;->I(Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->m:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->n:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    return-void
.end method

.method private final u()Lfm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfm/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final w()Lim/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lim/b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()V
    .locals 14

    .line 1
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "MEMBER_JSON"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    const-class v1, Lcom/transsion/memberapi/MemberDetail;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/transsion/memberapi/MemberDetail;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/member/MemberViewModel;->d:Landroidx/lifecycle/b0;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "No member detail cache "

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v7, 0x4

    .line 58
    const/4 v8, 0x0

    .line 59
    const-string v4, "MemberViewModel"

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "SKU_LIST_JSON"

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    :try_start_1
    const-class v1, Lcom/transsion/memberapi/SkuData;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/transsion/memberapi/SkuData;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 107
    .line 108
    const-string v3, "MemberViewModel"

    .line 109
    .line 110
    const-string v4, "Sku list mmkv cache exists"

    .line 111
    .line 112
    const/4 v6, 0x4

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catch_1
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 120
    .line 121
    const/4 v12, 0x4

    .line 122
    const/4 v13, 0x0

    .line 123
    const-string v9, "MemberViewModel"

    .line 124
    .line 125
    const-string v10, "No Sku list mmkv cache that needs to preload sku local cache"

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->H()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    :goto_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 136
    .line 137
    const/4 v4, 0x4

    .line 138
    const/4 v5, 0x0

    .line 139
    const-string v1, "MemberViewModel"

    .line 140
    .line 141
    const-string v2, "Preload sku local cache"

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->H()V

    .line 148
    .line 149
    .line 150
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/member/MemberViewModel;->r()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final J(Lcom/transsion/memberapi/SkuItem;)V
    .locals 7

    .line 1
    const-string v0, "skuItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/member/MemberViewModel$redeemProduct$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/member/MemberViewModel$redeemProduct$1;-><init>(Lcom/transsion/member/MemberViewModel;Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final K(II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    invoke-static/range {v0 .. v5}, Lfm/a$a;->a(Lfm/a;Ljava/lang/String;IIILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 15
    .line 16
    invoke-virtual {p2}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/transsion/member/MemberViewModel$h;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/transsion/member/MemberViewModel$h;-><init>(Lcom/transsion/member/MemberViewModel;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final L()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;

    .line 6
    .line 7
    const/4 v5, 0x5

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "WhatsApp"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v1, v7

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v1, v7, v2, v1}, Lfm/a$a;->b(Lfm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v10, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;

    .line 28
    .line 29
    const/4 v8, 0x5

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v6, "Telegram"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v4, v10

    .line 36
    invoke-direct/range {v4 .. v9}, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v1, v10, v2, v1}, Lfm/a$a;->b(Lfm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v11, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;

    .line 48
    .line 49
    const/4 v9, 0x5

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const-string v7, "CopyLink"

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v5, v11

    .line 56
    invoke-direct/range {v5 .. v10}, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v1, v11, v2, v1}, Lfm/a$a;->b(Lfm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Lcom/transsion/member/MemberViewModel$i;->a:Lcom/transsion/member/MemberViewModel$i;

    .line 64
    .line 65
    invoke-static {v0, v3, v1, v2}, Lio/reactivex/rxjava3/core/j;->H(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/m;Lyx/g;)Lio/reactivex/rxjava3/core/j;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 70
    .line 71
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/transsion/member/MemberViewModel$j;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$j;-><init>(Lcom/transsion/member/MemberViewModel;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/transsion/member/MemberViewModel$k;

    .line 85
    .line 86
    invoke-direct {v2, p0}, Lcom/transsion/member/MemberViewModel$k;-><init>(Lcom/transsion/member/MemberViewModel;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/j;->B(Lyx/f;Lyx/f;)Lio/reactivex/rxjava3/disposables/c;

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final M(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-static {v0, v1, v1, v2, v1}, Lfm/a$a;->h(Lfm/a;Ljava/lang/String;Lokhttp3/RequestBody;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 12
    .line 13
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/transsion/member/MemberViewModel$l;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lcom/transsion/member/MemberViewModel$l;-><init>(Lcom/transsion/member/MemberViewModel;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final N(ILjava/lang/String;II)V
    .locals 8

    .line 1
    const-string v0, "rewardId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, p2, v2, v1}, Lfm/a$a;->f(Lfm/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 17
    .line 18
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v7, Lcom/transsion/member/MemberViewModel$m;

    .line 27
    .line 28
    move-object v1, v7

    .line 29
    move-object v2, p0

    .line 30
    move v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move v5, p3

    .line 33
    move v6, p4

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/MemberViewModel$m;-><init>(Lcom/transsion/member/MemberViewModel;ILjava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->m:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->m:Lio/reactivex/rxjava3/disposables/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v2, v1, v2}, Lfm/a$a;->c(Lfm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/transsion/member/MemberViewModel$b;->a:Lcom/transsion/member/MemberViewModel$b;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 43
    .line 44
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/transsion/member/MemberViewModel$c;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$c;-><init>(Lcom/transsion/member/MemberViewModel;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->w()Lim/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/transsion/member/MemberViewModel$d;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$d;-><init>(Lcom/transsion/member/MemberViewModel;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lim/b;->p(Lim/d;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->n:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->n:Lio/reactivex/rxjava3/disposables/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->u()Lfm/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v2, v1, v2}, Lfm/a$a;->e(Lfm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/transsion/member/MemberViewModel$e;->a:Lcom/transsion/member/MemberViewModel$e;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lcom/transsion/member/MemberViewModel$f;->a:Lcom/transsion/member/MemberViewModel$f;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 49
    .line 50
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/transsion/member/MemberViewModel$g;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$g;-><init>(Lcom/transsion/member/MemberViewModel;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final t()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->k:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lcom/transsion/memberapi/SkuData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/memberapi/SkuData;

    .line 8
    .line 9
    return-object v0
.end method
