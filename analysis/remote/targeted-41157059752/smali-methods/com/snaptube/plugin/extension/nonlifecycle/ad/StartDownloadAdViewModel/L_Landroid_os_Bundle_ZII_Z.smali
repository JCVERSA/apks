.method public final L(Landroid/os/Bundle;ZII)Z
    .locals 4

    sget-object v0, Lo/ic;->c:Lo/ic$a;

    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pos(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->o(ZIILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->g(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result p1

    return p1
.end method
