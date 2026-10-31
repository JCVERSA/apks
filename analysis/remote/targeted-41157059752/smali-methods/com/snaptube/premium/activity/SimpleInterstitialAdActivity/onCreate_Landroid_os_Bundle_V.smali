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
