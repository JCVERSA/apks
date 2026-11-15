.class public final Lcom/tn/lib/net/dns/or/CacheIpPool;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/lib/net/dns/or/CacheIpPool;

.field private static b:Ljava/util/ArrayList;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static final h:Lkotlin/Lazy;

.field private static final i:Lkotlin/Lazy;

.field private static final j:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/lib/net/dns/or/CacheIpPool;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "api6.aoneroom.com"

    .line 20
    .line 21
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "test-mse-api.aoneroom.com"

    .line 24
    .line 25
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->f:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "https"

    .line 28
    .line 29
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Lcom/tn/lib/net/dns/or/a;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/a;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->h:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lcom/tn/lib/net/dns/or/b;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/b;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->i:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance v0, Lcom/tn/lib/net/dns/or/c;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/c;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->j:Lkotlin/Lazy;

    .line 63
    .line 64
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

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/net/dns/or/CacheIpPool;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/net/dns/or/CacheIpPool;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/net/dns/or/CacheIpPool;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lag/a;->a:Lag/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lag/a$a;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "https://"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->f:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    return-object v0
.end method

.method private static final e()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "[\n{\n\"host\": \""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, "\",\n\"ip\": \"\",\n\"scheme\": \"https\"\n}\n]"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private static final f()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->f:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "[{\n    \"host\": \""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, "\",\n    \"ip\": \"8.219.92.106\",\n    \"scheme\": \"https\"\n}]"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->i()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public final h()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/tn/lib/net/dns/or/CacheIpPool$getCacheUrlList$type$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool$getCacheUrlList$type$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lag/c;->a:Lag/c;

    .line 11
    .line 12
    const-string v2, "key_ip_list"

    .line 13
    .line 14
    sget-object v3, Lag/a;->a:Lag/a$a;

    .line 15
    .line 16
    invoke-virtual {v3}, Lag/a$a;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->k()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->j()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_0
    invoke-virtual {v1, v2, v3}, Lag/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/tn/lib/net/dns/or/AddressItem;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/tn/lib/net/dns/or/AddressItem;->getHost()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-lez v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Lcom/tn/lib/net/dns/or/AddressItem;->setIpEnable(Z)V

    .line 78
    .line 79
    .line 80
    sget-object v3, Lcom/tn/lib/net/dns/or/CacheIpPool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/tn/lib/net/dns/or/AddressItem;->getHost()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    xor-int/2addr v0, v1

    .line 99
    if-ne v0, v1, :cond_5

    .line 100
    .line 101
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/tn/lib/net/dns/or/AddressItem;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/AddressItem;->getScheme()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object v0, v1

    .line 121
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    .line 126
    .line 127
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/tn/lib/net/dns/or/AddressItem;

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/AddressItem;->getHost()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 148
    .line 149
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    .line 150
    .line 151
    sget-object v1, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, "://"

    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    .line 175
    .line 176
    :goto_3
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_5
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "mock_host_key"

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lag/c;->a:Lag/c;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, "key_ip_list"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lag/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->h()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
