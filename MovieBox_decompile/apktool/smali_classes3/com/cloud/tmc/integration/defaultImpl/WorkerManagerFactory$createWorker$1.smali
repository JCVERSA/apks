.class public final Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->createWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;)V
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
        "com/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
        "createWorkerSuccess",
        "",
        "loadWorkerFrameworkSuccess",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $engine:Lcom/cloud/tmc/kernel/engine/IEngine;

.field final synthetic $listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

.field final synthetic $loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $node:Lcom/cloud/tmc/kernel/node/Node;

.field final synthetic $userAgent:Ljava/lang/String;

.field final synthetic $workerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->warmupSuccess$lambda$1(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->loadWorkerFrameworkSuccess$lambda$0(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->warmupFail$lambda$2(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final loadWorkerFrameworkSuccess$lambda$0(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 20

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    move-object/from16 v3, p10

    .line 8
    .line 9
    const-string v4, "this$0"

    .line 10
    .line 11
    move-object/from16 v5, p0

    .line 12
    .line 13
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "$engine"

    .line 17
    .line 18
    move-object/from16 v6, p1

    .line 19
    .line 20
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "$context"

    .line 24
    .line 25
    move-object/from16 v7, p2

    .line 26
    .line 27
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "$node"

    .line 31
    .line 32
    move-object/from16 v8, p3

    .line 33
    .line 34
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "$userAgent"

    .line 38
    .line 39
    move-object/from16 v9, p4

    .line 40
    .line 41
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "$workerId"

    .line 45
    .line 46
    move-object/from16 v10, p5

    .line 47
    .line 48
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "$listener"

    .line 52
    .line 53
    move-object/from16 v11, p6

    .line 54
    .line 55
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v4, "$createWorkerStartTime"

    .line 59
    .line 60
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "$createWorkerEndTime"

    .line 64
    .line 65
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "$loadWorkerFrameworkStartTime"

    .line 69
    .line 70
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "$loadWorkerFrameworkEndTime"

    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v12, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 79
    .line 80
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 81
    .line 82
    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 83
    .line 84
    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 85
    .line 86
    move-wide/from16 v16, v0

    .line 87
    .line 88
    move-wide/from16 v18, v2

    .line 89
    .line 90
    invoke-static/range {v5 .. v19}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final warmupFail$lambda$2(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 20

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    move-object/from16 v3, p10

    .line 8
    .line 9
    const-string v4, "this$0"

    .line 10
    .line 11
    move-object/from16 v5, p0

    .line 12
    .line 13
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "$engine"

    .line 17
    .line 18
    move-object/from16 v6, p1

    .line 19
    .line 20
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "$context"

    .line 24
    .line 25
    move-object/from16 v7, p2

    .line 26
    .line 27
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "$node"

    .line 31
    .line 32
    move-object/from16 v8, p3

    .line 33
    .line 34
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "$userAgent"

    .line 38
    .line 39
    move-object/from16 v9, p4

    .line 40
    .line 41
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "$workerId"

    .line 45
    .line 46
    move-object/from16 v10, p5

    .line 47
    .line 48
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "$listener"

    .line 52
    .line 53
    move-object/from16 v11, p6

    .line 54
    .line 55
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v4, "$createWorkerStartTime"

    .line 59
    .line 60
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "$createWorkerEndTime"

    .line 64
    .line 65
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "$loadWorkerFrameworkStartTime"

    .line 69
    .line 70
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "$loadWorkerFrameworkEndTime"

    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v12, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 79
    .line 80
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 81
    .line 82
    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 83
    .line 84
    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 85
    .line 86
    move-wide/from16 v16, v0

    .line 87
    .line 88
    move-wide/from16 v18, v2

    .line 89
    .line 90
    invoke-static/range {v5 .. v19}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final warmupSuccess$lambda$1(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 20

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    move-object/from16 v3, p10

    .line 8
    .line 9
    const-string v4, "this$0"

    .line 10
    .line 11
    move-object/from16 v5, p0

    .line 12
    .line 13
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "$engine"

    .line 17
    .line 18
    move-object/from16 v6, p1

    .line 19
    .line 20
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "$context"

    .line 24
    .line 25
    move-object/from16 v7, p2

    .line 26
    .line 27
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "$node"

    .line 31
    .line 32
    move-object/from16 v8, p3

    .line 33
    .line 34
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "$userAgent"

    .line 38
    .line 39
    move-object/from16 v9, p4

    .line 40
    .line 41
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "$workerId"

    .line 45
    .line 46
    move-object/from16 v10, p5

    .line 47
    .line 48
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "$listener"

    .line 52
    .line 53
    move-object/from16 v11, p6

    .line 54
    .line 55
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v4, "$createWorkerStartTime"

    .line 59
    .line 60
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "$createWorkerEndTime"

    .line 64
    .line 65
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "$loadWorkerFrameworkStartTime"

    .line 69
    .line 70
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "$loadWorkerFrameworkEndTime"

    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v12, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 79
    .line 80
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 81
    .line 82
    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 83
    .line 84
    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 85
    .line 86
    move-wide/from16 v16, v0

    .line 87
    .line 88
    move-wide/from16 v18, v2

    .line 89
    .line 90
    invoke-static/range {v5 .. v19}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public createWorkerSuccess()V
    .locals 3

    .line 1
    const-string v0, "InnerWarmup"

    .line 2
    .line 3
    const-string v1, "listener callback => createWorkerSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

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

.method public loadWorkerFrameworkSuccess()V
    .locals 15

    .line 1
    const-string v0, "InnerWarmup"

    .line 2
    .line 3
    const-string v1, "listener callback => loadWorkerFrameworkSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

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
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 23
    .line 24
    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    .line 29
    .line 30
    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 31
    .line 32
    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 33
    .line 34
    iget-object v13, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 35
    .line 36
    iget-object v14, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 37
    .line 38
    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/i;

    .line 39
    .line 40
    move-object v3, v0

    .line 41
    invoke-direct/range {v3 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/i;-><init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public warmupFail(I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "listener callback => worker warmupFail:"

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
    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 28
    .line 29
    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 30
    .line 31
    iput-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 32
    .line 33
    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 34
    .line 35
    iput-wide v0, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 36
    .line 37
    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 38
    .line 39
    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 40
    .line 41
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    .line 54
    .line 55
    new-instance p1, Lcom/cloud/tmc/integration/defaultImpl/h;

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/integration/defaultImpl/h;-><init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

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
    .locals 15

    .line 1
    const-string v0, "InnerWarmup"

    .line 2
    .line 3
    const-string v1, "listener callback => worker warmupSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 39
    .line 40
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    .line 47
    .line 48
    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    .line 53
    .line 54
    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 55
    .line 56
    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v13, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 59
    .line 60
    iget-object v14, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 61
    .line 62
    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/j;

    .line 63
    .line 64
    move-object v3, v0

    .line 65
    invoke-direct/range {v3 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/j;-><init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
