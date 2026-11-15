.class public Lcom/bytedance/sdk/openadsdk/core/Zq;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Zq$Sj;
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

.field private sP:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 10
    .line 11
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public EjP()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public HiB()Lcom/bytedance/sdk/openadsdk/utils/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Z)Z

    move-result p1

    return p1
.end method

.method public TKC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->sP:Z

    .line 2
    .line 3
    return v0
.end method

.method public sP()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/app/Application;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/app/Application;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->sP:Z

    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/app/Application;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Zq;->sP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :goto_0
    const-string v1, "registerActivityLifecycleError"

    .line 45
    .line 46
    const-string v2, "registerActivityLifecycle"

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
