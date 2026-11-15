.class public Lcom/bytedance/sdk/openadsdk/zR/TKC;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/zR/Sj;

.field private HiB:I

.field private final Sj:Ljava/lang/String;

.field private TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

.field private sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

.field private vS:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/zR/EjP;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StrategyCenter"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->HiB:I

    .line 13
    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/zR/TKC$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/zR/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/zR/TKC;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->vS:Ljava/lang/Runnable;

    .line 20
    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/zR/HiB;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/zR/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/zR/EjP;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->TKC()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "pag"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    const-string v0, "pag_"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 55
    .line 56
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->sP()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/zR/sP;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 64
    .line 65
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/zR/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/zR/TKC;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->HiB:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/zR/TKC;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->HiB:I

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/zR/Sj;

    return-object p0
.end method

.method private sP()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->HiB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->vS()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Sj()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/zR/TKC;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;I)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    if-nez v0, :cond_0

    return p2

    .line 14
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    if-nez v0, :cond_0

    return-object p2

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Sj()V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    const-string v1, "req_interval"

    const v2, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Ljava/lang/String;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    const-string v3, "local_last_update_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/zR/sP;->sP(Ljava/lang/String;J)J

    move-result-wide v6

    const v1, 0x927c0

    if-lt v0, v1, :cond_1

    const v1, 0x5265c00

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 8
    const-string v3, "before  realInterval="

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    sub-long v4, v2, v0

    .line 9
    :cond_2
    const-string v0, "after  realInterval="

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->EjP()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->vS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->HiB:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/zR/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->EjP()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->vS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/zR/Sj;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/zR/Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;Z)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP:Lcom/bytedance/sdk/openadsdk/zR/sP;

    if-nez v0, :cond_0

    return p2

    .line 18
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
