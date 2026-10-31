.method public final u(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "key_start_count"

    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_interval"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p3
.end method
