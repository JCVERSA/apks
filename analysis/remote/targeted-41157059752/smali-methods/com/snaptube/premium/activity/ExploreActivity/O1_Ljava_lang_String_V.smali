.method public final synthetic O1(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->y()Lcom/snaptube/premium/ads/a;

    move-result-object v0

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/ads/a;->Z(Ljava/lang/String;)Lcom/snaptube/premium/ads/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/snaptube/premium/ads/a$d;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/snaptube/premium/ads/a$d;->a:I

    iget-object v0, v0, Lcom/snaptube/premium/ads/a$d;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    new-instance v0, Lo/af1;

    invoke-direct {v0, v1}, Lo/af1;-><init>(I)V

    invoke-static {v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->D0(Lo/af1;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gb;

    invoke-static {p1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object p1

    const-string v1, "ad_request_scene"

    const-string v2, "launch"

    invoke-virtual {p1, v1, v2}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    return-void
.end method
