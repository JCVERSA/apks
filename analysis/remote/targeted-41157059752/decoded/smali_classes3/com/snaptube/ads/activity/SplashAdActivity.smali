.class public Lcom/snaptube/ads/activity/SplashAdActivity;
.super Lcom/snaptube/base/BaseActivity;

# interfaces
.implements Lo/rl3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/ads/activity/SplashAdActivity$c;
    }
.end annotation


# static fields
.field public static final n:Ljava/util/List;

.field public static o:Ljava/lang/String;

.field public static p:Lo/gn7;


# instance fields
.field public b:Lo/m01;

.field c:Lo/hh3;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lo/b7;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lo/gb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lo/wu7;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Lo/iq7$b;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Landroid/view/View;

.field public m:Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/ads_log_v2/AdForm;

    sget-object v1, Lcom/snaptube/ads_log_v2/AdForm;->INTERSTITIAL:Lcom/snaptube/ads_log_v2/AdForm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads_log_v2/AdForm;->REWARDED:Lcom/snaptube/ads_log_v2/AdForm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->n:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->k:Z

    return-void
.end method

.method public static synthetic A0(Lcom/snaptube/ads/activity/SplashAdActivity;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->Y0(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/snaptube/ads/activity/SplashAdActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/snaptube/ads/activity/SplashAdActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic D0(Lcom/snaptube/ads/activity/SplashAdActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    return p0
.end method

.method public static bridge synthetic E0(Lcom/snaptube/ads/activity/SplashAdActivity;)Lo/iq7$b;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->i:Lo/iq7$b;

    return-object p0
.end method

.method public static bridge synthetic F0(Lcom/snaptube/ads/activity/SplashAdActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic H0(Lcom/snaptube/ads/activity/SplashAdActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    return-void
.end method

.method public static N0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/iq7$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method private R0()V
    .locals 10

    invoke-static {}, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->c()Lcom/snaptube/premium/viewmodel/UiDarkConfig;

    move-result-object v0

    sget v1, Lcom/snaptube/ui/library/R$color;->bg_transparent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v3

    invoke-static {v2, v3}, Lo/sr7;->q(Landroid/view/Window;I)V

    invoke-virtual {v0}, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->g()Lo/bx2;

    move-result-object v2

    invoke-interface {v2}, Lo/bx2;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0}, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->f()Lo/bx2;

    move-result-object v0

    invoke-interface {v0}, Lo/bx2;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {p0}, Lcom/dywx/dyframework/base/DyAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lo/sr7;->m(Landroidx/appcompat/app/AppCompatActivity;ZZIIZZ)V

    return-void
.end method

.method public static synthetic Z0(Lo/h9;)V
    .locals 5

    iget-object p0, p0, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    check-cast p0, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    invoke-virtual {p0}, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->getWaitTimeStart()J

    move-result-wide v0

    sget-object v2, Lcom/snaptube/ads_log_v2/AdLogV2Action;->AD_SKIP_LOADING:Lcom/snaptube/ads_log_v2/AdLogV2Action;

    invoke-static {v2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->b(Lcom/snaptube/ads_log_v2/AdLogV2Action;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object v2

    new-instance v3, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;

    invoke-direct {v3, p0}, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-virtual {v2, v3}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->Q(Lo/w93;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "wait_time"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->x(Ljava/util/Map;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    invoke-virtual {p0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->a()Lcom/snaptube/ads_log_v2/AdLogV2Event;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snaptube/ads_log_v2/b;->j(Lcom/snaptube/ads_log_v2/AdLogV2Event;)V

    return-void
.end method

.method public static c1()V
    .locals 1

    invoke-static {}, Lcom/snaptube/ads/activity/SplashAdActivity;->N0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/ads/activity/SplashAdActivity;->d1(Ljava/lang/String;)V

    return-void
.end method

.method public static d1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "IAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    check-cast v0, Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/ba3;->k([Ljava/lang/String;)V

    return-void
.end method

.method public static g1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/snaptube/ads/activity/SplashAdActivity;->h1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static h1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/snaptube/ads/activity/SplashAdActivity;->i1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static i1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z
    .locals 8

    const-string v0, "ISplashAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/vh3;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lo/vh3;->d(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private j1(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->V0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ILoggerManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    check-cast v0, Lo/qd3;

    invoke-interface {v0, p1}, Lo/qd3;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static l1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5

    const-string v0, "IAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    check-cast v0, Lo/ba3;

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lo/ba3;->b()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/x93;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lo/c7;->a(Landroid/content/Context;)Lo/b7;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    sget-object v2, Lcom/snaptube/ads/activity/SplashAdActivity;->n:Ljava/util/List;

    invoke-virtual {v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "trigger_tag"

    invoke-virtual {v1, v2, p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return v0

    :catch_0
    :cond_3
    invoke-static {p0, v0, p1, p2, p3}, Lcom/snaptube/ads/activity/SplashAdActivity;->h1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method public static m1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ISplashAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/vh3;

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lo/vh3;->c(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic z0(Lo/h9;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->Z0(Lo/h9;)V

    return-void
.end method


# virtual methods
.method public final I0()Lnet/pubnative/mediation/request/model/PubnativeAdModel;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    instance-of v1, v0, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/SplashAdView;->getAdData()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final J0(Landroid/content/Intent;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "extras"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    const-string v2, "activity_on_create"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SplashAdActivity"

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public P0()Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->m:Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    return-object v0
.end method

.method public Q0()Lo/d1$b;
    .locals 1

    new-instance v0, Lcom/snaptube/ads/activity/SplashAdActivity$b;

    invoke-direct {v0, p0}, Lcom/snaptube/ads/activity/SplashAdActivity$b;-><init>(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    return-object v0
.end method

.method public final S0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/SplashAdView;->L1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final V0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->h:Ljava/lang/String;

    const-string v1, "cold_launch"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final synthetic Y0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 3

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v1, 0x41c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4be

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 p1, 0x4bb

    if-eq v0, p1, :cond_1

    const/16 p1, 0x4bc

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->k:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final b1()V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_1

    :cond_0
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v5, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "ro.miui.notch"

    aput-object v6, v0, v2

    aput-object v4, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    const-class v0, Landroid/view/Window;

    const-string v3, "addExtraFlags"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x700

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final e1(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->n1()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/utils/RxBus$d;

    invoke-static {p1}, Lo/jn7;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->I0()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SplashAdActivity"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-string p1, "ad_splash_activity_finish"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    const-string p1, "ad_splash_activity_finish_after_click"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    const-string p1, "ad_splash_activity_finish_after_close"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public enableTransparentStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic g()Lo/ql3;
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->P0()Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    move-result-object v0

    return-object v0
.end method

.method public final n1()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    instance-of v1, v1, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v1, :cond_0

    new-instance v1, Lo/en7;

    invoke-direct {v1, v0}, Lo/en7;-><init>(Lo/h9;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->i:Lo/iq7$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Lo/iq7$b;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    instance-of v1, v0, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/SplashAdView;->P1()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-eqz v2, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "back_pressed"

    invoke-virtual {v2, v4, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    const-string v2, "trigger_tag"

    const-string v3, "system_back"

    invoke-virtual {v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->x2(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    new-instance v1, Lcom/snaptube/ads/activity/SplashAdActivity$a;

    invoke-direct {v1, p0}, Lcom/snaptube/ads/activity/SplashAdActivity$a;-><init>(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    invoke-static {p0, v1}, Lcom/snaptube/ad/tracker/activity/AdActivityTracker;->g(Landroidx/fragment/app/FragmentActivity;Lcom/snaptube/ad/tracker/activity/a$b;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "entrance"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hot_launch"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    const-string v4, "pos"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    new-instance v5, Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    invoke-direct {v5, v4}, Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->m:Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    const-string v4, "show_cover_bg"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-boolean v6, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    if-nez v6, :cond_1

    if-nez v4, :cond_2

    :cond_1
    invoke-static {p0}, Lo/mm8;->a(Landroid/app/Activity;)V

    sget v6, Lcom/snaptube/ads/R$style;->P4_Theme_AdSplashTransparent:I

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :cond_2
    invoke-super {p0, p1}, Lcom/snaptube/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->h:Ljava/lang/String;

    const-string p1, "ad_splash_activity_on_create"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    sget-object p1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {p1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {p1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    invoke-virtual {p1, p0}, Lcom/snaptube/ads/SplashScreenWrapper;->h(Landroid/app/Activity;)V

    :cond_4
    sget p1, Lcom/snaptube/ads/R$layout;->activity_splash_ad:I

    invoke-virtual {p0, p1}, Lcom/snaptube/base/BaseActivity;->setContentView(I)V

    sget p1, Lcom/snaptube/ads/R$id;->ad_splash_cover:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v3, Lcom/snaptube/ads/R$id;->splash_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lo/xk7;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static {v3, v6, v5, v0, v0}, Lo/sr7;->x(Landroid/view/View;IZZZ)V

    invoke-direct {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->R0()V

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->b1()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/ads/activity/SplashAdActivity$c;

    invoke-interface {v3, p0}, Lcom/snaptube/ads/activity/SplashAdActivity$c;->F(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    const-string v3, "force_show"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v6, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v7, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v6

    iget-boolean v7, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    iget-object v6, v6, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v6

    sget-object v7, Lcom/snaptube/ads_log_v2/AdForm;->NATIVE:Lcom/snaptube/ads_log_v2/AdForm;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-eqz v4, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->i:Lo/iq7$b;

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v2, 0x4be

    const/16 v4, 0x41c

    const/16 v7, 0x4bc

    const/16 v8, 0x4bb

    filled-new-array {v7, v8, v2, v4}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object p1

    new-instance v2, Lo/fn7;

    invoke-direct {v2, p0}, Lo/fn7;-><init>(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    invoke-virtual {p1, v2}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->f:Lo/wu7;

    new-instance p1, Lo/m01;

    invoke-virtual {p0, v1}, Lcom/snaptube/ads/activity/SplashAdActivity;->J0(Landroid/content/Intent;)J

    move-result-wide v7

    invoke-direct {p1, p0, v7, v8}, Lo/m01;-><init>(Landroid/app/Activity;J)V

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->b:Lo/m01;

    invoke-virtual {p1, v3}, Lo/m01;->c(Z)V

    iget-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->b:Lo/m01;

    iget-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->Q0()Lo/d1$b;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lo/m01;->k(Ljava/lang/String;Lo/un7;)Z

    move-result p1

    sget v2, Lcom/snaptube/ads/R$id;->container:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    instance-of v2, v2, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v2, :cond_8

    const-string v2, "use_cache"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    check-cast v2, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v2, v0}, Lcom/snaptube/ads/view/SplashAdView;->setUseCache(Z)V

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    const-string v2, "waterfall_load_time_out"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/view/SplashAdView;->setWaterFallLoadTimeout(J)V

    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/view/SplashAdView;->setMinSplashDuration(J)V

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->c:Lo/hh3;

    invoke-interface {p1}, Lo/hh3;->a()V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v0, 0x448

    invoke-virtual {p1, v0}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    invoke-virtual {p0, v5}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    :goto_1
    const-string p1, "ad_splash_activity_on_create_end"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    const/4 v1, 0x0

    const-string v2, "SplashAdActivity:onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->m:Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    invoke-virtual {v0}, Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;->a()V

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->c:Lo/hh3;

    invoke-interface {v0}, Lo/hh3;->c()Z

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->f:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/b7;->c(Ljava/lang/String;)Lo/h9;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SplashAdActivity"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->b:Lo/m01;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->k:Z

    invoke-virtual {v0}, Lo/m01;->j()V

    :cond_1
    :goto_0
    return-void
.end method
