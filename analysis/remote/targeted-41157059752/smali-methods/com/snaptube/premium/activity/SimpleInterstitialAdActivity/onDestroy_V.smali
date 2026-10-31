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
