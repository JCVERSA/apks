.method private c1()V
    .locals 3

    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a;->d()Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->a(I)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    new-instance v1, Lo/uf1;

    invoke-direct {v1, p0}, Lo/uf1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->b(Lo/a70;)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/dialog/coordinator/element/CopyLinkPopElement;

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->o:Ldagger/Lazy;

    invoke-direct {v1, p0, v2}, Lcom/snaptube/premium/dialog/coordinator/element/CopyLinkPopElement;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ldagger/Lazy;)V

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->b(Lo/a70;)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/dialog/coordinator/element/UpgradePopElement;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/dialog/coordinator/element/UpgradePopElement;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a$a;->b(Lo/a70;)Lcom/snaptube/premium/dialog/coordinator/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a$a;->complete()Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/snaptube/premium/dialog/coordinator/a;->g(Lcom/snaptube/premium/dialog/coordinator/a$b;)V

    return-void
.end method
