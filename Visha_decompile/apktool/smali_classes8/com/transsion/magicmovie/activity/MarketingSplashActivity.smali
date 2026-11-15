.class public Lcom/transsion/magicmovie/activity/MarketingSplashActivity;
.super Lcom/transsion/magicmovie/activity/BaseAdActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public Q:Lcom/transsion/vishaads/views/AdItemView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/Button;

.field public T:Landroid/view/View;

.field public U:Landroid/os/CountDownTimer;

.field public V:J

.field public W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public X:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;-><init>()V

    return-void
.end method

.method public static bridge synthetic L(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->R:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic M(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->V:J

    return-void
.end method


# virtual methods
.method public final N(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->X:J

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string p1, "vd_ad_open_show"

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, La9;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->X:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markPointShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketingSplashActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_open_duration"

    invoke-static {p1, p0, v0}, La9;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final O(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->Q:Lcom/transsion/vishaads/views/AdItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/vishaads/views/AdItemView;->autoPauseOrResume(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->P()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->U:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->U:Landroid/os/CountDownTimer;

    :cond_2
    :goto_0
    return-void
.end method

.method public final P()V
    .locals 7

    iget-wide v2, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->V:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCountDownTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketingSplashActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130a76

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->U:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v6, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;-><init>(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;JJ)V

    iput-object v6, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->U:Landroid/os/CountDownTimer;

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->U:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p2

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->F()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a007d

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0170

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0e65

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->F()V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_open_close_cl"

    invoke-static {p1, p0, v0}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpFromAdViewResult(Landroid/content/Context;ZLcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_open_cl"

    invoke-static {p1, p0, v0}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le80;->o(Landroid/app/Activity;Z)V

    invoke-static {p0, v0}, Le80;->k(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0d022f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->T:Landroid/view/View;

    const v0, 0x7f0a0be3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaads/views/AdItemView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->Q:Lcom/transsion/vishaads/views/AdItemView;

    const v0, 0x7f0a0e65

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->R:Landroid/widget/TextView;

    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->S:Landroid/widget/Button;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->T:Landroid/view/View;

    new-instance v1, Lu16;

    invoke-direct {v1, p0}, Lu16;-><init>(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->R:Landroid/widget/TextView;

    new-instance v1, Lu16;

    invoke-direct {v1, p0}, Lu16;-><init>(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->S:Landroid/widget/Button;

    new-instance v1, Lu16;

    invoke-direct {v1, p0}, Lu16;-><init>(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lc9;->a()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->Q:Lcom/transsion/vishaads/views/AdItemView;

    invoke-virtual {v1, v0, p1}, Lcom/transsion/vishaads/views/AdItemView;->showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Z)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->V:J

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->P()V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->W:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lmn5;->i()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->F()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->N(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->N(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->O(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->O(Z)V

    return-void
.end method
