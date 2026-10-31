.method public final C()V
    .locals 5

    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pos(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$a;

    invoke-direct {v4}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$a;-><init>()V

    invoke-virtual {v0, v2, v4}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->n(Ljava/lang/String;Lo/lw2;)V

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$b;

    invoke-direct {v2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->o(Ljava/lang/String;Lo/lw2;)V

    return-void
.end method
