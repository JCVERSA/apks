.method public final o(ZIILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->u(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "key_ad_shown"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method
