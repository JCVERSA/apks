.class public Lcom/bytedance/sdk/openadsdk/core/settings/Sj;
.super Lcom/bytedance/sdk/openadsdk/core/settings/aa;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Sj$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Sj$1;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tt_set_apm.prop"

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/aa$Sj;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public Sj(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "perf_con_apm"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj()Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "apm_url"

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string v2, "perf_con"

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_1
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->EjP()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
