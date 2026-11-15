.class public Lcom/bytedance/sdk/openadsdk/common/sP;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Sj:Ljava/lang/String;


# direct methods
.method public static EjP()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Jcg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static HiB()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Dq()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static Jcg()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "sdk_app_sha1"

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-wide/32 v2, 0xf731400

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TKC;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sput-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    sget-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    sput-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    :catch_0
    :cond_2
    return-object v0
.end method

.method public static Sj()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "open_news"

    return-object v0
.end method

.method public static Sj(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static Sj(Ljava/lang/String;)Z
    .locals 5

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    array-length v0, p0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 6
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 7
    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static TKC()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "7.1.1.4"

    .line 2
    .line 3
    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1371"

    .line 2
    .line 3
    return-object v0
.end method

.method public static vS()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->Jcg(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
