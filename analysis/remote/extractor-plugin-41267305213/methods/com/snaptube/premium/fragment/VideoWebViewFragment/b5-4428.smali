.method public final b5(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->C:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->A:Ljava/lang/String;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->W3(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/snaptube/premium/fragment/VideoWebViewFragment$DownloadButtonStatus;->ENABLE:Lcom/snaptube/premium/fragment/VideoWebViewFragment$DownloadButtonStatus;

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/premium/fragment/VideoWebViewFragment;->A3(Lcom/snaptube/premium/fragment/VideoWebViewFragment$DownloadButtonStatus;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
