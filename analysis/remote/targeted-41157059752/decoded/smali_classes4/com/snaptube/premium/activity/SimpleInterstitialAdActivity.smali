.class public Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;
.super Lcom/snaptube/base/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity$b;
    }
.end annotation


# instance fields
.field b:Lo/hh3;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lo/d1$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity$a;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity$a;-><init>(Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->c:Lo/d1$b;

    return-void
.end method

.method private z0()V
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


# virtual methods
.method public final A0(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/snaptube/ads_log_v2/c;->h()Lcom/snaptube/ads_log_v2/c;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/ads_log_v2/c;->d([Ljava/lang/String;)V

    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0063

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    iget-object v1, p0, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->c:Lo/d1$b;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->setCallback(Lo/d1$b;)V

    invoke-static {p1}, Lo/od;->r(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/view/SplashAdView;->setShowAdTimeout(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v3}, Lcom/snaptube/ads/view/SplashAdView;->setShouldIgnoreShowAdTimeout(Z)V

    :goto_0
    invoke-static {p1}, Lo/od;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->setCtaViewIds([I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0906ac

    const v2, 0x7f0906a7

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->setCtaViewIds([I)V

    :goto_1
    invoke-virtual {v0, p1}, Lcom/snaptube/ads/view/SplashAdView;->q2(Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_2
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/snaptube/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0c004c

    invoke-virtual {p0, p1}, Lcom/snaptube/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->z0()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity$b;

    invoke-interface {p1, p0}, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity$b;->X(Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PLACEMENT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/snaptube/dataadapter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->A0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->b:Lo/hh3;

    invoke-interface {p1}, Lo/hh3;->a()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v0, 0x42a

    invoke-virtual {p1, v0}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->b:Lo/hh3;

    invoke-interface {v0}, Lo/hh3;->c()Z

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x42b

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    return-void
.end method
