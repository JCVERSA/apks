.method public final w(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;
    .locals 8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pos"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snaptube/premium/search/MixedSearchResultFragment;->Z2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "phoenix.intent.extra.SEARCH_QUERY"

    invoke-virtual {v6, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "phoenix.intent.extra.SEARCH_FROM"

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "query_from"

    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/snaptube/premium/search/SearchConst$SearchType;->VIDEO:Lcom/snaptube/premium/search/SearchConst$SearchType;

    invoke-virtual {v4}, Lcom/snaptube/premium/search/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "phoenix.intent.extra.SEARCH_TYPE"

    invoke-virtual {v6, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "phoenix.intent.extra.SEARCH_TAB_NAME"

    invoke-virtual {v6, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lo/bl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "url"

    invoke-virtual {v6, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "search_site"

    invoke-virtual {v6, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "web"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/premium/fragment/GCSWebViewWrapperFragment;

    invoke-static {v1}, Lcom/snaptube/premium/fragment/GCSWebViewWrapperFragment;->L2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p2, p3, v0, p1, v1}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_1
    const-string p2, "youtube"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v5, "phoenix.intent.extra.CONTENT_TYPE"

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->E4()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "ytb_webview_search"

    invoke-virtual {p2, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "show_toolbar"

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/premium/fragment/YouTubeSearchFragment;

    invoke-direct {p3, v0, v1, p1, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_2
    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->YOUTUBE:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->g4()Z

    move-result p2

    if-eqz p2, :cond_3

    const-class p2, Lcom/snaptube/premium/fragment/moweb/SearchVideoWebFragment;

    goto :goto_0

    :cond_3
    const-class p2, Lcom/snaptube/search/view/SearchVideoFragment;

    :goto_0
    new-instance p3, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, v0, v1, p2, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_4
    const-string p2, "all"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->YOUTUBE:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/search/view/SearchYoutubeAllFragment;

    invoke-direct {p2, p3, v0, p1, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_5
    const-string p2, "client_playlist"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->PLAYLIST:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/search/view/SearchPlaylistFragment;

    invoke-direct {p2, p3, v0, p1, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_6
    const-string p2, "client_channel"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->CHANNEL:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/search/view/SearchChannelFragment;

    invoke-direct {p2, p3, v0, p1, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_7
    sget-object p2, Lo/rk7$c;->h:Lo/rk7$c;

    invoke-virtual {p2}, Lo/rk7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-class v0, Lcom/snaptube/search/view/SearchSiteFragment;

    if-eqz p2, :cond_8

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v1, v0, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_8
    sget-object p2, Lo/rk7$d;->h:Lo/rk7$d;

    invoke-virtual {p2}, Lo/rk7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v1, v0, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_9
    sget-object p2, Lo/rk7$b;->h:Lo/rk7$b;

    invoke-virtual {p2}, Lo/rk7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v1, v0, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_a
    return-object v2
.end method
