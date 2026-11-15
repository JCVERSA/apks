.class public abstract Lcom/android/volley/toolbox/j;
.super Lcom/android/volley/toolbox/k;
.source "source.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/i$b;Lcom/android/volley/i$a;)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    :goto_0
    move-object v3, p3

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    goto :goto_0

    .line 11
    :goto_1
    move-object v0, p0

    .line 12
    move v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v4, p4

    .line 15
    move-object v5, p5

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/i$b;Lcom/android/volley/i$a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/android/volley/g;)Lcom/android/volley/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/g;",
            ")",
            "Lcom/android/volley/i;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/volley/g;->b:[B

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/volley/g;->c:Ljava/util/Map;

    .line 6
    .line 7
    const-string v3, "utf-8"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lcom/android/volley/toolbox/d;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/volley/toolbox/d;->e(Lcom/android/volley/g;)Lcom/android/volley/c$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Lcom/android/volley/i;->c(Ljava/lang/Object;Lcom/android/volley/c$a;)Lcom/android/volley/i;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    new-instance v0, Lcom/android/volley/ParseError;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/volley/i;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/i;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :goto_1
    new-instance v0, Lcom/android/volley/ParseError;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/android/volley/i;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/i;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method
