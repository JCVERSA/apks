.method public final v(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;
    .locals 4

    invoke-static {p3}, Lo/bl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, ""

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v2, "url"

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lo/uh1;->y(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x2

    const-class v3, Lcom/snaptube/mixed_list/fragment/ChannelsFragment;

    if-ne p3, v2, :cond_3

    const/4 p3, 0x1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "channels"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, p4, v3, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_3
    const-string p3, "/list/music/artist/albums"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/mixed_list/fragment/AlbumsFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_4
    const-string p3, "/list/richFeedStream"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/snaptube/premium/ads/a;->a0()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p3

    new-instance p4, Lcom/wandoujia/base/utils/RxBus$d;

    const/16 v1, 0x402

    invoke-direct {p4, v1}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(I)V

    invoke-virtual {p3, p4}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    invoke-static {v0}, Lcom/snaptube/premium/ads/a;->p0(Ljava/lang/String;)V

    :cond_5
    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/fragment/StaggeredDiscoveryFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p3, Lo/uh1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, p4, v3, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_7
    const-string p3, "/list/youtube/home"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p3

    new-instance p4, Lcom/wandoujia/base/utils/RxBus$d;

    const/16 v0, 0x426

    invoke-direct {p4, v0}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(I)V

    invoke-virtual {p3, p4}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->J4()Z

    move-result p3

    if-eqz p3, :cond_8

    const-class p3, Lcom/snaptube/premium/fragment/moweb/YouTubeHomeWebFragment;

    goto :goto_3

    :cond_8
    const-class p3, Lcom/snaptube/premium/fragment/youtube/YouTubeHomeFragment;

    :goto_3
    new-instance p4, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p4, p1, v0, p3, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p4

    :cond_9
    const-string p3, "/list/youtube/channels"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/fragment/youtube/YtbListExpandFragment;

    if-eqz p3, :cond_a

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_a
    const-string p3, "/list/youtube/subscription"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p2, Lo/wz7;

    new-instance p3, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p3, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p4, Lcom/snaptube/premium/subscription/SubscriptionFragment;

    invoke-static {}, Lcom/snaptube/premium/subscription/SubscriptionFragment;->F5()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p2, p1, p3, p4, v0}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_b
    const-string p3, "/list/youtube/channel/channels"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_c
    const-string p3, "/list/youtube/channel/videos"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/fragment/youtube/YtbChannelVideosFragment;

    if-eqz p3, :cond_d

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_d
    const-string p3, "/list/youtube/channel/playlists"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_e
    const-string p3, "/list/youtube/channel/featured"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/fragment/youtube/YtbChannelFeaturedFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_f
    const-string p3, "/list/youtube/watch/tab_recommend"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/activity/YtbVideoDetailsFragment;

    if-eqz p3, :cond_10

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_10
    const-string p3, "/list/youtube/watch/tab_mix"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_11
    const-string p3, "/list/youtube/playlist"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_16

    const-string p3, "/list/youtube/mix"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_4

    :cond_12
    const-string p3, "/list/search"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/fragment/PlayableListFragment;

    if-eqz p3, :cond_13

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_13
    const-string p3, "/list/playable"

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_14
    const-string p3, "/list/search/home"

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/home/SearchHomeFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_15
    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/fragment/youtube/AdCardInjectFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_16
    :goto_4
    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/activity/YtbPlaylistFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3
.end method
