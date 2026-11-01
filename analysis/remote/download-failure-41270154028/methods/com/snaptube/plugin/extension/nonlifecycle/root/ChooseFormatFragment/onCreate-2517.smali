.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/snaptube/plugin/extension/chooseformat/view/PopupFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "choose_format"

    invoke-static {p1, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->z(Landroid/os/Bundle;Ljava/lang/String;)V

    sget-object p1, Lo/vc2;->a:Lo/vc2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/vc2;->e(Z)V

    invoke-direct {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->B3()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x4aa

    invoke-virtual {p1, v1, v0}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    return-void
.end method
