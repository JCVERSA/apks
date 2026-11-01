.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lo/pr3;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/snaptube/premium/preview/audio/viewmodel/AudioPreviewViewModel$getMetaFromPlayId$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/preview/audio/viewmodel/AudioPreviewViewModel$getMetaFromPlayId$2;->$id:Ljava/lang/String;

    invoke-interface {p1, v1}, Lo/zd3;->a(Ljava/lang/String;)Lrx/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lo/zp6;->e(Lrx/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1, v1}, Lo/zd3;->q(Ljava/lang/String;)Lrx/c;

    move-result-object p1

    invoke-static {p1}, Lo/zp6;->e(Lrx/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/media/model/IMediaFile;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
