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
