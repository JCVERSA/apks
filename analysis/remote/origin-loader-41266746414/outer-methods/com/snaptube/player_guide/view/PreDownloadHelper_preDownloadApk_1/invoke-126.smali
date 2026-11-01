.method public final invoke(Lo/w61;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lo/w61;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/w61;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lo/mg8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/player_guide/view/PreDownloadHelper$preDownloadApk$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/snaptube/player_guide/view/PreDownloadHelper$preDownloadApk$1;

    sget-object p2, Lo/mg8;->a:Lo/mg8;

    invoke-virtual {p1, p2}, Lcom/snaptube/player_guide/view/PreDownloadHelper$preDownloadApk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
