.method public final l(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "mixed_list"

    if-nez p4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_package.local"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v3, "snaptubeapp.com"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1, p2, v2, p4}, Lo/uh1;->o(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v3, "/detail"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "/list/video/sync"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "/detail/rcmd"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "/detail/sync_list/one_way"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v3, "/shorts"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2}, Lo/uh1;->p(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_6
    const-string v3, "/list/youtube/channel/videos"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {p0, p1, p2}, Lo/uh1;->u(Landroid/content/Context;Landroid/content/Intent;)V

    return v4

    :cond_7
    const-string v3, "/watch"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1, p2, p3}, Lo/uh1;->q(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z

    move-result p1

    return p1

    :cond_8
    const-string p3, "/play_home"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "/setting_home"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "/search_hot_query"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto/16 :goto_2

    :cond_9
    const-string p3, "/list/youtube/playlist"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    const-string p3, "url"

    invoke-virtual {v2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/snaptube/premium/NavigationManager;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-static {p1, p3}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "intent"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    const-string p4, "/search_video_play"

    sget-object p5, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, p4, p2, p5}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_b
    const-string p3, "/list/youtube/history"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_19

    const-string p3, "/list/youtube/watchlater"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_19

    const-string p3, "/list/youtube/me/playlist"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string p3, "/list/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    const-class p3, Lcom/snaptube/premium/activity/CommonMixedListActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_d
    const-string p3, "/tab/search"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p4, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    const-string p5, "/search_mixed_result"

    invoke-virtual {p3, p1, p5, p2, p4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_e
    const-string p3, "/tab/creators"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const-class p5, Lcom/snaptube/premium/activity/CommonMultiTabActivity;

    const-string v2, "/search_ytb_user"

    const-string v3, "data"

    const/high16 v5, 0x4000000

    if-eqz p3, :cond_10

    const p3, 0x7f1101dd

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "title"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p4, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v2, p2, p4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_f
    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_10
    const-string p3, "/tab/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p4, Lcom/snaptube/premium/navigator/LaunchFlag;->STANDARD:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v2, p2, p4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_11
    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_12
    const-string p3, "/explore/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-class p3, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_13
    const-string p3, "/web"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    const-class p3, Lcom/snaptube/premium/webview/common/CommonWebActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_14
    const-string p3, "/zendesk/feedback"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_15

    const-string p4, "pos"

    invoke-virtual {p3, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "feedback_push_local"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_15

    sget-object p4, Lo/vh9;->a:Lo/vh9;

    invoke-virtual {p4, p3}, Lo/vh9;->d(Landroid/net/Uri;)V

    :cond_15
    const-class p3, Lcom/snaptube/premium/activity/ZendeskPushActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lo/th9;->g()Z

    move-result p3

    if-nez p3, :cond_16

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/snaptube/premium/app/PhoenixApplication;->F()Lo/bg5;

    move-result-object p3

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p4

    invoke-virtual {p4}, Lcom/snaptube/premium/app/PhoenixApplication;->b()Lcom/snaptube/premium/app/d;

    move-result-object p4

    invoke-interface {p4}, Lcom/snaptube/premium/app/d;->x0()Lo/gh2$a;

    move-result-object p4

    new-instance p5, Lo/kh2;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, v0}, Lo/kh2;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p4, p5}, Lo/th9;->f(Lo/bg5;Lo/gh2$a;Lo/jc3;)V

    :cond_16
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return v4

    :cond_17
    invoke-static {p4}, Lo/uh1;->t(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_18
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_19
    :goto_1
    invoke-virtual {p0, p1, p2}, Lo/uh1;->u(Landroid/content/Context;Landroid/content/Intent;)V

    return v4

    :cond_1a
    :goto_2
    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p5, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TASK:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, p4, p2, p5}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_1b
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p5}, Lo/uh1;->n(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_4
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
