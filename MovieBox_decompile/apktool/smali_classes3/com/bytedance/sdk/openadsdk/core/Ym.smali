.class public Lcom/bytedance/sdk/openadsdk/core/Ym;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Ym$Sj;
    }
.end annotation


# static fields
.field private static final Sj:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sP:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method private static EjP()V
    .locals 5

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj()Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym$2;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym$2;-><init>()V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x2710

    .line 19
    .line 20
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method static synthetic Sj()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym;->EjP()V

    return-void
.end method

.method public static Sj(Ljava/lang/String;)V
    .locals 3

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TzV;->Dq(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym$Sj;->Sj()V

    .line 8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym;->sP(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lorg/json/JSONObject;)Z
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym;->sP(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private static TKC()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic sP()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym;->TKC()V

    return-void
.end method

.method public static sP(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;

    const-string v1, "ipv6"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method private static sP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p0, "cypher"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p0, v3, :cond_0

    .line 5
    const-string p0, "cypher type error"

    invoke-static {v1, p1, v4, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    const-string p0, "message"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->decryptType4(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 8
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p0, "ip_type"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x316de5

    if-eq v5, v6, :cond_3

    const v6, 0x316de7

    if-eq v5, v6, :cond_2

    const v6, 0x74cff1f7

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "invalid"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v0

    goto :goto_1

    :cond_2
    const-string v5, "ipv6"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const-string v5, "ipv4"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    move p0, v4

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v1

    :goto_1
    const-string v5, "no ip"

    const-string v6, "key_ipv4"

    const-string v7, "key_ipv6"

    const-string v8, "ttopenadsdk"

    const-string v9, "ip"

    if-eqz p0, :cond_8

    if-eq p0, v4, :cond_6

    if-eq p0, v0, :cond_5

    .line 12
    :try_start_1
    const-string p0, "no ip type "

    const/4 v2, 0x3

    invoke-static {v1, p1, v2, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void

    .line 13
    :cond_6
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 14
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v8, v6, p0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {v8, v7}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;)V

    return-void

    .line 18
    :cond_7
    invoke-static {v1, p1, v3, v5}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 19
    :cond_8
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 20
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {v8, v7, p0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v8, v6}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-interface {v2, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->sP()Lcom/bytedance/sdk/openadsdk/core/uA/sP;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->Sj(Ljava/util/Map;)V

    .line 26
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;)V

    return-void

    .line 27
    :cond_9
    invoke-static {v1, p1, v3, v5}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 28
    :cond_a
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 29
    const-string v2, "decrypt failed "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 30
    :catch_0
    const-string p0, "decrypt failed, wrong data "

    invoke-static {v1, p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static sP(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
