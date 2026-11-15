.class public final Lcom/transsion/shorttv/order/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/shorttv/order/g;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/order/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/order/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv/order/g;->a:Lcom/transsion/shorttv/order/g;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/shorttv/order/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/shorttv/order/f;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/shorttv/order/g;->b:Lkotlin/Lazy;

    .line 18
    .line 19
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

.method public static synthetic a()Lcom/transsion/shorttv/order/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/order/g;->e()Lcom/transsion/shorttv/order/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final d()Lcom/transsion/shorttv/order/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/order/g;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/order/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final e()Lcom/transsion/shorttv/order/a;
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
    const-class v1, Lcom/transsion/shorttv/order/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/shorttv/order/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getProjectName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v1

    .line 15
    :goto_0
    const-string v3, "project_name"

    .line 16
    .line 17
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getSkuId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v2, v1

    .line 28
    :goto_1
    const-string v3, "sku_id"

    .line 29
    .line 30
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getUserId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v2, v1

    .line 41
    :goto_2
    const-string v3, "user_id"

    .line 42
    .line 43
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getCpFrontPage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move-object v2, v1

    .line 54
    :goto_3
    const-string v3, "cp_front_page"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "toString(...)"

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getExtStrJson()Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    new-instance v4, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v4, "ext"

    .line 82
    .line 83
    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 96
    .line 97
    const-string v4, "application/json"

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v3, v0, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-direct {p0}, Lcom/transsion/shorttv/order/g;->d()Lcom/transsion/shorttv/order/a;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    sget-object v0, Lcom/transsion/shorttv/order/e;->a:Lcom/transsion/shorttv/order/e;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :cond_5
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/e;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const/4 v9, 0x1

    .line 128
    const/4 v10, 0x0

    .line 129
    const/4 v5, 0x0

    .line 130
    move-object v8, p2

    .line 131
    invoke-static/range {v4 .. v10}, Lcom/transsion/shorttv/order/a$a;->a(Lcom/transsion/shorttv/order/a;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/order/g;->d()Lcom/transsion/shorttv/order/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    move-object v3, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v3, p2

    .line 17
    :goto_1
    sget-object p1, Lcom/transsion/shorttv/order/e;->a:Lcom/transsion/shorttv/order/e;

    .line 18
    .line 19
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/e;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    move-object v5, p4

    .line 31
    invoke-static/range {v0 .. v7}, Lcom/transsion/shorttv/order/a$a;->b(Lcom/transsion/shorttv/order/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
