.method public final x1()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->h:Lo/or4;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lo/gl7;->a()Lo/gl7;

    move-result-object v1

    invoke-virtual {v1}, Lo/gl7;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->g:Lo/lm3;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->J()Lo/av;

    move-result-object v1

    const-class v2, Lo/lm3;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo/av;->c(Ljava/lang/Object;Lo/av$c;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lo/lm3;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lo/or4;

    invoke-direct {v1, v0}, Lo/or4;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->h:Lo/or4;

    :cond_2
    return-void
.end method
