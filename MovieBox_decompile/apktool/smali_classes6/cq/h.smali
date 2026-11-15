.class public final Lcq/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcq/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcq/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcq/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcq/h;->a:Lcq/h;

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

.method private final b()Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "hl"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcq/h;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "client"

    .line 12
    .line 13
    const-string v2, "android"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method private final d(Ljava/lang/String;)Lcom/transsion/search/net/GoogleSuggestConfig;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    new-instance v0, Lcom/google/gson/Gson;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    new-instance v1, Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getHeaders()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_2
    invoke-direct {v1, p1, v0}, Lcom/transsion/search/net/GoogleSuggestConfig;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_3

    .line 60
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    new-instance p1, Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 78
    .line 79
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcq/h;->a:Lcq/h;

    .line 84
    .line 85
    invoke-direct {v1}, Lcq/h;->b()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {p1, v0, v1}, Lcom/transsion/search/net/GoogleSuggestConfig;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    :goto_4
    check-cast p1, Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 93
    .line 94
    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljg/b;->a:Ljg/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljg/b$a;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v0, "en"

    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public final c()Lcom/transsion/search/net/GoogleSuggestConfig;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    sget-object v1, Lij/g;->a:Lij/g;

    .line 5
    .line 6
    invoke-virtual {v1}, Lij/g;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "google_suggest_api_config_for_showbox"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const-string v1, "google_suggest_api_config"

    .line 18
    .line 19
    :goto_0
    sget-object v2, Lcm/f;->c:Lcm/f$a;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcm/f$a;->a()Lcm/f;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v1, v3}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, v0

    .line 38
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_3

    .line 43
    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_2
    move-object v0, v1

    .line 61
    :goto_4
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_3
    invoke-direct {p0, v0}, Lcq/h;->d(Ljava/lang/String;)Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_6

    .line 77
    :cond_4
    :goto_5
    new-instance v0, Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 78
    .line 79
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {p0}, Lcq/h;->b()Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v0, v1, v2}, Lcom/transsion/search/net/GoogleSuggestConfig;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    :goto_6
    return-object v0
.end method
