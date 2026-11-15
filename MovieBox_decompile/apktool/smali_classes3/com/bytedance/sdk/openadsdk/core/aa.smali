.class public Lcom/bytedance/sdk/openadsdk/core/aa;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static EjP:Z

.field private static Sj:Ljava/lang/String;

.field private static TKC:Ljava/lang/String;

.field private static sP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static EjP(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    return-object p0
.end method

.method private static HiB(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP(Landroid/content/Context;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->sP:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/TKC;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "uuid"

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC:Ljava/lang/String;

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    .line 36
    .line 37
    return-void
.end method

.method public static Sj(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->vS(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public static Sj()V
    .locals 2

    .line 12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa$1;

    const-string v1, "update_did"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    :cond_0
    return-void
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj()V

    .line 9
    :cond_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 10
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->sP(Ljava/lang/String;)V

    .line 11
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic TKC()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public static TKC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/aa;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->HiB(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 8
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method public static sP()Ljava/lang/String;
    .locals 6

    .line 8
    const-string v0, "zh"

    const-string v1, ""

    .line 9
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 10
    invoke-static {}, Ln0/b;->a()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2, v4}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_2

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_2
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    return-object v0

    .line 18
    :cond_3
    const-string v0, "zh-Hant"

    return-object v0

    :cond_4
    return-object v3

    :catchall_0
    return-object v1
.end method

.method public static sP(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->sP:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/aa;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->HiB(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 7
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->sP:Ljava/lang/String;

    return-object p0
.end method

.method private static vS(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/TKC;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "abcd"

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p0, "cypher"

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const-string v2, "message"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x3

    .line 44
    if-ne p0, v2, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Sj;->TKC(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :catchall_0
    :cond_1
    return-void
.end method
