.class public final Lcom/snaptube/premium/ads/splash/HotSplashAdManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

.field public static final b:Lo/t14;

.field public static final c:Ljava/lang/String;

.field public static d:Lo/tt3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    invoke-direct {v0}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;-><init>()V

    sput-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager$PATTERN_HOT_SPLASH_ENABLED$2;->INSTANCE:Lcom/snaptube/premium/ads/splash/HotSplashAdManager$PATTERN_HOT_SPLASH_ENABLED$2;

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->b:Lo/t14;

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->g()V

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final e()Z
    .locals 1

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->w3(Z)Z

    move-result v0

    return v0
.end method

.method public static final g()V
    .locals 4

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lo/od;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/premium/ads/SplashAdManager;->a0()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->h(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sn;

    invoke-interface {v1}, Lo/sn;->H0()Lo/gb;

    move-result-object v1

    sget-object v2, Lo/jb;->e:Lo/jb$a;

    invoke-virtual {v2, v0}, Lo/jb$a;->a(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    const-string v2, "ad_request_scene"

    const-string v3, "enter_background"

    invoke-virtual {v0, v2, v3}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/gb;->c(Lo/jb;)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/me8;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->d()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final d()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->b:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public final f()V
    .locals 1

    new-instance v0, Lo/t73;

    invoke-direct {v0}, Lo/t73;-><init>()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->d:Lo/tt3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lo/tt3$a;->a(Lo/tt3;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 8

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ce;->a(Landroid/content/Context;)Lo/ca3;

    move-result-object v0

    invoke-interface {v0}, Lo/ca3;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->d:Lo/tt3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lo/tt3$a;->a(Lo/tt3;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lo/dp1;->c()Lo/qh4;

    move-result-object v0

    invoke-virtual {v0}, Lo/qh4;->s0()Lo/qh4;

    move-result-object v0

    invoke-static {v0}, Lo/x61;->a(Lkotlin/coroutines/CoroutineContext;)Lo/w61;

    move-result-object v2

    new-instance v5, Lcom/snaptube/premium/ads/splash/HotSplashAdManager$tryBackgroundDelayedPreload$1;

    invoke-direct {v5, p1, v1}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager$tryBackgroundDelayedPreload$1;-><init>(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lo/wd0;->d(Lo/w61;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lo/rx2;ILjava/lang/Object;)Lo/tt3;

    move-result-object p1

    sput-object p1, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->d:Lo/tt3;

    :cond_1
    return-void
.end method
