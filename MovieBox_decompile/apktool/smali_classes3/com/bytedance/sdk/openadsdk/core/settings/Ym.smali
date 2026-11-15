.class public Lcom/bytedance/sdk/openadsdk/core/settings/Ym;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

.field private final TKC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;[Lcom/bytedance/sdk/openadsdk/core/settings/HiB;)V
    .locals 1

    .line 1
    const-string v0, "SetF"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->TKC:Ljava/util/Set;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 16
    .line 17
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

    return-object p0
.end method

.method public static Sj(I)Lorg/json/JSONObject;
    .locals 10

    .line 15
    const-string v0, "7.1.1.4"

    const-string v1, "mcc"

    const-string v2, "gaid"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 16
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v4

    .line 17
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v5, "device_city"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TzV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-interface {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :cond_0
    const-string v5, "gdpr"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/uA;->TEQ()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v5, "pa_consent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/uA;->Ym()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-interface {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ley;->sP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    .line 26
    const-string v5, "conn_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Jcg(I)I

    move-result p0

    invoke-virtual {v3, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string p0, "os"

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string p0, "oversea_version_type"

    invoke-virtual {v3, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string p0, "os_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string p0, "aos_api_level"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string p0, "sdk_version"

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string p0, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->sP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string p0, "time_zone"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->dx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string p0, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj()Z

    move-result p0

    .line 36
    const-string v6, "position"

    if-eqz p0, :cond_2

    move p0, v5

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string p0, "app_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Jcg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string p0, "vendor"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string p0, "uuid"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 41
    const-string v6, "app_id"

    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 43
    const-string v8, "ts"

    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    const-string v8, ""

    if-eqz p0, :cond_4

    .line 45
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    :cond_4
    const-string p0, "req_sign"

    invoke-static {v8}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string p0, "tcstring"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TKC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string p0, "tcf_gdpr"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sP(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string p0, "lmt"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->TKC()I

    move-result v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string p0, "locale_language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string p0, "channel"

    const-string v0, "main"

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->HiB()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 53
    const-string v0, "digest"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_5
    const-string p0, "data_time"

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->vS()J

    move-result-wide v6

    invoke-virtual {v3, p0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string p0, "app_set_id_scope"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string p0, "app_set_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string p0, "installed_source"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-interface {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 59
    const-string p0, "did"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Jcg()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 63
    const-string v0, "mediation"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_7
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Sj(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 65
    const-string v0, "device"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string p0, "adx_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->wE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v3
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    const-string p2, "active-control"

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 9
    const-string v2, "ts"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 10
    const-string v4, "pst"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Ly5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move v0, p2

    .line 14
    :catchall_0
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj(I)V

    return-void
.end method

.method public static Sj()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->Sj:Z

    return v0
.end method

.method private sP(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method


# virtual methods
.method public Sj(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->Sj(Lorg/json/JSONObject;)V

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->TKC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->Sj(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->TKC:Z

    return p1
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Landroid/content/Context;J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;->Sj(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    :try_start_0
    const-string v4, "/api/ad/union/sdk/settings/"

    .line 38
    .line 39
    invoke-static {v4, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/Dq/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "User-Agent"

    .line 51
    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v2, v1, v4}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->sP(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->db()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ne v1, v3, :cond_1

    .line 86
    .line 87
    const-string v1, "Pangle_Debug_Mode"

    .line 88
    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uvD()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    const/4 v0, 0x6

    .line 108
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 109
    .line 110
    .line 111
    const-string v0, "setting"

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$1;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym;->sP(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Ym()V

    .line 144
    .line 145
    .line 146
    return-void
.end method
