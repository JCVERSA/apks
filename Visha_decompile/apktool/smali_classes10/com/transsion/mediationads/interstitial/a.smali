.class public final Lcom/transsion/mediationads/interstitial/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/mediationads/interstitial/a;

.field public static final b:Landroid/os/Handler;

.field public static volatile c:Z

.field public static d:Landroid/app/Dialog;

.field public static e:Ljava/lang/Runnable;

.field public static f:Ljava/lang/Runnable;

.field public static g:Ljava/lang/ref/WeakReference;

.field public static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/interstitial/a;

    invoke-direct {v0}, Lcom/transsion/mediationads/interstitial/a;-><init>()V

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/mediationads/interstitial/a;->q(Landroid/app/Activity;Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;J)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/mediationads/interstitial/a;->l()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/mediationads/interstitial/a;->p(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/Activity;Z)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mediationads/interstitial/a;->r(Landroid/app/Activity;Z)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Landroid/app/Activity;)V
    .locals 4

    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {v0, p0}, Lcom/transsion/mediationads/interstitial/a;->m(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "all"

    :goto_0
    sget-object v1, Lcom/transsion/mediationads/interstitial/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelPendingShow activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pending="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mediation_ad_ForegroundInterstitialCore"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->o:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;->a()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->t()V

    invoke-virtual {v0}, Lcom/transsion/mediationads/interstitial/a;->j()V

    return-void
.end method

.method public static final l()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->f:Ljava/lang/Runnable;

    const-string v1, "mediation_ad_ForegroundInterstitialCore"

    const-string v2, "interstitial loading safety timeout (6000ms), force recover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/transsion/mediationads/interstitial/a;->f(Landroid/app/Activity;)V

    const-string v0, "hot_start"

    const-string v1, "else_rule"

    invoke-static {v0, v1}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final o(Landroid/app/Activity;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_ForegroundInterstitialCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "else_rule"

    const-string v2, "hot_start"

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {p0}, Lev9;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-boolean v3, Lcom/transsion/mediationads/interstitial/a;->c:Z

    const-string v4, "no"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    sget-object v3, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {v3}, Lcom/transsion/mediationads/interstitial/a;->n()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lcom/transsion/mediationads/interstitial/a;->h:J

    sub-long/2addr v6, v8

    sget-object v3, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tryShow force recover stuck isShowing, elapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms, dialogShowing="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/transsion/mediationads/interstitial/a;->f(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    invoke-static {v2, v4}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    sget-object v3, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->o:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;

    invoke-virtual {v3}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;->a()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->y()Z

    move-result v6

    if-nez v6, :cond_5

    const-string p0, "tryShow blocked because no ad"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "mi_rule"

    invoke-static {v2, p0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->z()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "tryShow blocked because interstitial is showing"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v4}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->u()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string p0, "tryShow intercept by ad return flag"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-static {}, Lv34;->h()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p0, "tryShow blocked by guard"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryShow activity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lev9;->a(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShow exclude splash routing activity : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    const-string v6, "VideoPlayerActivity"

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v4, v6, v7, v8, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "VideoPlayerActivityInner"

    invoke-static {v4, v6, v7, v8, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "LaunchTempActivity"

    invoke-static {v4, v6, v7, v8, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "PrivacyFileActivity"

    invoke-static {v4, v6, v7, v8, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "VipWebActivity"

    invoke-static {v4, v6, v7, v8, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "CloudPaymentWebViewActivity"

    invoke-static {v4, v6, v7, v8, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x5a684a3d

    if-eq v8, v9, :cond_d

    const v9, -0x5945d198

    if-eq v8, v9, :cond_c

    const v9, -0x45ed2f16

    if-eq v8, v9, :cond_b

    goto :goto_3

    :cond_b
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_2

    :cond_c
    const-string v8, "com.transsion.magicshow.OPEN_VIDEO"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_3

    :cond_d
    const-string v8, "com.transsion.magicshow.OPEN_AUDIO"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShow exclude action:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_3
    const-string v6, "go_transfer_working"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "go_download"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    const-string v6, "from_new_audio_notification"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string p0, "tryShow exclude new audio notification return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    :goto_4
    const-string p0, "tryShow exclude transfer notification return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-static {v5}, Lcom/transsion/mediationads/interstitial/a;->f(Landroid/app/Activity;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/mediationads/interstitial/a;->c:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/mediationads/interstitial/a;->h:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->g:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_13

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_13
    sget-object v1, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {v1, p0, v0}, Lcom/transsion/mediationads/interstitial/a;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    sget p0, Lcom/transsion/mediationads/R$layout;->dialog_interstitial_ad:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(I)V

    sget p0, Lcom/transsion/mediationads/R$id;->loading_view:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/transsion/mediationads/interstitial/a;->k()V

    new-instance p0, Lp34;

    invoke-direct {p0, v3}, Lp34;-><init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    sput-object p0, Lcom/transsion/mediationads/interstitial/a;->e:Ljava/lang/Runnable;

    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->j()V

    return-void

    :cond_15
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShow exclude activity : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    :goto_6
    invoke-static {v2, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final p(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 3

    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    new-instance v2, Lr34;

    invoke-direct {v2, v0, p0}, Lr34;-><init>(Landroid/app/Activity;Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1

    :cond_1
    const-string p0, "hot_start"

    const-string v0, "else_rule"

    invoke-static {p0, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->j()V

    :goto_1
    return-void
.end method

.method public static final q(Landroid/app/Activity;Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;J)V
    .locals 0

    sget-object p2, Lcom/transsion/mediationads/interstitial/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ls34;

    invoke-direct {p2, p0}, Ls34;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p0, p2}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->F(Landroid/app/Activity;Le74;)V

    goto :goto_1

    :cond_2
    const-string p0, "hot_start"

    const-string p1, "else_rule"

    invoke-static {p0, p1}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->j()V

    :goto_1
    return-void
.end method

.method public static final r(Landroid/app/Activity;Z)Lzfb;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitialAd result success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mediation_ad_ForegroundInterstitialCore"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->a:Lcom/transsion/mediationads/interstitial/a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->j()V

    if-eqz p1, :cond_0

    const-string p0, "no"

    goto :goto_0

    :cond_0
    const-string p0, "else_rule"

    :goto_0
    const-string p1, "hot_start"

    invoke-static {p1, p0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final e(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 p2, -0x1000000

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0, p2}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p2, v1, :cond_4

    invoke-static {p0}, Lpoc;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p0

    const/16 p2, 0x18

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p2

    :goto_2
    if-eqz p0, :cond_6

    invoke-static {p0, v0, p2}, Lnoc;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string p2, "getDecorView(...)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2011

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2010

    :goto_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applySystemBarStyleByNightMode fail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediation_ad_ForegroundInterstitialCore"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    return-void
.end method

.method public final g()V
    .locals 1

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->f:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/mediationads/interstitial/a;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sput-object p0, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    return-void
.end method

.method public final i(Landroid/app/Activity;)Z
    .locals 2

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->g()V

    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/mediationads/interstitial/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->e:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->h()V

    sput-object v0, Lcom/transsion/mediationads/interstitial/a;->g:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/mediationads/interstitial/a;->c:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/mediationads/interstitial/a;->h:J

    return-void
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/a;->g()V

    new-instance p0, Lq34;

    invoke-direct {p0}, Lq34;-><init>()V

    sput-object p0, Lcom/transsion/mediationads/interstitial/a;->f:Ljava/lang/Runnable;

    sget-object v0, Lcom/transsion/mediationads/interstitial/a;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final m(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-boolean p0, Lcom/transsion/mediationads/interstitial/a;->c:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->e:Ljava/lang/Runnable;

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->f:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/transsion/mediationads/interstitial/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-ne v2, p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/interstitial/a;->i(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public final n()Z
    .locals 6

    sget-boolean p0, Lcom/transsion/mediationads/interstitial/a;->c:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/transsion/mediationads/interstitial/a;->d:Landroid/app/Dialog;

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v2, Lcom/transsion/mediationads/interstitial/a;->h:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/mediationads/interstitial/a;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method
