.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lo/pr3;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/snaptube/premium/preview/bar/MusicBarFragment$getPlaylistIdByFilePath$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object p1

    iget-object v0, p0, Lcom/snaptube/premium/preview/bar/MusicBarFragment$getPlaylistIdByFilePath$2;->$filePath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/zd3;->Y(Ljava/lang/String;)Lrx/c;

    move-result-object p1

    invoke-static {p1}, Lo/zp6;->e(Lrx/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
