.class public Lcom/mbridge/msdk/foundation/controller/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/controller/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/cache/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/controller/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/foundation/controller/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/foundation/controller/b$b;->a:Lcom/mbridge/msdk/foundation/controller/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/mbridge/msdk/foundation/cache/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/cache/d;

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/foundation/cache/d;

    invoke-direct {v0, p1, p2}, Lcom/mbridge/msdk/foundation/cache/d;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 7
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/mbridge/msdk/foundation/cache/d;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "c_cb"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v1, "t_disc"

    .line 39
    .line 40
    const-wide v3, 0x3fee666666666666L    # 0.95

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "u_disc"

    .line 49
    .line 50
    invoke-virtual {p2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string v1, "max_ecppv_diff"

    .line 54
    .line 55
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    const-string v1, "max_cache_num"

    .line 59
    .line 60
    const/16 v2, 0x14

    .line 61
    .line 62
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string v1, "max_usage_limit"

    .line 66
    .line 67
    const/16 v2, 0xa

    .line 68
    .line 69
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    const-string v1, "time_interval"

    .line 73
    .line 74
    const/16 v2, 0x1c20

    .line 75
    .line 76
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    :goto_0
    move-object p2, v0

    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception p2

    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    move-object v5, v0

    .line 88
    move-object v0, p2

    .line 89
    move-object p2, v5

    .line 90
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v1, "CandidateController"

    .line 95
    .line 96
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/foundation/controller/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/mbridge/msdk/foundation/cache/d;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_2
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/controller/b;->a:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/mbridge/msdk/foundation/cache/d;

    .line 112
    .line 113
    return-object p1
.end method
