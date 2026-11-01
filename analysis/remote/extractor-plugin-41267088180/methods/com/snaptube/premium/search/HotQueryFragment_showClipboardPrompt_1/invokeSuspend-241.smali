.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lo/pr3;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-static {p1}, Lcom/snaptube/premium/search/HotQueryFragment;->F5(Lcom/snaptube/premium/search/HotQueryFragment;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p1, Lo/mg8;->a:Lo/mg8;

    return-object p1

    :cond_2
    const p1, 0x7f0903da

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v3, 0x7f090a49

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09097e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v5

    iget-object v6, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v6, 0x7f110848

    goto :goto_0

    :cond_3
    const v6, 0x7f110213

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0800f5

    const v7, 0x7f0802a5

    invoke-static {v4, v6, v7}, Lo/yk3;->h(Landroid/content/Context;II)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    iget-object v4, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->$url:Ljava/lang/String;

    new-instance v6, Lcom/snaptube/premium/search/a;

    invoke-direct {v6, v3, v4, v5}, Lcom/snaptube/premium/search/a;-><init>(Lcom/snaptube/premium/search/HotQueryFragment;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-static {v3}, Lcom/snaptube/premium/search/HotQueryFragment;->J5(Lcom/snaptube/premium/search/HotQueryFragment;)Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->a0(Ljava/lang/String;)V

    sget-object v3, Lo/pu8;->b:Lo/pu8$a;

    iget-object v4, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->$url:Ljava/lang/String;

    const-string v5, "copy_url"

    const-string v6, "searches_exposure"

    invoke-virtual {v3, v6, v4, v5}, Lo/pu8$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-static {v3}, Lcom/snaptube/premium/search/HotQueryFragment;->J5(Lcom/snaptube/premium/search/HotQueryFragment;)Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext(...)"

    invoke-static {v4, v5}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->$url:Ljava/lang/String;

    iput-object v1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->label:I

    const-string v2, "homesearch_clipboard"

    invoke-virtual {v3, v4, v5, v2, p0}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->U(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v2

    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {v2, p1, v0}, Lcom/snaptube/premium/search/HotQueryFragment;->P5(Lcom/snaptube/premium/search/HotQueryFragment;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_5
    iget-object p1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-static {p1}, Lcom/snaptube/premium/search/HotQueryFragment;->J5(Lcom/snaptube/premium/search/HotQueryFragment;)Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->c0(Lcom/trello/rxlifecycle/components/RxFragment;)V

    iget-object p1, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    invoke-static {p1}, Lcom/snaptube/premium/search/HotQueryFragment;->J5(Lcom/snaptube/premium/search/HotQueryFragment;)Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->V()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1;->this$0:Lcom/snaptube/premium/search/HotQueryFragment;

    new-instance v2, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1$3;

    invoke-direct {v2, v1}, Lcom/snaptube/premium/search/HotQueryFragment$showClipboardPrompt$1$3;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/snaptube/premium/search/HotQueryFragment$e;

    invoke-direct {v1, v2}, Lcom/snaptube/premium/search/HotQueryFragment$e;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->i(Lo/x24;Lo/kf5;)V

    sget-object p1, Lo/mg8;->a:Lo/mg8;

    return-object p1
.end method
