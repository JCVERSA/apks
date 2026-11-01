.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lo/ha3;

    if-ne p1, v0, :cond_0

    new-instance p1, Lo/pn;

    invoke-direct {p1}, Lo/pn;-><init>()V

    return-object p1

    :cond_0
    const-class v0, Lo/ma3;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/snaptube/extractor/pluginlib/PluginProvider$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lo/kf1;

    if-ne p1, v0, :cond_2

    new-instance p1, Lo/bb9;

    invoke-direct {p1}, Lo/bb9;-><init>()V

    return-object p1

    :cond_2
    const-class v0, Lo/zg3;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lo/qk6;->k()Lo/zg3;

    move-result-object p1

    return-object p1

    :cond_3
    const-class v0, Lo/af3;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/snaptube/extractor/pluginlib/PluginProvider$a;->b:Lo/ld2;

    return-object p1

    :cond_4
    const-class v0, Lo/kd3;

    if-ne p1, v0, :cond_5

    new-instance p1, Lo/hd2;

    invoke-direct {p1}, Lo/hd2;-><init>()V

    return-object p1

    :cond_5
    const-class v0, Lo/bd3;

    if-ne p1, v0, :cond_6

    new-instance p1, Lo/nt3;

    invoke-direct {p1}, Lo/nt3;-><init>()V

    return-object p1

    :cond_6
    const-class v0, Lo/pa3;

    if-ne p1, v0, :cond_7

    invoke-static {}, Lo/b00;->k()Lo/pa3;

    move-result-object p1

    return-object p1

    :cond_7
    const-class v0, Lo/wc3;

    if-ne p1, v0, :cond_8

    invoke-static {}, Lo/q83;->i()Lo/wc3;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method
