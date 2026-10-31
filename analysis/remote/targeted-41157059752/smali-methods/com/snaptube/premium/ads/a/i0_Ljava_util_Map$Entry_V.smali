.method public static synthetic i0(Ljava/util/Map$Entry;)V
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sn;

    invoke-interface {v0}, Lo/sn;->H0()Lo/gb;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/gb;->c(Lo/jb;)V

    return-void
.end method
