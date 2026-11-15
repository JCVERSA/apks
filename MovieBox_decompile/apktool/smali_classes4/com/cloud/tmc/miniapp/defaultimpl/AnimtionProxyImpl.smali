.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/AnimtionProxy;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AnimtionProxyImpl"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO0O0:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic access$getMemoryInfo(Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final OooO00o(Landroid/content/Context;)I
    .locals 3

    .line 2
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    .line 3
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float p1, v0

    const/high16 v0, 0x4e800000

    div-float/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current device memory size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableAnimation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->isLowClient()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public enableLoadingAnimation()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 3
    .line 4
    const-string v2, "miniLogoAnimateConfig"

    .line 5
    .line 6
    const-string v3, "{\"miniAnimateEnable\":true,\"loadingAnimMemorySize\":2}"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-class v3, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    .line 17
    .line 18
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->getMiniAnimateEnable()Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->getLoadingAnimMemorySize()I

    .line 41
    .line 42
    .line 43
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-lt v2, v1, :cond_0

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 51
    :goto_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLowClient()Z
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    const-string v1, "enableAnimMemorySize"

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "Current device memory size format: "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " GB"

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-gt v1, v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0
.end method
