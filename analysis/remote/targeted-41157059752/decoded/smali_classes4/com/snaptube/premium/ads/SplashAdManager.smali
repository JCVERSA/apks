.class public Lcom/snaptube/premium/ads/SplashAdManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/g;


# static fields
.field public static final q:J

.field public static final r:J

.field public static volatile s:Lcom/snaptube/premium/ads/SplashAdManager;

.field public static t:Z

.field public static final u:Lo/t14;

.field public static final v:Ljava/util/Set;

.field public static final w:Ljava/util/List;

.field public static final x:Ljava/util/Set;


# instance fields
.field public final a:Landroid/app/Application;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public final g:Landroid/os/Handler;

.field public h:J

.field public i:J

.field public final j:Lo/ba3;

.field public k:Z

.field public l:Z

.field public m:J

.field public final n:Ljava/lang/Runnable;

.field public final o:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final p:Lo/n9;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/snaptube/premium/ads/SplashAdManager;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/snaptube/premium/ads/SplashAdManager;->r:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$a;

    invoke-direct {v0}, Lcom/snaptube/premium/ads/SplashAdManager$a;-><init>()V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->u:Lo/t14;

    new-instance v0, Ljava/util/HashSet;

    const-string v5, "com.mbridge.msdk"

    const-string v6, "com.huawei.openalliance.ad"

    const-string v1, "com.snaptube.ads.activity.SplashAdActivity"

    const-string v2, "com.vungle.ads"

    const-string v3, "com.applovin.adview"

    const-string v4, "com.bytedance.sdk.openadsdk"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->v:Ljava/util/Set;

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$2;

    invoke-direct {v0}, Lcom/snaptube/premium/ads/SplashAdManager$2;-><init>()V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->w:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "phoenix.intent.action.SEARCH_TOOLBAR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->x:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->f:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    const-string v3, "IAdsManager"

    invoke-static {v3}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v3

    check-cast v3, Lo/ba3;

    iput-object v3, p0, Lcom/snaptube/premium/ads/SplashAdManager;->j:Lo/ba3;

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->l:Z

    iput-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    new-instance v0, Lo/in7;

    invoke-direct {v0, p0}, Lo/in7;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    iput-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$d;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/ads/SplashAdManager$d;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    iput-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->o:Landroid/app/Application$ActivityLifecycleCallbacks;

    new-instance v1, Lcom/snaptube/premium/ads/SplashAdManager$e;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/ads/SplashAdManager$e;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    iput-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->p:Lo/n9;

    iput-object p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    new-instance v1, Lcom/snaptube/premium/ads/SplashAdManager$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/snaptube/premium/ads/SplashAdManager$b;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/snaptube/premium/ads/SplashAdManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    return-void
.end method

.method public static bridge synthetic M(Lcom/snaptube/premium/ads/SplashAdManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->h:J

    return-void
.end method

.method public static bridge synthetic R(Lcom/snaptube/premium/ads/SplashAdManager;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->n0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic T(Lcom/snaptube/premium/ads/SplashAdManager;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->o0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic U(Lcom/snaptube/premium/ads/SplashAdManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->u0()V

    return-void
.end method

.method public static bridge synthetic V()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->w:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic W(Z)V
    .locals 0

    sput-boolean p0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/premium/ads/SplashAdManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->q0()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/snaptube/premium/ads/SplashAdManager;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/snaptube/premium/ads/SplashAdManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static d0()Lcom/snaptube/premium/ads/SplashAdManager;
    .locals 3

    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/premium/ads/SplashAdManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/premium/ads/SplashAdManager;

    invoke-static {}, Lcom/snaptube/base/BaseApplication;->e()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snaptube/premium/ads/SplashAdManager;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    return-object v0
.end method

.method public static bridge synthetic e(Lcom/snaptube/premium/ads/SplashAdManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/snaptube/premium/ads/SplashAdManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->c:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/snaptube/premium/ads/SplashAdManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->f:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/snaptube/premium/ads/SplashAdManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    return-wide v0
.end method

.method public static bridge synthetic i(Lcom/snaptube/premium/ads/SplashAdManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    return-wide v0
.end method

.method public static i0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/snaptube/premium/ads/SplashAdManager;->m0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAdActivityNameList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static l0(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->u:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->m0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static m0(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static bridge synthetic n(Lcom/snaptube/premium/ads/SplashAdManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Lcom/snaptube/premium/ads/SplashAdManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic r(Lcom/snaptube/premium/ads/SplashAdManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->k:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/snaptube/premium/ads/SplashAdManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->c:Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/snaptube/premium/ads/SplashAdManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->f:Z

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 0

    return-void
.end method

.method public B0()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "key.splash_ad_used_days"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-wide/16 v5, -0x1

    const-string v7, "key.splash_ad_last_use_time_millis"

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    if-gez v3, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFirstLaunchAppDay()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sub-long v5, v0, v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-lez v10, :cond_1

    add-int/lit8 v6, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-eq v3, v6, :cond_2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public C0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    const-class v1, Lcom/snaptube/ads/activity/SplashAdActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->c:Z

    return-void
.end method

.method public a0()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_last_background_mills"

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "key_full_screen_ad_imp_millis"

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final c0()Lo/ic;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->j:Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v0

    const-string v1, "disable"

    if-nez v0, :cond_0

    new-instance v0, Lo/ic$b;

    const-string v2, "isGlobalDisable"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->e0()Lo/ic;

    move-result-object v0

    sget-object v2, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v2, v0}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lo/ic$b;

    const-string v1, "in exclude activities"

    const-string v2, "isExcludeLaunchAd"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->e()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lo/ic$b;

    const-string v2, "isConfigDisable"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/od;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lo/ic$b;

    const-string v2, "isAdPosDisable"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->a0()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->b(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v2

    if-nez v2, :cond_5

    return-object v1

    :cond_5
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sn;

    invoke-interface {v1}, Lo/sn;->L()Lo/ne3;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/x93;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    new-instance v0, Lo/ic$b;

    const-string v1, "no cache"

    const-string v2, "moreThanOneHour"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    sget-object v0, Lo/ic$c;->d:Lo/ic$c;

    return-object v0
.end method

.method public final e0()Lo/ic;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/premium/ads/SplashAdManager;->l0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/snaptube/premium/ads/SplashAdManager;->q:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/ic$b;

    const-string v2, "in min notification click interval"

    invoke-direct {v1, v2, v0}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->F0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/snaptube/premium/ads/SplashAdManager;->r:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->F0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/ic$b;

    const-string v2, "in min action send interval"

    invoke-direct {v1, v2, v0}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->x:Ljava/util/Set;

    iget-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lo/ic$b;

    const-string v1, "in exclude actions"

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {}, Lnet/pubnative/mediation/utils/NewUserProtectionUtils;->isInNewUserProtection()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lo/ic$b;

    const-string v1, "new user protection"

    const-string v2, "InNewUserProtection"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v0, Lo/ic$c;->d:Lo/ic$c;

    return-object v0

    :cond_5
    :goto_0
    new-instance v0, Lo/ic$b;

    const-string v1, "in exclude activities"

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f0()Lo/ic;
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->e0()Lo/ic;

    move-result-object v0

    sget-object v1, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v1, v0}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->b(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object v0

    return-object v0
.end method

.method public final g0()Ljava/util/Map;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->h:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/snaptube/premium/ads/SplashAdManager;->h:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "previous_interstitial_impression_interval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public h0()V
    .locals 2

    iget-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->l:Z

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sn;

    invoke-interface {v0}, Lo/sn;->L()Lo/ne3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->p:Lo/n9;

    invoke-interface {v0, v1}, Lo/x93;->g(Lo/n9;)V

    invoke-static {}, Landroidx/lifecycle/j;->l()Lo/x24;

    move-result-object v0

    invoke-interface {v0}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    :cond_0
    return-void
.end method

.method public j0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    return v0
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->k:Z

    return v0
.end method

.method public final n0()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o0()Z
    .locals 7

    iget-wide v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v3}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/od;->g(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public onStateChanged(Lo/x24;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Lcom/snaptube/premium/ads/SplashAdManager$h;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->t0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->r0()V

    :goto_0
    return-void
.end method

.method public final p0()Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/log/AppStartRecorder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchFrom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashAdManager"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Push"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final synthetic q0()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->j:Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isPreloadInterstitialOnAppBackgroundEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/ads/activity/SplashAdActivity;->c1()V

    :cond_0
    return-void
.end method

.method public final r0()V
    .locals 11

    const-string v0, "SplashAdManager"

    const-string v1, "onAppBackground ON_STOP"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->f()V

    invoke-static {}, Lcom/snaptube/ads/selfbuild/tracking/SnaptubeTrackingManager;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    iget v3, v1, Lo/iq7$b;->i:I

    int-to-long v3, v3

    iget v1, v1, Lo/iq7$b;->h:I

    int-to-long v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lo/m01;->n:J

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final s0()V
    .locals 9

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->B0()V

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "ad_splash_app_foreground"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->J(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->z0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/log/LaunchLogger;->G(Z)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/snaptube/premium/guide/launch/LaunchGuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->y5()V

    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v2, Lo/ic$b;

    const-string v3, "shown welcome protection"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u3()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v2, Lo/ic$b;

    const-string v4, "new user protection"

    const-string v5, "isFirstLaunch"

    invoke-direct {v2, v4, v5}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    const-string v1, "SplashAdManager:isFirstLaunch"

    invoke-virtual {v0, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->y()Lcom/snaptube/premium/ads/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/a;->n0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->w0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->f0()Lo/ic;

    move-result-object v1

    sget-object v4, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v4, v1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v4

    const-string v5, "SplashAdManager:"

    const/16 v6, 0x448

    if-eqz v4, :cond_4

    :try_start_0
    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->y0()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "activity_onCreate"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->q(Ljava/lang/String;)[Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v0, v2}, Lcom/snaptube/premium/log/LaunchLogger;->F(Z)V

    const-string v1, "splash_ad_duration"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    const-string v1, "ad_splash_ready_to_show_splash_activity"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->J(Ljava/lang/String;)V

    const-string v0, "cold_splash_ads"

    invoke-static {v0}, Lcom/snaptube/premium/log/counter/EventCounterManager;->a(Ljava/lang/String;)Lo/wb3;

    move-result-object v0

    invoke-interface {v0}, Lo/wb3;->b()V

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$c;

    invoke-direct {v0, p0, v7, v8}, Lcom/snaptube/premium/ads/SplashAdManager$c;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;J)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v2, Lo/ic$b;

    const-string v4, "disable"

    const-string v7, "push disable"

    invoke-direct {v2, v4, v7}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    const-string v1, "SplashAdManager:push disable"

    invoke-virtual {v0, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v2, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v4, Lo/ic$b;

    const-string v7, "exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    const-string v1, "StartActivityException"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    sget-object v1, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    sput-boolean v3, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v2, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    invoke-virtual {v0, v2, v1}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/ic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    sput-boolean v3, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    :goto_2
    return-void
.end method

.method public final t0()V
    .locals 2

    const-string v0, "SplashAdManager"

    const-string v1, "onAppForeground ON_START"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    sget-object v1, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->h()V

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->f:Z

    invoke-static {}, Lo/r23;->e()V

    sget-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->s0()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/premium/ClipMonitor/ClipMonitorService;->j(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->u0()V

    :goto_0
    return-void
.end method

.method public final u0()V
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->c0()Lo/ic;

    move-result-object v0

    sget-object v1, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v1, v0}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "hot_splash_ads"

    invoke-static {v0}, Lcom/snaptube/premium/log/counter/EventCounterManager;->a(Ljava/lang/String;)Lo/wb3;

    move-result-object v0

    invoke-interface {v0}, Lo/wb3;->b()V

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->g0()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "hot_launch"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/snaptube/ads/activity/SplashAdActivity;->h1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-object v2, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a(Ljava/lang/String;Lo/ic;)V

    sget-object v1, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SplashAdManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/ic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v0()V
    .locals 4

    sget-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u3()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->h(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0}, Lo/sn;->H0()Lo/gb;

    move-result-object v0

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v1

    const-string v2, "ad_request_scene"

    const-string v3, "application_launch"

    invoke-virtual {v1, v2, v3}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w0()V
    .locals 3

    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snaptube/premium/ads/SplashAdManager$f;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/ads/SplashAdManager$f;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->n(Ljava/lang/String;Lo/lw2;)V

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snaptube/premium/ads/SplashAdManager$g;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/ads/SplashAdManager$g;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->n(Ljava/lang/String;Lo/lw2;)V

    return-void
.end method

.method public final x0()Z
    .locals 2

    sget-object v0, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->e0()Lo/ic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v0

    return v0
.end method

.method public final y0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ce;->a(Landroid/content/Context;)Lo/ca3;

    move-result-object v0

    invoke-interface {v0}, Lo/ca3;->j()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splashAdEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashAdManager"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public z0()Z
    .locals 2

    sget-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->I2()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    const-class v1, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/log/AppStartRecorder;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
