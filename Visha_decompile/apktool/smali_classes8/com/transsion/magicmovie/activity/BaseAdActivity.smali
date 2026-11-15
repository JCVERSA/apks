.class public Lcom/transsion/magicmovie/activity/BaseAdActivity;
.super Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;
.source "SourceFile"


# static fields
.field public static P:Z


# instance fields
.field public N:Z

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->O:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E()V
    .locals 3

    invoke-static {}, Lxdc;->b()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adItemBean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_ad_BaseAdActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->H(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    const-string p0, "cold_start"

    const-string v0, "else_rule"

    invoke-static {p0, v0}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->F()V

    :goto_0
    return-void
.end method

.method public F()V
    .locals 1

    invoke-static {}, Lqha;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lpp3;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lw6c;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->J()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->G()V

    :goto_0
    return-void
.end method

.method public final G()V
    .locals 4

    sget-object v0, Ldv9;->a:Ldv9$a;

    invoke-virtual {v0}, Ldv9$a;->a()Ldv9;

    move-result-object v0

    invoke-virtual {v0}, Ldv9;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->N:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->P:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalStart canShowSplashAd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsColdLaunchType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->N:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mediationSplashTriggered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/transsion/magicmovie/activity/BaseAdActivity;->P:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediation_ad_BaseAdActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/transsion/magicmovie/activity/BaseAdActivity;->P:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->I()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->N:Z

    if-eqz v0, :cond_2

    const-string v0, "cold_start"

    const-string v1, "sw_rule"

    invoke-static {v0, v1}, Loy5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->K()V

    :goto_1
    return-void
.end method

.method public H(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lc9;->b(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public I()V
    .locals 3

    sget-object v0, Lhb6;->b:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaAdsActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_ad_BaseAdActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->K()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->D()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public J()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicmovie/activity/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public K()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/utils/a;->b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lt81;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/transsion/magicmovie/application/VideoApplication;->H()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->N:Z

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/BaseAdActivity;->O:Z

    invoke-super {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
