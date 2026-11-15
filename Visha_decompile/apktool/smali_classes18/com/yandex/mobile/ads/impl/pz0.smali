.class public final Lcom/yandex/mobile/ads/impl/pz0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/pz0$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/yandex/mobile/ads/impl/cy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cy0<",
            "Lcom/monetization/ads/mediation/base/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/oz0;

.field private final d:Lcom/yandex/mobile/ads/impl/nz0;

.field private final e:Lcom/yandex/mobile/ads/impl/ux0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/gy0;)V
    .locals 8

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ms0;->f:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ms0$a;->a()Lcom/yandex/mobile/ads/impl/ms0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ms0;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/cy0;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/cy0;-><init>(Lcom/yandex/mobile/ads/impl/gy0;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/oz0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/oz0;-><init>()V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/nz0;

    invoke-direct {v6, p1}, Lcom/yandex/mobile/ads/impl/nz0;-><init>(Lcom/yandex/mobile/ads/impl/gy0;)V

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/ux0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/ux0;-><init>()V

    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/pz0;-><init>(Lcom/yandex/mobile/ads/impl/gy0;Ljava/util/concurrent/Executor;Lcom/yandex/mobile/ads/impl/cy0;Lcom/yandex/mobile/ads/impl/oz0;Lcom/yandex/mobile/ads/impl/nz0;Lcom/yandex/mobile/ads/impl/ux0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gy0;Ljava/util/concurrent/Executor;Lcom/yandex/mobile/ads/impl/cy0;Lcom/yandex/mobile/ads/impl/oz0;Lcom/yandex/mobile/ads/impl/nz0;Lcom/yandex/mobile/ads/impl/ux0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gy0;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/yandex/mobile/ads/impl/cy0<",
            "Lcom/monetization/ads/mediation/base/a;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/oz0;",
            "Lcom/yandex/mobile/ads/impl/nz0;",
            "Lcom/yandex/mobile/ads/impl/ux0;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, "mediatedAdapterReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "loadingExecutor"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediatedAdapterCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediationNetworkBiddingDataJsonCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bidderTokenLoadingReporter"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediatedAdDataFactory"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pz0;->a:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pz0;->b:Lcom/yandex/mobile/ads/impl/cy0;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pz0;->c:Lcom/yandex/mobile/ads/impl/oz0;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pz0;->d:Lcom/yandex/mobile/ads/impl/nz0;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/pz0;->e:Lcom/yandex/mobile/ads/impl/ux0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/pz0;)Lcom/yandex/mobile/ads/impl/oz0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pz0;->c:Lcom/yandex/mobile/ads/impl/oz0;

    return-object p0
.end method

.method private static final a(Lcom/monetization/ads/mediation/base/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V
    .locals 13

    move-object v9, p1

    move-object v10, p2

    .line 26
    const-string v0, "$context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$extras"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mediationNetwork"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timeoutHolder"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v11, p0

    check-cast v11, Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    new-instance v12, Lcom/yandex/mobile/ads/impl/pz0$b;

    move-object v0, v12

    move-object v3, p1

    move-object/from16 v4, p5

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/pz0$b;-><init>(Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V

    invoke-interface {v11, p1, p2, v12}, Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;->loadBidderToken(Landroid/content/Context;Ljava/util/Map;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoadListener;)V

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/pz0$a;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pz0;->d:Lcom/yandex/mobile/ads/impl/nz0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nz0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x0

    .line 4
    invoke-interface {p6, p0}, Lcom/yandex/mobile/ads/impl/pz0$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/pz0$a;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pz0;->d:Lcom/yandex/mobile/ads/impl/nz0;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/nz0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;)V

    .line 7
    invoke-interface {p5, p4}, Lcom/yandex/mobile/ads/impl/pz0$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic b(Lcom/monetization/ads/mediation/base/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/monetization/ads/mediation/base/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/el;Lcom/yandex/mobile/ads/impl/pz0$a;)V
    .locals 19
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 8
    const-string v0, "context"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetwork"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeoutHolder"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v12, Lcom/yandex/mobile/ads/impl/pz0;->b:Lcom/yandex/mobile/ads/impl/cy0;

    .line 10
    const-class v1, Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {v0, v13, v14, v1}, Lcom/yandex/mobile/ads/impl/cy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 11
    iget-object v0, v12, Lcom/yandex/mobile/ads/impl/pz0;->e:Lcom/yandex/mobile/ads/impl/ux0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string v0, "mediatedAdapter"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/yandex/mobile/ads/impl/tx0;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/tx0;-><init>(Lcom/monetization/ads/mediation/base/a;)V

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v10

    .line 14
    :goto_0
    instance-of v0, v2, Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    if-eqz v0, :cond_2

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 16
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/lz0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_1

    .line 17
    const-string v0, "width"

    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "height"

    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    iget-object v0, v12, Lcom/yandex/mobile/ads/impl/pz0;->a:Ljava/util/concurrent/Executor;

    new-instance v11, Lpqd;

    move-object v1, v11

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object v13, v11

    move-wide/from16 v10, v17

    invoke-direct/range {v1 .. v11}, Lpqd;-><init>(Lcom/monetization/ads/mediation/base/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V

    invoke-interface {v0, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 20
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 21
    iget-object v1, v12, Lcom/yandex/mobile/ads/impl/pz0;->d:Lcom/yandex/mobile/ads/impl/nz0;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/nz0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 22
    invoke-interface {v15, v1}, Lcom/yandex/mobile/ads/impl/pz0$a;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_2
    move-object v1, v10

    if-nez v2, :cond_3

    .line 23
    invoke-interface {v15, v1}, Lcom/yandex/mobile/ads/impl/pz0$a;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 24
    iget-object v1, v12, Lcom/yandex/mobile/ads/impl/pz0;->d:Lcom/yandex/mobile/ads/impl/nz0;

    const-string v5, "Can\'t create bidder token loader."

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/nz0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 25
    invoke-interface {v15, v1}, Lcom/yandex/mobile/ads/impl/pz0$a;->a(Lorg/json/JSONObject;)V

    :goto_3
    return-void
.end method
