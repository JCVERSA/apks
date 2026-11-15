.class public final Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->getRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;ZLcom/cloud/tmc/render/IRenderFactory$IRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;",
        "createRenderSuccess",
        "",
        "loadRenderFrameworkSuccess",
        "warmupFail",
        "step",
        "",
        "warmupSuccess",
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


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $context:Ljava/lang/Object;

.field final synthetic $createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

.field final synthetic $createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $data:Landroid/os/Bundle;

.field final synthetic $engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

.field final synthetic $listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

.field final synthetic $loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $node:Lcom/cloud/tmc/kernel/node/Node;

.field final synthetic $pageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/engine/IEngine;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    .line 22
    .line 23
    iput-object p12, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->loadRenderFrameworkSuccess$lambda$0(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->warmupFail$lambda$2(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->warmupSuccess$lambda$1(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final loadRenderFrameworkSuccess$lambda$0(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p8

    .line 6
    .line 7
    move-object/from16 v2, p9

    .line 8
    .line 9
    move-object/from16 v4, p10

    .line 10
    .line 11
    const-string v5, "this$0"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "$pageId"

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v5, "$context"

    .line 24
    .line 25
    move-object/from16 v7, p6

    .line 26
    .line 27
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v5, "$listener"

    .line 31
    .line 32
    move-object/from16 v8, p7

    .line 33
    .line 34
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v5, "$createRenderEndTime"

    .line 38
    .line 39
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v5, "$loadRenderFrameworkStartTime"

    .line 43
    .line 44
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v5, "$loadRenderFrameworkEndTime"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v5, "$data"

    .line 53
    .line 54
    move-object/from16 v15, p11

    .line 55
    .line 56
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    move-object v5, v3

    .line 65
    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v5, v9

    .line 69
    :goto_0
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    :cond_1
    if-nez v9, :cond_2

    .line 76
    .line 77
    const-string v0, "InnerWarmup"

    .line 78
    .line 79
    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    move-object/from16 v5, p2

    .line 86
    .line 87
    move-object/from16 v9, p3

    .line 88
    .line 89
    move-object/from16 v10, p4

    .line 90
    .line 91
    invoke-static {v0, v5, v9, v3, v10}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget-wide v12, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 96
    .line 97
    iget-wide v1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 98
    .line 99
    iget-wide v14, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 100
    .line 101
    move-object/from16 v0, p1

    .line 102
    .line 103
    move-wide/from16 v16, v1

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
    move-object/from16 v4, p4

    .line 112
    .line 113
    move-object/from16 v5, p5

    .line 114
    .line 115
    move-object/from16 v6, p6

    .line 116
    .line 117
    move-object v7, v11

    .line 118
    move-object/from16 v8, p7

    .line 119
    .line 120
    move-wide v9, v12

    .line 121
    move-wide/from16 v11, v16

    .line 122
    .line 123
    move-wide v13, v14

    .line 124
    move-object/from16 v15, p11

    .line 125
    .line 126
    invoke-static/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private static final warmupFail$lambda$2(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p8

    .line 6
    .line 7
    move-object/from16 v2, p9

    .line 8
    .line 9
    move-object/from16 v4, p10

    .line 10
    .line 11
    const-string v5, "this$0"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "$pageId"

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v5, "$context"

    .line 24
    .line 25
    move-object/from16 v7, p6

    .line 26
    .line 27
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v5, "$listener"

    .line 31
    .line 32
    move-object/from16 v8, p7

    .line 33
    .line 34
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v5, "$createRenderEndTime"

    .line 38
    .line 39
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v5, "$loadRenderFrameworkStartTime"

    .line 43
    .line 44
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v5, "$loadRenderFrameworkEndTime"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v5, "$data"

    .line 53
    .line 54
    move-object/from16 v15, p11

    .line 55
    .line 56
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    move-object v5, v3

    .line 65
    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v5, v9

    .line 69
    :goto_0
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    :cond_1
    if-nez v9, :cond_2

    .line 76
    .line 77
    const-string v0, "InnerWarmup"

    .line 78
    .line 79
    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    move-object/from16 v5, p2

    .line 86
    .line 87
    move-object/from16 v9, p3

    .line 88
    .line 89
    move-object/from16 v10, p4

    .line 90
    .line 91
    invoke-static {v0, v5, v9, v3, v10}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget-wide v12, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 96
    .line 97
    iget-wide v1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 98
    .line 99
    iget-wide v14, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 100
    .line 101
    move-object/from16 v0, p1

    .line 102
    .line 103
    move-wide/from16 v16, v1

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
    move-object/from16 v4, p4

    .line 112
    .line 113
    move-object/from16 v5, p5

    .line 114
    .line 115
    move-object/from16 v6, p6

    .line 116
    .line 117
    move-object v7, v11

    .line 118
    move-object/from16 v8, p7

    .line 119
    .line 120
    move-wide v9, v12

    .line 121
    move-wide/from16 v11, v16

    .line 122
    .line 123
    move-wide v13, v14

    .line 124
    move-object/from16 v15, p11

    .line 125
    .line 126
    invoke-static/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private static final warmupSuccess$lambda$1(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p8

    .line 6
    .line 7
    move-object/from16 v2, p9

    .line 8
    .line 9
    move-object/from16 v4, p10

    .line 10
    .line 11
    const-string v5, "this$0"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "$pageId"

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v5, "$context"

    .line 24
    .line 25
    move-object/from16 v7, p6

    .line 26
    .line 27
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v5, "$listener"

    .line 31
    .line 32
    move-object/from16 v8, p7

    .line 33
    .line 34
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v5, "$createRenderEndTime"

    .line 38
    .line 39
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v5, "$loadRenderFrameworkStartTime"

    .line 43
    .line 44
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v5, "$loadRenderFrameworkEndTime"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v5, "$data"

    .line 53
    .line 54
    move-object/from16 v15, p11

    .line 55
    .line 56
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    move-object v5, v3

    .line 65
    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v5, v9

    .line 69
    :goto_0
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    :cond_1
    if-nez v9, :cond_2

    .line 76
    .line 77
    const-string v0, "InnerWarmup"

    .line 78
    .line 79
    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    move-object/from16 v5, p2

    .line 86
    .line 87
    move-object/from16 v9, p3

    .line 88
    .line 89
    move-object/from16 v10, p4

    .line 90
    .line 91
    invoke-static {v0, v5, v9, v3, v10}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget-wide v12, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 96
    .line 97
    iget-wide v1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 98
    .line 99
    iget-wide v14, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 100
    .line 101
    move-object/from16 v0, p1

    .line 102
    .line 103
    move-wide/from16 v16, v1

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
    move-object/from16 v4, p4

    .line 112
    .line 113
    move-object/from16 v5, p5

    .line 114
    .line 115
    move-object/from16 v6, p6

    .line 116
    .line 117
    move-object v7, v11

    .line 118
    move-object/from16 v8, p7

    .line 119
    .line 120
    move-wide v9, v12

    .line 121
    move-wide/from16 v11, v16

    .line 122
    .line 123
    move-wide v13, v14

    .line 124
    move-object/from16 v15, p11

    .line 125
    .line 126
    invoke-static/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public createRenderSuccess()V
    .locals 3

    .line 1
    const-string v0, "InnerWarmup"

    .line 2
    .line 3
    const-string v1, "listener callback => createRenderSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 23
    .line 24
    return-void
.end method

.method public loadRenderFrameworkSuccess()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "InnerWarmup"

    .line 4
    .line 5
    const-string v2, "listener callback => loadRenderFrameworkSuccess"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    const-string v3, "render"

    .line 29
    .line 30
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 40
    .line 41
    iget-object v5, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 42
    .line 43
    iget-object v6, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 44
    .line 45
    iget-object v7, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    .line 46
    .line 47
    iget-object v8, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 48
    .line 49
    iget-object v9, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 50
    .line 51
    iget-object v10, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v11, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v12, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    .line 56
    .line 57
    iget-object v13, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 58
    .line 59
    iget-object v14, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 60
    .line 61
    iget-object v15, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    .line 64
    .line 65
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/f;

    .line 66
    .line 67
    move-object v4, v2

    .line 68
    move-object/from16 v16, v1

    .line 69
    .line 70
    invoke-direct/range {v4 .. v16}, Lcom/cloud/tmc/integration/defaultImpl/f;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public warmupFail(I)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "listener callback => render warmupFail:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "InnerWarmup"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 28
    .line 29
    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 30
    .line 31
    iput-wide v0, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 32
    .line 33
    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 34
    .line 35
    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 46
    .line 47
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    .line 52
    .line 53
    iget-object v13, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    .line 54
    .line 55
    new-instance p1, Lcom/cloud/tmc/integration/defaultImpl/e;

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    invoke-direct/range {v1 .. v13}, Lcom/cloud/tmc/integration/defaultImpl/e;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public warmupSuccess()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "InnerWarmup"

    .line 4
    .line 5
    const-string v2, "listener callback => render warmupSuccess"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    const-string v3, "render"

    .line 29
    .line 30
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 40
    .line 41
    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 48
    .line 49
    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 56
    .line 57
    iget-object v5, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 58
    .line 59
    iget-object v6, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->this$0:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 60
    .line 61
    iget-object v7, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$activity:Landroid/app/Activity;

    .line 62
    .line 63
    iget-object v8, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 64
    .line 65
    iget-object v9, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 66
    .line 67
    iget-object v10, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$pageId:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v11, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$context:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v12, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$listener:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    .line 72
    .line 73
    iget-object v13, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$createRenderEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 74
    .line 75
    iget-object v14, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 76
    .line 77
    iget-object v15, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$loadRenderFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;->$data:Landroid/os/Bundle;

    .line 80
    .line 81
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/g;

    .line 82
    .line 83
    move-object v4, v2

    .line 84
    move-object/from16 v16, v1

    .line 85
    .line 86
    invoke-direct/range {v4 .. v16}, Lcom/cloud/tmc/integration/defaultImpl/g;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
