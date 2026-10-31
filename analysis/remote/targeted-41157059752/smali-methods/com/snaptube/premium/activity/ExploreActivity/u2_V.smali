.method public final u2()V
    .locals 2

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    sget-object v1, Lcom/snaptube/player_guide/PlayerGuideAdPos;->ClEANER_UPGRADE_HOME_DIALOG:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v0, v1}, Lcom/snaptube/player_guide/IPlayerGuide;->v(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a;->f()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->v:Lo/bt0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lo/bt0;

    invoke-direct {v0, p0}, Lo/bt0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->v:Lo/bt0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/snaptube/player_guide/IPlayerGuide;->a(Lcom/snaptube/player_guide/PlayerGuideAdPos;)V

    return-void
.end method
