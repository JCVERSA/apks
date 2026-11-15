.class public Lbd/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Lcom/google/firebase/remoteconfig/internal/e;

.field b:Lcom/google/firebase/remoteconfig/internal/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbd/a;->a:Lcom/google/firebase/remoteconfig/internal/e;

    .line 5
    .line 6
    iput-object p2, p0, Lbd/a;->b:Lcom/google/firebase/remoteconfig/internal/e;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lbd/a;
    .locals 1

    .line 1
    new-instance v0, Lbd/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lbd/a;-><init>(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbd/a;->a:Lcom/google/firebase/remoteconfig/internal/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lbd/a;->d(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lbd/a;->b:Lcom/google/firebase/remoteconfig/internal/e;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lbd/a;->d(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    const-string p1, ""

    .line 20
    .line 21
    return-object p1
.end method

.method private static d(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/e;->f()Lcom/google/firebase/remoteconfig/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    return-object v0
.end method


# virtual methods
.method b(Lcom/google/firebase/remoteconfig/internal/f;)Ldd/e;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->j()Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->k()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    new-instance p1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v5, v6, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-string v7, "rolloutId"

    .line 28
    .line 29
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const-string v8, "affectedParameterKeys"

    .line 34
    .line 35
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-le v9, v0, :cond_0

    .line 44
    .line 45
    const-string v9, "FirebaseRemoteConfig"

    .line 46
    .line 47
    const-string v10, "Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s"

    .line 48
    .line 49
    const/4 v11, 0x2

    .line 50
    new-array v11, v11, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v7, v11, v4

    .line 53
    .line 54
    aput-object v8, v11, v0

    .line 55
    .line 56
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_1
    const-string v9, ""

    .line 67
    .line 68
    invoke-virtual {v8, v4, v9}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-direct {p0, v8}, Lbd/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-static {}, Ldd/d;->a()Ldd/d$a;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v10, v7}, Ldd/d$a;->d(Ljava/lang/String;)Ldd/d$a;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    const-string v10, "variantId"

    .line 85
    .line 86
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v7, v6}, Ldd/d$a;->f(Ljava/lang/String;)Ldd/d$a;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6, v8}, Ldd/d$a;->b(Ljava/lang/String;)Ldd/d$a;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v6, v9}, Ldd/d$a;->c(Ljava/lang/String;)Ldd/d$a;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6, v2, v3}, Ldd/d$a;->e(J)Ldd/d$a;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v6}, Ldd/d$a;->a()Ldd/d;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    add-int/2addr v5, v0

    .line 114
    goto :goto_0

    .line 115
    :goto_2
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 116
    .line 117
    const-string v1, "Exception parsing rollouts metadata to create RolloutsState."

    .line 118
    .line 119
    invoke-direct {v0, v1, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_1
    invoke-static {p1}, Ldd/e;->a(Ljava/util/Set;)Ldd/e;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1
.end method
