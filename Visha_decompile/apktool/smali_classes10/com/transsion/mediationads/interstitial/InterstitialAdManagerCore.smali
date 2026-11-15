.class public final Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;

.field public static volatile p:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;


# instance fields
.field public a:Lcom/hisavana/mediation/ad/TInterstitialAd;

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:Z

.field public volatile g:Z

.field public volatile h:Z

.field public volatile i:Z

.field public j:Ljava/lang/ref/WeakReference;

.field public k:Le74;

.field public l:Ljava/lang/Runnable;

.field public final m:Landroid/os/Handler;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->o:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;-><init>()V

    return-void
.end method

.method public static final C(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->w()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "26031127F5mCN3"

    invoke-direct {v0, p1, v1}, Lcom/hisavana/mediation/ad/TInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    new-instance p1, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {p1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    new-instance v1, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;

    invoke-direct {v1, p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;-><init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    invoke-virtual {p1, v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdListener(Lcom/hisavana/common/interfacz/TAdListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpca;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->d:Z

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->e:Z

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->f:Z

    sget-object p1, Lrz5;->a:Lrz5$a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lrz5$a;->c(I)V

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lpca;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preload ad error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediation_ad_InterstitialAdManagerCore"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public static final E(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->k:Le74;

    const-string v1, "mediation_ad_InterstitialAdManagerCore"

    if-eqz v0, :cond_0

    const-string v0, "show interstitial timeout, dispatch fail result"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->x(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "show interstitial timeout but listener already cleared"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->C(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->E(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->x(Z)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->b:J

    return-wide v0
.end method

.method public static final synthetic e(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->c:J

    return-wide v0
.end method

.method public static final synthetic f(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->e:Z

    return p0
.end method

.method public static final synthetic g(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->d:Z

    return p0
.end method

.method public static final synthetic h(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->f:Z

    return p0
.end method

.method public static final synthetic i()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->p:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Lcom/hisavana/mediation/ad/TInterstitialAd;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->c:J

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->e:Z

    return-void
.end method

.method public static final synthetic m(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->d:Z

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->f:Z

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 0

    sput-object p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->p:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->g:Z

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->i:Z

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->h:Z

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final A(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, p1, :cond_2

    return-void

    :cond_2
    const-string p1, "mediation_ad_InterstitialAdManagerCore"

    const-string v0, "Host activity destroyed during interstitial, release ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->w()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->i:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final B(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lpca;->hasAd()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p0, "mediation_ad_InterstitialAdManagerCore"

    const-string p1, "preloadInterstitialAd hasAd"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m:Landroid/os/Handler;

    new-instance v0, Lu45;

    invoke-direct {v0, p0, p1}, Lu45;-><init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final D()V
    .locals 3

    new-instance v0, Lv45;

    invoke-direct {v0, p0}, Lv45;-><init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->l:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final F(Landroid/app/Activity;Le74;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->t()V

    iput-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->k:Le74;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->D()V

    iget-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz p2, :cond_1

    const-string v0, "interstitial_scene_video"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lpca;->enterScene(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->y()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->j:Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->n:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Lcom/hisavana/mediation/ad/TInterstitialAd;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->x(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->l:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->k:Le74;

    return-void
.end method

.method public final u()Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->i:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final v()Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->h:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_InterstitialAdManagerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpca;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    iput-object v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->t()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->g:Z

    iput-boolean v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->h:Z

    iput-boolean v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->i:Z

    return-void
.end method

.method public final x(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->l:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->k:Le74;

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->k:Le74;

    return-void
.end method

.method public final y()Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a:Lcom/hisavana/mediation/ad/TInterstitialAd;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpca;->hasAd()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->g:Z

    return p0
.end method
