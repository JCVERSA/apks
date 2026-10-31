.method public q1(Landroid/content/Intent;Z)Z
    .locals 9

    const/4 v1, 0x0

    if-eqz p1, :cond_21

    iget-boolean v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "app_start_pos_new"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/snaptube/premium/log/AppStartRecorder;->h(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "launch_from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortcut"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "from"

    if-nez v3, :cond_2

    sget-object v3, Lcom/snaptube/premium/NavigationManager;->z1:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v3}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v5, "behavior"

    invoke-virtual {v3, v5}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    const-string v5, "app_start"

    invoke-interface {v3, v5}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v2

    invoke-interface {v2}, Lo/ah3;->reportEvent()V

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->B0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l1(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "snaptube.intent.action.MOVE_TASK_TO_BACK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v2, 0x417

    invoke-virtual {v0, v2}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    :try_start_0
    invoke-virtual {p0, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "MoveTaskToBackException"

    invoke-static {v0, v2}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/snaptube/premium/dialog/coordinator/a;->a(Z)V

    return v8

    :cond_5
    const-string v3, "phoenix.intent.action.EXIT_FOR_CRACK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l1(Landroid/content/Context;Landroid/content/Intent;)V

    return v8

    :cond_6
    const-string v3, "phoenix.intent.action.ACTION_SELF_UPDATE_AVAILABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {p0, v5}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    const-string v0, "notification"

    invoke-static {v0, v8}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->S(Ljava/lang/String;Z)V

    const-string v0, "click_notification_upgrade"

    invoke-static {p0, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->q(Landroid/content/Context;Ljava/lang/String;)V

    return v8

    :cond_7
    const-string v3, "phoenix.intent.action.EXPLORE_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->n1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v8

    :cond_8
    invoke-virtual {p0, p0, v5, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_9
    const-string v3, "snaptube.intent.action.ACTION_RESTART_ACTIVITY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v1, "arg_init_tab"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/snaptube/premium/activity/ExploreActivity;->o2(ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    return v8

    :cond_a
    const-string v3, "snaptube.intent.action.ACTION_EXIT_PROCESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return v8

    :cond_b
    const-string v3, "snaptube.intent.action.SHOW_UPGRADE_DIALOG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->x2(Ljava/lang/String;)V

    return v8

    :cond_c
    const-string v3, "phoenix.intent.action.SEARCH_TAB_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "Download"

    if-eqz v3, :cond_d

    invoke-static {v5}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_d
    const-string v3, "phoenix.intent.action.MY_THINGS_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "File"

    if-eqz v3, :cond_e

    invoke-static {v6}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_e
    const-string v3, "phoenix.intent.action.ME_NAVIGATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "Me"

    if-eqz v3, :cond_f

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_f
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {p1}, Lo/vs1;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    if-eqz p2, :cond_10

    goto :goto_1

    :cond_10
    const-string v1, "is_auto_autoDownload"

    invoke-static {p0}, Lo/if9;->r(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v5, "intent"

    move-object v1, p0

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lcom/snaptube/premium/NavigationManager;->Q0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return v8

    :cond_11
    :goto_1
    return v1

    :cond_12
    const-string v1, "phoenix.intent.action.HOME_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v5}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    const-string v1, "click_toolsbar_st"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    :cond_13
    const-string v1, "phoenix.intent.action.MY_FILES_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v6}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    const-string v0, "click_toolsbar_myfiles"

    invoke-static {v0}, Lo/z88;->a(Ljava/lang/String;)V

    return v8

    :cond_14
    const-string v1, "phoenix.intent.action.MY_FILES_SHORT_CUT_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v6}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    const-string v1, "click_shortcut_myfiles"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    :cond_15
    const-string v1, "phoenix.intent.action.SEARCH_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from_short_cut"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "click_shortcut_search"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_16
    const-string v1, "click_toolsbar_search"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lo/hn7;->a(Landroid/content/Intent;)V

    sget-object v0, Lcom/snaptube/premium/search/SearchConst$SearchType;->VIDEO:Lcom/snaptube/premium/search/SearchConst$SearchType;

    invoke-static {p0, v0}, Lcom/snaptube/premium/NavigationManager;->c0(Landroid/content/Context;Lcom/snaptube/premium/search/SearchConst$SearchType;)V

    return v8

    :cond_17
    const-string v1, "phoenix.intent.action.CLEAN_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "clean_from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v1, "shortcut_click"

    :cond_18
    invoke-static {}, Lo/sq5;->g()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dayuwuxian/clean/ui/base/CleanBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/NavigationManager;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_19
    const-string v1, "click_toolsbar_cleaner"

    const-string v2, "toolbar_clean_request_permission"

    invoke-static {v1, v2}, Lo/z88;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    if-nez v1, :cond_1a

    new-instance v1, Landroidx/lifecycle/n;

    invoke-direct {v1, p0}, Landroidx/lifecycle/n;-><init>(Lo/tx8;)V

    const-class v2, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->a(Ljava/lang/Class;)Lo/mx8;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    :cond_1a
    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {v1, v8}, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;->Y(Z)V

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    :goto_3
    return v8

    :cond_1b
    const-string v1, "phoenix.intent.action.BOOST_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "boost_from_toolbar"

    sget-object v2, Lcom/dayuwuxian/clean/ui/base/CleanBaseActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/NavigationManager;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1c
    const-string v1, "phoenix.intent.action.MORE_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "click_toolsbar_more"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_1d
    const-string v1, "phoenix.intent.action.BLANK_TOOLBAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "click_toolsbar_blank"

    invoke-static {v1}, Lo/z88;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/snaptube/premium/fragment/HomePageFragment;->B3(Ljava/lang/String;)Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V

    return v8

    :cond_1e
    const-string v1, "phoenix.intent.action.VAULT_SHORT_CUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "homescreen"

    invoke-static {p0, v0}, Lcom/snaptube/premium/NavigationManager;->u0(Landroid/content/Context;Ljava/lang/String;)V

    return v8

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    const-string v1, "action_after_restart"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_20

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->c2(Landroid/content/Intent;)V

    :cond_20
    return v8

    :cond_21
    :goto_4
    return v1
.end method
