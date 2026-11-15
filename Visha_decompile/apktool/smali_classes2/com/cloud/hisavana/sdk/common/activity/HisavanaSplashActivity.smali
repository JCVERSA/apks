.class public Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static S:Z


# instance fields
.field public final N:Ljava/lang/String;

.field public O:Lcom/cloud/hisavana/sdk/q1;

.field public P:J

.field public Q:Z

.field public R:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "HisavanaSplashActivity"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->N:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->P:J

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setStartTime(I)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->start()V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uniqueID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->R:Ljava/lang/String;

    invoke-static {}, Lrod;->b()Lrod;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrod;->a(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_hisavana_splash:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->S:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lp5;->b(Landroid/app/Activity;)V

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->splash_ad:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/q1;->n0(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/q1;->l0(Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->h0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_3
    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sput-boolean p2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->S:Z

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "uniqueID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sput-boolean p2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->S:Z

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "uniqueID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->S:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/cloud/hisavana/sdk/R$style;->InterstitialFullscreenStyle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    :cond_0
    invoke-static {}, Lrod;->b()Lrod;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lrod;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->getSupposeFinishTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->Z(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->getRemainder()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->P:J

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->T()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "onResume"

    const-string v2, "HisavanaSplashActivity"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->Z(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->V()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->a()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->y0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->I()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->a()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v3, "close ad"

    invoke-virtual {v0, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->P()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->a()V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->Q:Z

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->Z(I)V

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "HisavanaSplashActivity"

    const-string v1, "onStart"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->O:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->Z(I)V

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "HisavanaSplashActivity"

    const-string v1, "onStop"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
