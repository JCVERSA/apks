.class public Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;
.super Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "auto_click"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "can_query_install"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->zwV()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 9
    :cond_1
    const-string v1, "START_ONLY_FOR_ANDROID"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_2

    const/high16 v1, 0x10000000

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    :cond_2
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-nez p4, :cond_3

    .line 13
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 14
    :cond_3
    invoke-static {p0, p4}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)V

    .line 15
    const-string p1, "click_open"

    invoke-static {p0, p3, p1, p4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_4
    return v0
.end method

.method public static Sj(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 21
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 25
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 26
    :cond_1
    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)V

    .line 27
    const-string v1, "url"

    invoke-interface {p4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p0, "open_url_app"

    invoke-static {p3, p2, p0, p4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 31
    const-string p0, "dp_start_act_success"

    invoke-static {p0, p3, p2, p4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x2

    .line 32
    :try_start_2
    invoke-static {p3, p2, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 33
    :goto_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    :try_start_3
    const-string p4, "exception"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 35
    const-string p0, "intent"

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_3
    const-string p0, "can_query_install"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 p0, -0x4

    .line 37
    invoke-static {p3, p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    :goto_2
    return v0
.end method


# virtual methods
.method public Sj()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->vS:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dpl_probability_jump"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public sP()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->vS:I

    .line 35
    .line 36
    const/16 v4, 0xb

    .line 37
    .line 38
    if-lt v3, v4, :cond_0

    .line 39
    .line 40
    move v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v1

    .line 43
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "dpl_probability_jump"

    .line 48
    .line 49
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 69
    .line 70
    invoke-static {v3, v4, v5, v6, v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    return v2

    .line 77
    :cond_2
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->EjP:Z

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    :cond_3
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->EjP:Z

    .line 90
    .line 91
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 92
    .line 93
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC:Ljava/lang/String;

    .line 99
    .line 100
    const-string v4, "open_fallback_url"

    .line 101
    .line 102
    invoke-static {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->TKC:Ljava/lang/String;

    .line 109
    .line 110
    const/4 v4, -0x1

    .line 111
    invoke-static {v0, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    return v1
.end method
