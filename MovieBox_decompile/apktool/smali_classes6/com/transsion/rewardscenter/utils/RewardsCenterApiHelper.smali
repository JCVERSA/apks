.class public final Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

.field private static final b:Lkotlin/Lazy;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/rewardscenter/utils/g;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/g;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    sput v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->c:I

    .line 22
    .line 23
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

.method public static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->m(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->v(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->r(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->x(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->t(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()Lxo/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->h()Lxo/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->k(Lorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h()Lxo/a;
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
    const-class v1, Lxo/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lxo/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "toString(...)"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 21
    .line 22
    const-string v2, "application/json"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private static final k(Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "$this$buildBody"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ltg/b;->i()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "gaid"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final m(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$buildBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "drawResultId"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->n(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final p()Lxo/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxo/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final r(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$buildBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activityId"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "num"

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final t(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$buildBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "skuId"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "clientOrderId"

    .line 20
    .line 21
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final v(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$buildBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, ""

    .line 9
    .line 10
    :cond_0
    const-string v0, "taskId"

    .line 11
    .line 12
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    sget-object p0, Ltg/b;->a:Ltg/b;

    .line 16
    .line 17
    invoke-virtual {p0}, Ltg/b;->i()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "gaid"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final x(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "$this$buildBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getDrawResultId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    const-string v2, "drawResultId"

    .line 16
    .line 17
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getReceiverName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_1
    const-string v2, "receiverName"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    new-instance v0, Lorg/json/JSONArray;

    .line 33
    .line 34
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getPhone()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    check-cast v2, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/transsion/rewardscenterapi/PhoneInfo;

    .line 60
    .line 61
    new-instance v4, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/PhoneInfo;->getCountryNo()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    move-object v5, v1

    .line 73
    :cond_2
    const-string v6, "countryNo"

    .line 74
    .line 75
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/PhoneInfo;->getNumber()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-nez v5, :cond_3

    .line 83
    .line 84
    move-object v5, v1

    .line 85
    :cond_3
    const-string v6, "number"

    .line 86
    .line 87
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/PhoneInfo;->getCountryCode()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    move-object v3, v1

    .line 97
    :cond_4
    const-string v5, "countryCode"

    .line 98
    .line 99
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    const-string v2, "phone"

    .line 109
    .line 110
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getAddress()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    move-object v1, v0

    .line 121
    :goto_1
    const-string v0, "address"

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getEmail()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    const-string v0, "email"

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getEmail()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getPostCode()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    const-string v0, "postCode"

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getPostCode()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    return-object p0
.end method


# virtual methods
.method public final j(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p2, p1

    .line 43
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p3

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance p3, Lcom/transsion/rewardscenter/utils/i;

    .line 67
    .line 68
    invoke-direct {p3}, Lcom/transsion/rewardscenter/utils/i;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$1:Ljava/lang/Object;

    .line 84
    .line 85
    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v5, 0x1

    .line 89
    const/4 v6, 0x0

    .line 90
    invoke-static/range {v1 .. v6}, Lxo/a$a;->a(Lxo/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    if-ne p3, v0, :cond_3

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    :goto_2
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    .line 98
    .line 99
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_4

    .line 104
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 105
    .line 106
    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    :goto_4
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    move-object v0, p3

    .line 121
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_4
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_5
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-eqz p2, :cond_6

    .line 155
    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    const/4 p3, 0x0

    .line 159
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-interface {p1, p3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p1
.end method

.method public final l(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p3, p1

    .line 43
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    move-object p2, p1

    .line 48
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p4, Lcom/transsion/rewardscenter/utils/k;

    .line 68
    .line 69
    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/k;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v5, 0x1

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v1 .. v6}, Lxo/a$a;->b(Lxo/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    if-ne p4, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 99
    .line 100
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-eqz p4, :cond_5

    .line 120
    .line 121
    move-object p4, p1

    .line 122
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 123
    .line 124
    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    const/4 p3, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method

.method public final n(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

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
    iget-object p1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    move-object p2, p1

    .line 42
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object p1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p3

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    iput-object p1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object p2, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    iput v4, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

    .line 76
    .line 77
    invoke-static {p3, v3, v0, v4, v3}, Lxo/a$a;->c(Lxo/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-ne p3, v1, :cond_3

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    :goto_1
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    .line 85
    .line 86
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    goto :goto_3

    .line 91
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    .line 93
    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    :goto_3
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    move-object v0, p3

    .line 108
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_4
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_4
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    if-eqz p1, :cond_6

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-interface {p1, v3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1
.end method

.method public final q(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p3, p1

    .line 43
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    move-object p2, p1

    .line 48
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p4, Lcom/transsion/rewardscenter/utils/m;

    .line 68
    .line 69
    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/m;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v5, 0x1

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v1 .. v6}, Lxo/a$a;->g(Lxo/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    if-ne p4, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 99
    .line 100
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-eqz p4, :cond_5

    .line 120
    .line 121
    move-object p4, p1

    .line 122
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 123
    .line 124
    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    const/4 p3, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method

.method public final s(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p3, p1

    .line 43
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    move-object p2, p1

    .line 48
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p4, Lcom/transsion/rewardscenter/utils/h;

    .line 68
    .line 69
    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/h;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v5, 0x1

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v1 .. v6}, Lxo/a$a;->h(Lxo/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    if-ne p4, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 99
    .line 100
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-eqz p4, :cond_5

    .line 120
    .line 121
    move-object p4, p1

    .line 122
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 123
    .line 124
    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    const/4 p3, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method

.method public final u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p3, p1

    .line 43
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    move-object p2, p1

    .line 48
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p4, Lcom/transsion/rewardscenter/utils/j;

    .line 68
    .line 69
    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/j;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v5, 0x1

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v1 .. v6}, Lxo/a$a;->f(Lxo/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    if-ne p4, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 99
    .line 100
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-eqz p4, :cond_5

    .line 120
    .line 121
    move-object p4, p1

    .line 122
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 123
    .line 124
    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    const/4 p3, 0x0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method

.method public final w(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

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
    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p3, p1

    .line 43
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    move-object p2, p1

    .line 48
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p4, Lcom/transsion/rewardscenter/utils/l;

    .line 68
    .line 69
    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/l;-><init>(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lxo/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v5, 0x1

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v1 .. v6}, Lxo/a$a;->i(Lxo/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    if-ne p4, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 99
    .line 100
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-eqz p4, :cond_5

    .line 120
    .line 121
    move-object p4, p1

    .line 122
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 123
    .line 124
    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    const/4 p3, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method
