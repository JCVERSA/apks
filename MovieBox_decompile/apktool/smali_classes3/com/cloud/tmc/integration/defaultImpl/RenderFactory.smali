.class public final Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/render/IRenderFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002JX\u0010\u0011\u001a\u00020\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016Jp\u0010\u001c\u001a\u00020\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;",
        "Lcom/cloud/tmc/render/IRenderFactory;",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "createRender",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "activity",
        "Landroid/app/Activity;",
        "engineProxy",
        "Lcom/cloud/tmc/kernel/engine/IEngine;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "createParams",
        "Lcom/cloud/tmc/kernel/model/CreateParams;",
        "getRender",
        "",
        "pageId",
        "context",
        "",
        "data",
        "Landroid/os/Bundle;",
        "isFirstLaunch",
        "",
        "listener",
        "Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;",
        "initRenderEnv",
        "mRender",
        "createRenderEndTime",
        "",
        "loadRenderFrameworkStartTime",
        "loadRenderFrameworkEndTime",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "RenderFactory"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p12}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->getRender$lambda$4(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->initRenderEnv(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 10
    .line 11
    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->getRender(Landroid/app/Activity;Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/cloud/tmc/render/SystemRender;

    .line 32
    .line 33
    const/16 v7, 0x10

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v1, v0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    move-object v4, p3

    .line 41
    move-object v5, p4

    .line 42
    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object v0
.end method

.method private static final getRender$lambda$4(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    move-object/from16 v1, p9

    .line 6
    .line 7
    move-object/from16 v2, p10

    .line 8
    .line 9
    move-object/from16 v4, p11

    .line 10
    .line 11
    const-string v5, "this$0"

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v5, "$pageId"

    .line 19
    .line 20
    move-object/from16 v7, p5

    .line 21
    .line 22
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v5, "$context"

    .line 26
    .line 27
    move-object/from16 v8, p6

    .line 28
    .line 29
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v5, "$mRender"

    .line 33
    .line 34
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v5, "$listener"

    .line 38
    .line 39
    move-object/from16 v9, p8

    .line 40
    .line 41
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v5, "$createRenderEndTime"

    .line 45
    .line 46
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v5, "$loadRenderFrameworkStartTime"

    .line 50
    .line 51
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v5, "$loadRenderFrameworkEndTime"

    .line 55
    .line 56
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v5, "$data"

    .line 60
    .line 61
    move-object/from16 v15, p12

    .line 62
    .line 63
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    move-object v5, v3

    .line 72
    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move-object v5, v10

    .line 76
    :goto_0
    if-eqz v5, :cond_1

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    :cond_1
    if-nez v10, :cond_2

    .line 83
    .line 84
    const-string v0, "InnerWarmup"

    .line 85
    .line 86
    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    move-object v10, v0

    .line 95
    check-cast v10, Lcom/cloud/tmc/kernel/render/IRender;

    .line 96
    .line 97
    iget-wide v11, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 98
    .line 99
    iget-wide v13, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 100
    .line 101
    iget-wide v4, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 102
    .line 103
    move-object/from16 v0, p1

    .line 104
    .line 105
    move-object/from16 v1, p2

    .line 106
    .line 107
    move-object/from16 v2, p3

    .line 108
    .line 109
    move-object/from16 v3, p0

    .line 110
    .line 111
    move-wide/from16 v16, v4

    .line 112
    .line 113
    move-object/from16 v4, p4

    .line 114
    .line 115
    move-object/from16 v5, p5

    .line 116
    .line 117
    move-object/from16 v6, p6

    .line 118
    .line 119
    move-object v7, v10

    .line 120
    move-object/from16 v8, p8

    .line 121
    .line 122
    move-wide v9, v11

    .line 123
    move-wide v11, v13

    .line 124
    move-wide/from16 v13, v16

    .line 125
    .line 126
    move-object/from16 v15, p12

    .line 127
    .line 128
    invoke-direct/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->initRenderEnv(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private final initRenderEnv(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move-object/from16 v11, p15

    .line 1
    const-class v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    instance-of v14, v1, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v14, :cond_0

    move-object/from16 v16, v1

    check-cast v16, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 3
    :goto_1
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 4
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "render fromWarmup : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-interface {v13, v15, v9, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 6
    instance-of v7, v3, Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz v7, :cond_2

    .line 7
    check-cast v3, Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/render/IRender;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V

    .line 8
    :cond_2
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppId(Ljava/lang/String;)V

    .line 10
    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupRenderId(Ljava/lang/String;)V

    .line 11
    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupEngine(Lcom/cloud/tmc/kernel/engine/IEngine;)V

    .line 12
    invoke-interface {v4, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    move-object/from16 v0, p4

    .line 13
    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-interface {v4, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 15
    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/render/IRender;->init(Ljava/lang/String;)V

    .line 16
    :goto_3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    if-eqz v14, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v14, :cond_7

    .line 17
    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v0

    .line 18
    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppType(I)V

    .line 19
    :cond_8
    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 20
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->registerRender(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v7, v5, v2

    if-eqz v7, :cond_9

    .line 22
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7

    .line 23
    :cond_9
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_7
    if-eqz v11, :cond_a

    .line 24
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_a
    if-eqz v1, :cond_b

    .line 25
    const-class v5, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1, v5}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/App;

    .line 26
    :cond_b
    instance-of v5, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v5, :cond_c

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    .line 27
    :goto_8
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_d

    .line 28
    move-object v7, v1

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_e

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    .line 29
    :goto_a
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 30
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    .line 31
    invoke-interface {v6, v7, v8, v9, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_f

    .line 33
    move-object v7, v1

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_10

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    .line 34
    :goto_c
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 35
    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    .line 36
    invoke-interface {v6, v7, v9, v10, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    new-instance v6, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;

    invoke-direct {v6, v0}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;-><init>(Landroid/os/Bundle;)V

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v6, v0}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    move-wide/from16 v6, p11

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1e

    move-object/from16 p2, v5

    move-wide/from16 v4, p13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1e

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v11, :cond_12

    .line 40
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 41
    :cond_12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 42
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v11, :cond_13

    .line 43
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 44
    :cond_13
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_14

    .line 45
    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_15

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    .line 46
    :goto_f
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 47
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 48
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_16

    .line 50
    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_17

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    .line 51
    :goto_11
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 52
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 53
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_18

    .line 55
    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_12

    :cond_18
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    .line 56
    :goto_13
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 57
    invoke-interface {v3, v4, v8, v5, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_1a

    .line 59
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_14

    :cond_1a
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_1b
    const/4 v1, 0x0

    .line 60
    :goto_15
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 61
    invoke-interface {v3, v1, v9, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    new-instance v1, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    goto :goto_16

    :cond_1c
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 63
    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;

    invoke-direct {v0, v2}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v15

    goto :goto_17

    :cond_1d
    const/4 v15, 0x0

    :goto_17
    invoke-virtual {v0, v15}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    :cond_1e
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 64
    invoke-interface {v1, v0}, Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;->createSuccess(Lcom/cloud/tmc/kernel/render/IRender;)V

    return-void
.end method


# virtual methods
.method public getRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;ZLcom/cloud/tmc/render/IRenderFactory$IRenderListener;)V
    .locals 18

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    const-string v0, "pageId"

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "context"

    .line 13
    .line 14
    move-object/from16 v10, p6

    .line 15
    .line 16
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "data"

    .line 20
    .line 21
    move-object/from16 v13, p7

    .line 22
    .line 23
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "listener"

    .line 27
    .line 28
    move-object/from16 v11, p9

    .line 29
    .line 30
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    .line 34
    .line 35
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 43
    .line 44
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    .line 45
    .line 46
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 54
    .line 55
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    .line 56
    .line 57
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iput-wide v0, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 65
    .line 66
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 72
    .line 73
    instance-of v1, v6, Lcom/cloud/tmc/integration/structure/Page;

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    move-object v3, v6

    .line 78
    check-cast v3, Lcom/cloud/tmc/integration/structure/Page;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v3, 0x0

    .line 82
    :goto_0
    if-eqz v3, :cond_1

    .line 83
    .line 84
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v3, 0x0

    .line 96
    :goto_1
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const-class v3, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 101
    .line 102
    if-eqz v0, :cond_11

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    move-object v0, v6

    .line 107
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    const/4 v0, 0x0

    .line 111
    :goto_2
    if-eqz v0, :cond_3

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    const/4 v0, 0x0

    .line 137
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    move-object v4, v6

    .line 144
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_4
    const/4 v4, 0x0

    .line 148
    :goto_4
    if-eqz v4, :cond_5

    .line 149
    .line 150
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    goto :goto_5

    .line 161
    :cond_5
    const/4 v4, 0x0

    .line 162
    :goto_5
    if-eqz v7, :cond_9

    .line 163
    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-nez v5, :cond_9

    .line 169
    .line 170
    if-eqz v4, :cond_9

    .line 171
    .line 172
    invoke-static {v4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-eqz v4, :cond_7

    .line 177
    .line 178
    const-string v5, "h5Path"

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v16

    .line 184
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v16

    .line 188
    if-eqz v16, :cond_6

    .line 189
    .line 190
    const-string v2, "h5PathCopy"

    .line 191
    .line 192
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v17

    .line 196
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v17

    .line 200
    if-nez v17, :cond_6

    .line 201
    .line 202
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_6
    const-string v2, "query"

    .line 210
    .line 211
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_8

    .line 220
    .line 221
    const-string v5, "queryCopy"

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    if-nez v17, :cond_8

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_7
    const/4 v4, 0x0

    .line 242
    :cond_8
    :goto_6
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    sget-object v2, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    .line 247
    .line 248
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->getOffScreenRender(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 253
    .line 254
    :cond_9
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 255
    .line 256
    if-nez v0, :cond_b

    .line 257
    .line 258
    if-eqz v7, :cond_a

    .line 259
    .line 260
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 265
    .line 266
    invoke-interface {v0, v7}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    goto :goto_7

    .line 271
    :cond_a
    const/4 v0, 0x0

    .line 272
    :goto_7
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 273
    .line 274
    :cond_b
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 275
    .line 276
    if-nez v0, :cond_e

    .line 277
    .line 278
    new-instance v5, Lcom/cloud/tmc/render/SystemRender;

    .line 279
    .line 280
    if-eqz v1, :cond_c

    .line 281
    .line 282
    move-object v2, v6

    .line 283
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_c
    const/4 v2, 0x0

    .line 287
    :goto_8
    if-eqz v2, :cond_d

    .line 288
    .line 289
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_d

    .line 294
    .line 295
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_d

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    :goto_9
    move/from16 v16, v0

    .line 306
    .line 307
    goto :goto_a

    .line 308
    :cond_d
    sget-object v0, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    goto :goto_9

    .line 315
    :goto_a
    move-object v0, v5

    .line 316
    move-object/from16 v1, p1

    .line 317
    .line 318
    move-object/from16 v2, p2

    .line 319
    .line 320
    move-object/from16 v3, p3

    .line 321
    .line 322
    move-object/from16 v4, p4

    .line 323
    .line 324
    move-object v9, v5

    .line 325
    move/from16 v5, v16

    .line 326
    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    .line 328
    .line 329
    .line 330
    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 331
    .line 332
    goto/16 :goto_16

    .line 333
    .line 334
    :cond_e
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 335
    .line 336
    if-eqz v1, :cond_f

    .line 337
    .line 338
    move-object v2, v6

    .line 339
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_f
    const/4 v2, 0x0

    .line 343
    :goto_b
    if-eqz v2, :cond_10

    .line 344
    .line 345
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    if-eqz v1, :cond_10

    .line 350
    .line 351
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-eqz v1, :cond_10

    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    goto :goto_c

    .line 362
    :cond_10
    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    :goto_c
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppType(I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_16

    .line 372
    .line 373
    :cond_11
    if-eqz v1, :cond_12

    .line 374
    .line 375
    move-object v0, v6

    .line 376
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_12
    const/4 v0, 0x0

    .line 380
    :goto_d
    if-eqz v0, :cond_13

    .line 381
    .line 382
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    if-eqz v2, :cond_13

    .line 387
    .line 388
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-interface {v2, v0}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    goto :goto_e

    .line 401
    :cond_13
    const/4 v0, 0x0

    .line 402
    :goto_e
    if-nez v0, :cond_14

    .line 403
    .line 404
    goto/16 :goto_16

    .line 405
    .line 406
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    const/4 v2, 0x2

    .line 411
    if-ne v0, v2, :cond_1f

    .line 412
    .line 413
    if-eqz v1, :cond_15

    .line 414
    .line 415
    move-object v0, v6

    .line 416
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 417
    .line 418
    goto :goto_f

    .line 419
    :cond_15
    const/4 v0, 0x0

    .line 420
    :goto_f
    if-eqz v0, :cond_16

    .line 421
    .line 422
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    if-eqz v0, :cond_16

    .line 427
    .line 428
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    goto :goto_10

    .line 433
    :cond_16
    const/4 v0, 0x0

    .line 434
    :goto_10
    if-eqz v1, :cond_17

    .line 435
    .line 436
    move-object v1, v6

    .line 437
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :cond_17
    const/4 v1, 0x0

    .line 441
    :goto_11
    if-eqz v1, :cond_18

    .line 442
    .line 443
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    if-eqz v1, :cond_18

    .line 448
    .line 449
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    goto :goto_12

    .line 454
    :cond_18
    const/4 v1, 0x0

    .line 455
    :goto_12
    if-eqz v0, :cond_19

    .line 456
    .line 457
    const-string v4, "pageCopy"

    .line 458
    .line 459
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    goto :goto_13

    .line 464
    :cond_19
    const/4 v0, 0x0

    .line 465
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    if-nez v4, :cond_1a

    .line 470
    .line 471
    if-eqz v0, :cond_1a

    .line 472
    .line 473
    const-string v4, "http"

    .line 474
    .line 475
    const/4 v5, 0x0

    .line 476
    const/4 v9, 0x0

    .line 477
    invoke-static {v0, v4, v5, v2, v9}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    const/4 v4, 0x1

    .line 482
    if-ne v2, v4, :cond_1b

    .line 483
    .line 484
    invoke-static {v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_1b

    .line 489
    .line 490
    sget-object v1, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    .line 491
    .line 492
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->getOffScreenRender(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 497
    .line 498
    goto :goto_14

    .line 499
    :cond_1a
    const/4 v9, 0x0

    .line 500
    :cond_1b
    :goto_14
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 501
    .line 502
    if-nez v0, :cond_1d

    .line 503
    .line 504
    if-eqz v7, :cond_1c

    .line 505
    .line 506
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 511
    .line 512
    invoke-interface {v0, v7}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    goto :goto_15

    .line 517
    :cond_1c
    move-object v2, v9

    .line 518
    :goto_15
    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 519
    .line 520
    :cond_1d
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 521
    .line 522
    if-nez v0, :cond_1e

    .line 523
    .line 524
    new-instance v9, Lcom/cloud/tmc/render/SystemRender;

    .line 525
    .line 526
    sget-object v0, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    move-object v0, v9

    .line 533
    move-object/from16 v1, p1

    .line 534
    .line 535
    move-object/from16 v2, p2

    .line 536
    .line 537
    move-object/from16 v3, p3

    .line 538
    .line 539
    move-object/from16 v4, p4

    .line 540
    .line 541
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    .line 542
    .line 543
    .line 544
    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 545
    .line 546
    goto :goto_16

    .line 547
    :cond_1e
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 548
    .line 549
    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppType(I)V

    .line 556
    .line 557
    .line 558
    :cond_1f
    :goto_16
    instance-of v0, v6, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 559
    .line 560
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 561
    .line 562
    if-nez v0, :cond_20

    .line 563
    .line 564
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 565
    .line 566
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    move-object v9, v0

    .line 571
    check-cast v9, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 572
    .line 573
    new-instance v8, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;

    .line 574
    .line 575
    move-object v0, v8

    .line 576
    move-object v1, v12

    .line 577
    move-object v2, v14

    .line 578
    move-object/from16 v3, p2

    .line 579
    .line 580
    move-object v4, v15

    .line 581
    move-object/from16 v5, p3

    .line 582
    .line 583
    move-object/from16 v6, p0

    .line 584
    .line 585
    move-object/from16 v7, p1

    .line 586
    .line 587
    move-object v14, v8

    .line 588
    move-object/from16 v8, p4

    .line 589
    .line 590
    move-object v15, v9

    .line 591
    move-object/from16 v9, p5

    .line 592
    .line 593
    move-object/from16 v10, p6

    .line 594
    .line 595
    move-object/from16 v11, p9

    .line 596
    .line 597
    move-object/from16 v12, p7

    .line 598
    .line 599
    invoke-direct/range {v0 .. v12}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/engine/IEngine;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Landroid/os/Bundle;)V

    .line 600
    .line 601
    .line 602
    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 603
    .line 604
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 609
    .line 610
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    move/from16 v1, p8

    .line 615
    .line 616
    invoke-interface {v15, v14, v1, v0}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->registerListener(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;ZLjava/lang/String;)V

    .line 617
    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_20
    const-wide/16 v0, 0x0

    .line 621
    .line 622
    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 623
    .line 624
    new-instance v16, Lcom/cloud/tmc/integration/defaultImpl/d;

    .line 625
    .line 626
    move-object/from16 v0, v16

    .line 627
    .line 628
    move-object/from16 v1, p3

    .line 629
    .line 630
    move-object/from16 v2, p0

    .line 631
    .line 632
    move-object/from16 v3, p1

    .line 633
    .line 634
    move-object/from16 v4, p2

    .line 635
    .line 636
    move-object/from16 v5, p4

    .line 637
    .line 638
    move-object/from16 v6, p5

    .line 639
    .line 640
    move-object/from16 v7, p6

    .line 641
    .line 642
    move-object/from16 v9, p9

    .line 643
    .line 644
    move-object v10, v12

    .line 645
    move-object v11, v14

    .line 646
    move-object v12, v15

    .line 647
    move-object/from16 v13, p7

    .line 648
    .line 649
    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/integration/defaultImpl/d;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 650
    .line 651
    .line 652
    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 653
    .line 654
    .line 655
    :goto_17
    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
