.class public final Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final fullScreenJS:Ljava/lang/String; = "\n        function getVideoRect() {\n              console.log(\'pom getVideoRect\');\n              if (window.injectFullScreen != null) {\n                return;\n              }\n              window.injectFullScreen = true;\n              [\n                \'fullscreenchange\',\n                \'webkitfullscreenchange\',\n                \'mozfullscreenchange\',\n                \'msfullscreenchange\',\n              ].forEach((item) => {\n                document.addEventListener(item, function (res) {\n                  console.log(\'pom \' + item);\n                  var fullscreenElement = document.fullscreenElement;\n                  if (fullscreenElement) {\n                    if (fullscreenElement instanceof HTMLVideoElement) {\n                      // \u5168\u5c4f\u5143\u7d20\u662f <video> \u6807\u7b7e\n                      console.log(\'pom \' + item + \' video label enter fullScreen\');\n                      window.dltFullScreen.enterFullScreen(\n                        res.target.videoWidth,\n                        res.target.videoHeight,\n                        true\n                      );\n                    } else {\n                      // \u5168\u5c4f\u5143\u7d20\u4e0d\u662f <video> \u6807\u7b7e\n                      console.log(\'pom \' + item + \' other label enter fullScreen\');\n                      window.dltFullScreen.enterFullScreen(\n                        res.target.videoWidth,\n                        res.target.videoHeight,\n                        false\n                      );\n                    }\n                  } else {\n                    // \u9875\u9762\u9000\u51fa\u5168\u5c4f\u6a21\u5f0f\n                    console.log(\'pom \' + item + \' exit fullScreen\');\n                  }\n                });\n              });\n            }\n            getVideoRect();\n    "


# direct methods
.method public static synthetic a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->tryToProtrait$lambda$6(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final addADJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "miniFragment"

    .line 7
    .line 8
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-class p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "eventAD_"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/extension/c;

    .line 49
    .line 50
    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/ui/extension/c;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method private static final addADJSIListener$lambda$11$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 5

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 2
    .line 3
    const-string v1, "$miniFragment"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v1, "eventADParmaKeyADTag"

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "eventADParmaKeyADM"

    .line 28
    .line 29
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, "eventADParmaKeyCallbackId"

    .line 45
    .line 46
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "pom"

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "adTag:"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, ", adm:"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, ", callbackId:"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setAdTag(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setAdm(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setCallbackId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :catchall_0
    :cond_0
    const/4 p0, 0x1

    .line 103
    return p0
.end method

.method public static final addFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "activity"

    .line 7
    .line 8
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "miniAppBaseFragment"

    .line 12
    .line 13
    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-class p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "eventFullScreen_"

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/extension/f;

    .line 54
    .line 55
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/cloud/tmc/miniapp/ui/extension/f;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public static synthetic addFullScreenJSIListener$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p2

    .line 9
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p4

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v4, p3

    .line 19
    move-object v6, p5

    .line 20
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final addFullScreenJSIListener$lambda$3$lambda$2(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 9

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 2
    .line 3
    const-string v1, "$activity"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "$miniAppBaseFragment"

    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    const-string v1, "eventFullScreenParamKeyWidth"

    .line 22
    .line 23
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v1, "eventFullScreenParamKeyHeight"

    .line 37
    .line 38
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v1, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-string v0, "eventFullScreenParamKeyIsVideo"

    .line 52
    .line 53
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 58
    .line 59
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast p4, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    move-object v5, p0

    .line 69
    move-object v6, p1

    .line 70
    move-object v7, p2

    .line 71
    move-object v8, p3

    .line 72
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->enterFullScreen(IIZLandroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :catchall_0
    :cond_0
    const/4 p0, 0x1

    .line 76
    return p0
.end method

.method public static synthetic b(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->enterFullScreen$lambda$8(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addADJSIListener$lambda$11$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic d(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addFullScreenJSIListener$lambda$3$lambda$2(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->injectScreenFullJS$lambda$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final enterFullScreen(IIZLandroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 11

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "getRect->width:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move v2, p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", height:"

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move v9, p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, ", isVideo:"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move v7, p2

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ", appType:"

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "pom"

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/extension/d;

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    move-object v4, p3

    .line 72
    move-object v5, p4

    .line 73
    move-object/from16 v6, p5

    .line 74
    .line 75
    move v8, p0

    .line 76
    move-object/from16 v10, p6

    .line 77
    .line 78
    invoke-direct/range {v3 .. v10}, Lcom/cloud/tmc/miniapp/ui/extension/d;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static synthetic enterFullScreen$default(IIZLandroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    move v2, p0

    .line 17
    move v3, p1

    .line 18
    move v4, p2

    .line 19
    move-object v6, p4

    .line 20
    move-object v8, p6

    .line 21
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->enterFullScreen(IIZLandroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final enterFullScreen$lambda$8(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 5

    .line 1
    const-string v0, "$activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$miniAppBaseFragment"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->isExistStatusBar(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v1, v2

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v4, 0x1c

    .line 49
    .line 50
    if-lt v3, v4, :cond_1

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/extension/a;->a(Landroid/view/WindowManager$LayoutParams;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x3

    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v1, v2

    .line 66
    :cond_1
    const/4 v2, 0x1

    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ne p2, v3, :cond_4

    .line 86
    .line 87
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    sub-int/2addr v1, p2

    .line 98
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenWidth()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 103
    .line 104
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 105
    .line 106
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_3

    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_c

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    if-eqz p3, :cond_8

    .line 128
    .line 129
    if-eqz p3, :cond_5

    .line 130
    .line 131
    if-le p4, p5, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_6

    .line 139
    .line 140
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    sub-int/2addr v1, p2

    .line 145
    :cond_6
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenWidth()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 150
    .line 151
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 152
    .line 153
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_7

    .line 162
    .line 163
    return-void

    .line 164
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-nez p2, :cond_c

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    :goto_1
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_9

    .line 179
    .line 180
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideVirtualNavBar()V

    .line 181
    .line 182
    .line 183
    :cond_9
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenWidth()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-lt p2, v1, :cond_a

    .line 188
    .line 189
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 190
    .line 191
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_a
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 195
    .line 196
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 197
    .line 198
    :goto_2
    invoke-virtual {p6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-nez p2, :cond_b

    .line 207
    .line 208
    return-void

    .line 209
    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-ne p2, v2, :cond_c

    .line 214
    .line 215
    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 217
    .line 218
    .line 219
    :cond_c
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 223
    .line 224
    .line 225
    :cond_d
    return-void
.end method

.method private static final getFixScreenHeight(Landroid/view/ViewGroup;I)I
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    if-ge p0, p1, :cond_0

    .line 18
    .line 19
    move v0, p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, p1

    .line 22
    :goto_0
    :try_start_1
    const-string v1, "pom"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "parent.height:"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ", targetHeight:"

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    move p1, v0

    .line 53
    :catchall_1
    :cond_1
    return p1
.end method

.method public static final injectScreenFullJS(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p0, v0

    .line 25
    :goto_0
    instance-of v1, p0, Landroid/webkit/WebView;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    check-cast v0, Landroid/webkit/WebView;

    .line 31
    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object p0, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->fullScreenJS:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/extension/b;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/extension/b;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private static final injectScreenFullJS$lambda$0(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final landScapeToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static final removeADJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-class p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "eventAD_"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public static final removeFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-class p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "eventFullScreen_"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public static final tryToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    .line 1
    const-string p3, "<this>"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "activity"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p3, Lcom/cloud/tmc/miniapp/ui/extension/e;

    .line 12
    .line 13
    invoke-direct {p3, p1, p2, p0}, Lcom/cloud/tmc/miniapp/ui/extension/e;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final tryToProtrait$lambda$6(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 5

    .line 1
    const-string v0, "$activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$this_tryToProtrait"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->isExistStatusBar(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v1, v2

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v4, 0x1c

    .line 49
    .line 50
    if-lt v3, v4, :cond_1

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/extension/a;->a(Landroid/view/WindowManager$LayoutParams;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x3

    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v1, v2

    .line 66
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/DisplayUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    sub-int/2addr v1, p2

    .line 77
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenWidth()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    .line 83
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_3

    .line 90
    .line 91
    const/4 p2, 0x1

    .line 92
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method
