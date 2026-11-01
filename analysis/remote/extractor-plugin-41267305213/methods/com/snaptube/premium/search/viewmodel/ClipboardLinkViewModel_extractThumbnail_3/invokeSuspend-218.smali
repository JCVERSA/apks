.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lo/pr3;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    iget-object v0, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/snaptube/premium/extractor/a;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$url:Ljava/lang/String;

    invoke-static {p1}, Lo/if9;->s(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    iget-object p1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$context:Landroid/content/Context;

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/premium/activity/a;

    invoke-interface {p1}, Lcom/snaptube/premium/activity/a;->a()Lo/ej3;

    move-result-object p1

    iget-object v0, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lo/ej3;->listPlaylist(Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/snaptube/search/SearchResult;->getEntities()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/snaptube/search/SearchResult$Entity;

    invoke-virtual {v2}, Lcom/snaptube/search/SearchResult$Entity;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/snaptube/search/view/provider/f;->e:Lcom/snaptube/search/view/provider/f$a;

    invoke-virtual {v2}, Lcom/snaptube/search/SearchResult$Entity;->getVideo()Lcom/wandoujia/em/common/proto/Video;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snaptube/search/view/provider/f$a;->f(Lcom/wandoujia/em/common/proto/Video;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    move-object v0, v1

    :cond_4
    check-cast v0, Lcom/snaptube/search/SearchResult$Entity;

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    sget-object p1, Lcom/snaptube/search/view/provider/f;->e:Lcom/snaptube/search/view/provider/f$a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/snaptube/search/SearchResult$Entity;->getVideo()Lcom/wandoujia/em/common/proto/Video;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/snaptube/search/view/provider/f$a;->f(Lcom/wandoujia/em/common/proto/Video;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->this$0:Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    new-instance v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$url:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->M(Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;Lkotlin/Pair;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_5

    :goto_3
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->printStacktrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$url:Ljava/lang/String;

    invoke-static {p1}, Lo/hg7;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/snaptube/premium/extractor/a$a;

    iget-object v1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$pos:Ljava/lang/String;

    invoke-direct {p1, v1, v3}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRACT_FROM_ASYNC"

    invoke-virtual {p1, v1}, Lcom/snaptube/premium/extractor/a$a;->b(Ljava/lang/String;)Lcom/snaptube/premium/extractor/a$a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object p1

    iget-object v1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->this$0:Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    iget-object v3, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->$url:Ljava/lang/String;

    iput-object p1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3;->label:I

    new-instance v4, Lo/kh0;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->d(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lo/kh0;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v4}, Lo/kh0;->y()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->w(Lcom/snaptube/premium/extractor/a;)Lrx/c;

    move-result-object p1

    new-instance v2, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3$1$1;

    invoke-direct {v2, v1}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3$1$1;-><init>(Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;)V

    new-instance v5, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$b;

    invoke-direct {v5, v2}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$b;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v5}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object p1

    new-instance v2, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3$1$2;

    invoke-direct {v2, v4, v1, v3}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel$extractThumbnail$3$1$2;-><init>(Lo/jh0;Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    invoke-virtual {v4}, Lo/kh0;->v()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo/pr3;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_8

    invoke-static {p0}, Lo/gf1;->c(Lkotlin/coroutines/Continuation;)V

    :cond_8
    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_a
    :goto_5
    return-object v1
.end method
