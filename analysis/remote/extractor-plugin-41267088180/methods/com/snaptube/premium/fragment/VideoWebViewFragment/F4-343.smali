.method private F4(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUrlChanged: url= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoWebView"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->B:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-object p1, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->U:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->e5(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->f5(Ljava/lang/String;)Lcom/snaptube/premium/fragment/VideoWebViewFragment$DownloadButtonStatus;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->A3(Lcom/snaptube/premium/fragment/VideoWebViewFragment$DownloadButtonStatus;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->i5(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->B:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->B:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/webview/e;

    invoke-interface {v1, p1}, Lcom/snaptube/premium/webview/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->h5()V

    return-void
.end method
