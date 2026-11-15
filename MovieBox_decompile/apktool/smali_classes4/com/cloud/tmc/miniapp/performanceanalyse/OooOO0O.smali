.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;,
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final OooO0o0:Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;


# instance fields
.field public OooO00o:J

.field public OooO0O0:J

.field public OooO0OO:Z

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    const-wide/16 v1, 0x1

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 3

    .line 469
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 470
    const-string v1, "PointTrack"

    const-string v2, "tryInitAthena failed!"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final OooO00o(Landroid/os/Bundle;)V
    .locals 8

    .line 429
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_6

    .line 434
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 435
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "openPageTime"

    const-string v4, "17"

    const-string v5, "openType"

    if-eqz v2, :cond_4

    .line 436
    const-string v1, "app"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 438
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 439
    const-string v6, "18"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v1

    :goto_0
    sub-long v5, v1, v5

    .line 440
    const-string v7, "openAppTime"

    invoke-virtual {p1, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 441
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 442
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v1

    :goto_1
    sub-long/2addr v1, v4

    .line 443
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 444
    :cond_4
    const-string v2, "page"

    invoke-virtual {p1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 446
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 447
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v0, :cond_5

    .line 448
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 449
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    move-wide v0, v5

    :goto_2
    sub-long/2addr v5, v0

    .line 450
    invoke-virtual {p1, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 451
    :cond_6
    :goto_3
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final OooO00o(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 454
    :try_start_0
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    const-string v1, "queryShortcutExist"

    .line 456
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, v0, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    .line 457
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 458
    const-string p2, "PointTrack"

    const-string v0, "queryShortcutStatus failed!"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    if-eqz p1, :cond_1

    .line 459
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v2, Lcom/cloud/tmc/integration/model/ForegroundTime;

    if-eqz v1, :cond_0

    .line 460
    :try_start_1
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/ForegroundTime;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 461
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 462
    new-instance v0, Lcom/cloud/tmc/integration/model/ForegroundTime;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;-><init>()V

    .line 463
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->setStartTime()V

    .line 464
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->resetStartCount()V

    .line 465
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->addStartCount()V

    .line 466
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 467
    invoke-interface {p1, v2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 468
    :goto_1
    const-string v0, "PointTrack"

    const-string v1, "startRecordForegroundTime failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 295
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chainStart -> msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pagePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oldChain"

    invoke-static {v7, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 300
    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    const-string v6, "appId"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    .line 301
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 302
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 303
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 304
    const-string v20, ""

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    move-object v6, v13

    move-object v7, v5

    move-object/from16 v25, v13

    move/from16 v13, v16

    move-object/from16 v26, v14

    move/from16 v14, v17

    move-object/from16 v27, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    invoke-direct/range {v6 .. v21}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    .line 305
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v27, v15

    .line 306
    :goto_0
    const-string v6, "app"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v15, 0x1

    if-eqz v6, :cond_2

    .line 307
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 309
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v15, :cond_1

    goto/16 :goto_d

    .line 310
    :cond_1
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_18

    .line 311
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_18

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto/16 :goto_d

    .line 313
    :cond_2
    const-string v6, "page"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v3, v27

    if-eqz v3, :cond_18

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_d

    .line 315
    :cond_3
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    const/16 v16, 0x0

    if-eqz v6, :cond_4

    .line 316
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    goto :goto_1

    :cond_4
    move-object/from16 v6, v16

    :goto_1
    if-eqz v6, :cond_5

    .line 317
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v15, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    .line 318
    const-string v7, "pagePath"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    .line 319
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 320
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 321
    const-string v13, ""

    const-string v17, ""

    const-string v9, ""

    const-string v12, ""

    move-object v7, v14

    move-object v8, v3

    move-object v15, v14

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    .line 323
    :cond_6
    :goto_2
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "<set-?>"

    if-eqz v7, :cond_9

    .line 324
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 325
    iget-object v9, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_7

    .line 326
    iget-object v9, v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v9, :cond_7

    .line 327
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto :goto_3

    :cond_7
    move-object/from16 v9, v16

    :goto_3
    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    const-string v10, "renderId"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object v7, v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0:Ljava/lang/String;

    .line 330
    :cond_9
    :goto_4
    const-string v7, "21"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "navigationType"

    if-eqz v7, :cond_b

    .line 331
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 332
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v10, :cond_b

    .line 333
    iget-object v10, v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v10, :cond_b

    .line 334
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v10, :cond_b

    if-nez v7, :cond_a

    move-object v7, v4

    .line 335
    :cond_a
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iput-object v7, v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0oO:Ljava/lang/String;

    :cond_b
    if-eqz v6, :cond_c

    .line 337
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto :goto_5

    :cond_c
    move-object/from16 v6, v16

    :goto_5
    if-eqz v6, :cond_d

    .line 338
    iget-object v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO:Ljava/util/Map;

    if-eqz v7, :cond_d

    .line 339
    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v6, :cond_e

    .line 340
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO:Ljava/util/Map;

    if-eqz v6, :cond_e

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 342
    :cond_e
    :goto_6
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v6, :cond_f

    .line 343
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    goto :goto_7

    :cond_f
    move-object/from16 v6, v16

    :goto_7
    if-nez v6, :cond_15

    .line 344
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v6, :cond_10

    goto :goto_8

    .line 345
    :cond_10
    iput-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 346
    :goto_8
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v6, :cond_11

    goto :goto_9

    .line 347
    :cond_11
    const-string v7, "pageRandomId"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    move-object v7, v4

    .line 348
    :cond_12
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iput-object v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 350
    :goto_9
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v6, :cond_13

    goto :goto_b

    .line 351
    :cond_13
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    move-object v4, v2

    .line 352
    :goto_a
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iput-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 354
    :cond_15
    :goto_b
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_16

    .line 355
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    goto :goto_c

    :cond_16
    move-object/from16 v2, v16

    .line 356
    :goto_c
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_17

    .line 357
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_17

    .line 358
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    goto :goto_d

    .line 359
    :cond_17
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_18

    .line 360
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_18

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    nop

    :cond_18
    :goto_d
    return-void
.end method

.method public OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 49

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    const-string v1, "miniapp_start"

    const-string v2, "0"

    const-string v3, "reportPagePath"

    const-string v4, "pagePath"

    const-string v5, "appId"

    const-string v10, "page"

    const-string v11, "pageRandomId"

    const-string v12, "offScreenRender"

    const-string v13, "appDomContentLoadedStatus"

    const-string v14, "appH5ProgressStatus"

    const-string v15, "chainEndData"

    move-object/from16 v17, v1

    const-string v1, "chainStartData"

    move-object/from16 v18, v2

    const-string v2, "false"

    move-object/from16 v19, v3

    const-string v3, "app_launcher_status"

    move-object/from16 v20, v4

    const-string v4, "app"

    move-object/from16 v21, v5

    const-string v5, "2"

    const-string v22, "miniapp_download"

    move-object/from16 v23, v5

    const-string v5, "100"

    move-object/from16 v24, v5

    const-string v5, "chain_id_"

    move-object/from16 v25, v5

    const-string v5, "target"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO0O0;->OooO00o:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    aget v0, v0, v26

    const-string v8, "navigationType"

    move-object/from16 v26, v10

    const-string v10, "zipAppMode"

    move-object/from16 p4, v8

    const-string v8, "zipFrameworkMode"

    move-object/from16 v27, v11

    const-string v11, "downloadAppMode"

    move-object/from16 v28, v12

    const-string v12, "downloadFrameworkMode"

    move-object/from16 v29, v13

    const-string v13, "page_path"

    move-object/from16 v30, v14

    const-string v14, ", reportPagePath:"

    move-object/from16 v31, v10

    const-string v10, ", pagePath:"

    move-object/from16 v32, v8

    const-string v8, ", type:"

    move-object/from16 v33, v11

    const-string v11, "oldChain"

    const-class v34, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    const-string v35, "miniapp_exposure"

    move-object/from16 v36, v12

    const-string v12, "status"

    const-string v37, "miniapp_package_update"

    const/16 v38, -0x1

    const-string v39, "miniapp_click"

    const/16 v40, 0x0

    move-object/from16 v41, v12

    const-string v12, "object_id"

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    .line 5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    :goto_1
    const-wide/16 v4, 0x0

    goto/16 :goto_45

    :pswitch_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-add-noshow"

    :goto_2
    move-object/from16 v39, v1

    :goto_3
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v44, 0x0

    move-object v9, v5

    :goto_5
    const-wide/16 v4, 0x0

    goto/16 :goto_46

    .line 6
    :pswitch_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-add-click"

    goto :goto_2

    .line 7
    :pswitch_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-toast-add-ex"

    goto :goto_2

    .line 8
    :pswitch_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-add-ex"

    goto :goto_2

    .line 9
    :pswitch_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_offline_click"

    goto :goto_2

    .line 10
    :pswitch_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_offline_app_ex"

    goto :goto_2

    .line 11
    :pswitch_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_offline_ex"

    goto :goto_2

    .line 12
    :pswitch_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "preStrategyFail"

    goto :goto_2

    .line 13
    :pswitch_8
    const-string v0, "27"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    .line 14
    :pswitch_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "getPreHtmlHit"

    goto :goto_2

    .line 15
    :pswitch_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "getPreHtml"

    goto :goto_2

    .line 16
    :pswitch_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "preRequestHtmlRet"

    goto :goto_2

    .line 17
    :pswitch_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "preRequestHtml"

    goto :goto_2

    .line 18
    :pswitch_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "addMiniAppToDesktop"

    goto :goto_2

    .line 19
    :pswitch_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "privacy_click"

    goto :goto_2

    .line 20
    :pswitch_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "privacy_ex"

    goto :goto_2

    .line 21
    :pswitch_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_addmc_ex"

    goto :goto_2

    .line 22
    :pswitch_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_addmc_click"

    goto :goto_2

    .line 23
    :pswitch_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_banner_click"

    goto :goto_2

    .line 24
    :pswitch_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_banner_ex"

    goto :goto_2

    .line 25
    :pswitch_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "Pinforlater_click"

    goto :goto_2

    .line 26
    :pswitch_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "Pinforlater_ex"

    goto :goto_2

    .line 27
    :pswitch_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "mini_open_page_action"

    goto :goto_2

    .line 28
    :pswitch_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_hot_open"

    goto/16 :goto_2

    .line 29
    :pswitch_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_get_odid"

    goto/16 :goto_2

    .line 30
    :pswitch_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_foreground_time"

    goto/16 :goto_2

    .line 31
    :pswitch_1a
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 32
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    .line 33
    :pswitch_1b
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 34
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    .line 35
    :pswitch_1c
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0OO(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 36
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    .line 37
    :pswitch_1d
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 38
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    .line 39
    :pswitch_1e
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 40
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_1f
    if-eqz v9, :cond_7

    .line 41
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 42
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    goto/16 :goto_3c

    :pswitch_20
    if-eqz v9, :cond_7

    .line 43
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 44
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_21
    if-eqz v9, :cond_7

    .line 45
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 46
    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_22
    if-eqz v9, :cond_7

    .line 47
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 48
    :cond_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    .line 49
    :pswitch_23
    const-string v0, "907"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_6
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v39, v37

    goto/16 :goto_4

    .line 50
    :pswitch_24
    const-string v0, "906"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    .line 51
    :pswitch_25
    const-string v0, "905"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    .line 52
    :pswitch_26
    const-string v0, "904"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    .line 53
    :pswitch_27
    const-string v0, "903"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    .line 54
    :pswitch_28
    const-string v0, "902"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    .line 55
    :pswitch_29
    const-string v0, "901"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    .line 56
    :pswitch_2a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_get_package_file"

    goto/16 :goto_2

    .line 57
    :pswitch_2b
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaId"

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "privacy_policy_click"

    goto/16 :goto_2

    .line 58
    :pswitch_2c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_log_e"

    goto/16 :goto_2

    .line 59
    :pswitch_2d
    invoke-virtual {v6, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "mini_h5_onPageFinished"

    goto/16 :goto_2

    :pswitch_2e
    if-eqz v9, :cond_31

    .line 60
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v15

    .line 63
    sget-object v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v15, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v37, v2

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v46, v3

    const-string v3, "chainClear -> msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v11, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v15, v7

    .line 67
    :cond_b
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 68
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object/from16 v0, v40

    .line 69
    :goto_7
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v2

    goto :goto_8

    :cond_d
    move-object/from16 v2, v40

    .line 70
    :goto_8
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_e
    move-object/from16 v3, v40

    :goto_9
    if-eqz v0, :cond_10

    .line 71
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_10

    if-eqz v2, :cond_10

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_10

    .line 72
    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 73
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v40

    :cond_f
    move-object/from16 v2, v40

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->clear(Ljava/lang/String;)V

    .line 74
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 75
    :cond_10
    const-string v3, "203"

    invoke-virtual {v5, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v13, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v43

    move-object/from16 v3, v46

    .line 77
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 78
    :try_start_1
    const-string v3, "app_launcher_fail_reason"

    .line 79
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v8, v42

    .line 80
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    move-object/from16 v10, v24

    .line 81
    invoke-static {v10, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v7, 0x2

    new-array v7, v7, [Lkotlin/Pair;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v2, v7, v0

    .line 82
    invoke-static {v7}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 83
    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :catchall_0
    :try_start_2
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo()I

    move-result v0

    move-object/from16 v2, v36

    goto :goto_a

    :cond_11
    move-object/from16 v2, v36

    move/from16 v0, v38

    .line 87
    :goto_a
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO()I

    move-result v0

    move-object/from16 v3, v33

    goto :goto_b

    :cond_12
    move-object/from16 v3, v33

    move/from16 v0, v38

    :goto_b
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o()I

    move-result v0

    move-object/from16 v11, v32

    goto :goto_c

    :cond_13
    move-object/from16 v11, v32

    move/from16 v0, v38

    :goto_c
    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O()I

    move-result v38

    :cond_14
    move-object/from16 v14, v31

    move/from16 v0, v38

    invoke-virtual {v5, v14, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v7, v30

    goto :goto_e

    :cond_16
    :goto_d
    move-object/from16 v7, v30

    move-object/from16 v0, v37

    :goto_e
    invoke-virtual {v5, v7, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v15, v29

    goto :goto_10

    :cond_18
    :goto_f
    move-object/from16 v15, v29

    move-object/from16 v0, v37

    :goto_10
    invoke-virtual {v5, v15, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO()Z

    move-result v8

    move-object/from16 v0, v28

    goto :goto_11

    :cond_19
    move-object/from16 v0, v28

    const/4 v8, 0x0

    :goto_11
    invoke-virtual {v5, v0, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, v27

    .line 94
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 95
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1a
    move-object/from16 v2, v40

    .line 96
    :goto_12
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1b
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo()Ljava/lang/String;

    move-result-object v40

    :cond_1c
    move-object/from16 v2, p4

    move-object/from16 v0, v40

    .line 98
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_1a

    :cond_1e
    move-object/from16 v10, v24

    move-object/from16 v9, v26

    move-object/from16 v14, v31

    move-object/from16 v11, v32

    move-object/from16 v3, v33

    move-object/from16 v2, v36

    move-object/from16 v8, v42

    move-object/from16 v4, v43

    .line 100
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 101
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1f
    move-object/from16 v0, v40

    :goto_13
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 102
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto/16 :goto_1c

    .line 103
    :cond_20
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    :cond_21
    move-object/from16 v0, v40

    .line 104
    :goto_14
    iget-object v9, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_22

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_22

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v9, :cond_22

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO00o()Ljava/util/Map;

    move-result-object v9

    goto :goto_15

    :cond_22
    move-object/from16 v9, v40

    :goto_15
    if-eqz v0, :cond_24

    move-object/from16 v31, v14

    .line 105
    sget-object v14, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v32, v11

    const/4 v11, 0x1

    if-ne v14, v11, :cond_25

    if-eqz v9, :cond_25

    sget-object v14, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-ne v14, v11, :cond_25

    .line 106
    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 107
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v40

    :cond_23
    move-object/from16 v2, v40

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->clear(Ljava/lang/String;)V

    .line 108
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v32, v11

    move-object/from16 v31, v14

    .line 109
    :cond_25
    const-string v11, "204"

    invoke-virtual {v5, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v13, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v11, "open_page_status"

    invoke-virtual {v5, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 112
    :try_start_3
    const-string v4, "open_page_fail_reason"

    .line 113
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 114
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 115
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lkotlin/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v16, 0x0

    :try_start_4
    aput-object v0, v9, v16

    const/4 v0, 0x1

    aput-object v8, v9, v0

    .line 116
    invoke-static {v9}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 117
    invoke-virtual {v11, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v5, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_16

    :catchall_1
    const/16 v16, 0x0

    .line 120
    :catchall_2
    :goto_16
    :try_start_5
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo()I

    move-result v0

    goto :goto_17

    :cond_26
    move/from16 v0, v38

    .line 121
    :goto_17
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v0, "pageH5ProgressStatus"

    .line 123
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_28

    :cond_27
    move-object/from16 v2, v37

    .line 124
    :cond_28
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "pageDomContentLoadedStatus"

    .line 126
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    :cond_29
    move-object/from16 v2, v37

    .line 127
    :cond_2a
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO()I

    move-result v0

    goto :goto_18

    :cond_2b
    move/from16 v0, v38

    :goto_18
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o()I

    move-result v0

    move-object/from16 v2, v32

    goto :goto_19

    :cond_2c
    move-object/from16 v2, v32

    move/from16 v0, v38

    :goto_19
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O()I

    move-result v38

    :cond_2d
    move-object/from16 v2, v31

    move/from16 v0, v38

    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0Oo()Ljava/lang/String;

    move-result-object v40

    :cond_2e
    move-object/from16 v2, p4

    move-object/from16 v0, v40

    .line 132
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    .line 134
    :cond_2f
    :goto_1a
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 137
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object v9, v5

    move/from16 v1, v16

    move-object/from16 v39, v35

    move-object/from16 v19, v37

    :goto_1b
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v44, 0x0

    goto/16 :goto_46

    :catchall_3
    :cond_30
    :goto_1c
    return-void

    :cond_31
    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object/from16 v19, v2

    move-object v9, v5

    move-object/from16 v3, v35

    :goto_1d
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_47

    :pswitch_2f
    move-object/from16 v37, v2

    const/16 v16, 0x0

    .line 138
    invoke-virtual {v6, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0(Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object v9, v5

    move/from16 v1, v16

    move-object/from16 v19, v37

    const/4 v2, 0x1

    goto/16 :goto_1

    :pswitch_30
    move-object/from16 v47, p4

    move-object/from16 v37, v2

    move-object v1, v9

    move-object/from16 v9, v26

    move-object/from16 v0, v28

    move-object/from16 v7, v32

    move-object/from16 v15, v33

    move-object/from16 v2, v36

    const/16 v16, 0x0

    if-eqz v1, :cond_54

    move-object/from16 v32, v7

    .line 139
    :try_start_6
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    move-object/from16 v33, v15

    move-object/from16 v15, v37

    invoke-virtual {v5, v7, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v36, v2

    .line 140
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v2, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v0

    .line 141
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v0, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v3

    .line 142
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v3, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v15

    .line 143
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v13

    const-string v13, "chainEnd -> msg:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 144
    invoke-static {v11, v13}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_32

    move-object v13, v0

    goto :goto_1e

    :cond_32
    move-object v13, v3

    .line 146
    :goto_1e
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 147
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 148
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_1f

    :cond_33
    const-wide/16 v22, 0x0

    :goto_1f
    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 150
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_34
    const/4 v9, 0x1

    goto/16 :goto_23

    .line 151
    :cond_35
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 152
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    .line 153
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_20

    :cond_36
    const-wide/16 v22, 0x0

    :goto_20
    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 155
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 156
    :cond_37
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_38
    move-object/from16 v3, v40

    :goto_21
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3a

    .line 157
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_22

    :cond_39
    const-wide/16 v22, 0x0

    :goto_22
    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 159
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 160
    :cond_3a
    :goto_23
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_3b
    move-object/from16 v3, v40

    :goto_24
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    move-object/from16 v3, v21

    .line 161
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v20

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, v19

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object/from16 v0, p0

    const-wide/16 v7, 0x0

    move-object v1, v2

    move-object/from16 v19, v37

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v4, p1

    move-object v11, v5

    move v10, v9

    move/from16 v9, v16

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object v9, v11

    goto/16 :goto_39

    :cond_3c
    move-object/from16 v15, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v19, v37

    move-object/from16 v48, v5

    move-object v5, v1

    move-object/from16 v1, v48

    .line 162
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    iget-object v9, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_3d

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v9

    goto :goto_25

    :cond_3d
    move-object/from16 v9, v40

    :goto_25
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 163
    iget-object v9, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_3f

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO()Z

    move-result v9

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_3e

    .line 164
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v9, v16

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    move-object/from16 v4, p1

    move-object v15, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    goto/16 :goto_39

    :cond_3e
    move-object v3, v0

    move-object v15, v5

    move-object/from16 v9, v16

    goto :goto_26

    :cond_3f
    move-object v3, v0

    move-object v9, v1

    move-object v15, v5

    .line 165
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportApp -> msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;)V

    move-object/from16 v0, p1

    .line 168
    invoke-virtual {v6, v9, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o()V

    .line 170
    const-string v1, "300"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v25, v8

    goto :goto_27

    :cond_40
    move-object/from16 v8, v25

    .line 174
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_28
    move-object/from16 v1, p4

    goto :goto_29

    :cond_41
    move-object/from16 v8, v25

    goto :goto_28

    .line 175
    :goto_29
    invoke-virtual {v9, v1, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_45

    .line 176
    const-class v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 177
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 178
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2a

    :cond_42
    move-object/from16 v1, v40

    .line 179
    :goto_2a
    instance-of v4, v1, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz v4, :cond_43

    check-cast v1, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    goto :goto_2b

    :cond_43
    move-object/from16 v1, v40

    :goto_2b
    if-eqz v1, :cond_44

    .line 180
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMStarted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2c

    :cond_44
    move-object/from16 v1, v40

    .line 181
    :goto_2c
    const-string v4, "isForeground"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    :cond_45
    const-string v1, "true"

    move-object/from16 v4, v46

    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO()Z

    move-result v5

    move-object/from16 v1, v28

    goto :goto_2d

    :cond_46
    move-object/from16 v1, v28

    const/4 v5, 0x0

    :goto_2d
    invoke-virtual {v9, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo()I

    move-result v1

    move-object/from16 v4, v36

    goto :goto_2e

    :cond_47
    move-object/from16 v4, v36

    move/from16 v1, v38

    :goto_2e
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO()I

    move-result v1

    move-object/from16 v4, v33

    goto :goto_2f

    :cond_48
    move-object/from16 v4, v33

    move/from16 v1, v38

    :goto_2f
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o()I

    move-result v1

    move-object/from16 v4, v32

    goto :goto_30

    :cond_49
    move-object/from16 v4, v32

    move/from16 v1, v38

    :goto_30
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O()I

    move-result v38

    :cond_4a
    move-object/from16 v4, v31

    move/from16 v1, v38

    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 189
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    goto :goto_32

    :cond_4b
    :goto_31
    move-object/from16 v4, v30

    goto :goto_33

    :cond_4c
    :goto_32
    move-object/from16 v1, v19

    goto :goto_31

    .line 190
    :goto_33
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4d

    goto :goto_35

    :cond_4d
    :goto_34
    move-object/from16 v4, v29

    goto :goto_36

    :cond_4e
    :goto_35
    move-object/from16 v1, v19

    goto :goto_34

    .line 192
    :goto_36
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationTime:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 195
    iget-object v5, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    :cond_4f
    move-object/from16 v5, v40

    :goto_37
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 196
    invoke-virtual {v9, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 197
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationNum:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 199
    iget-object v5, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_50

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v5

    goto :goto_38

    :cond_50
    move-object/from16 v5, v40

    :goto_38
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalNum(Ljava/lang/String;)I

    move-result v4

    .line 200
    invoke-virtual {v9, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0Oo()Ljava/lang/String;

    move-result-object v40

    :cond_51
    move-object/from16 v1, v40

    move-object/from16 v3, v47

    .line 202
    invoke-virtual {v9, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v1, :cond_52

    goto :goto_39

    :cond_52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o(Z)V

    .line 204
    :goto_39
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 206
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 207
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_time"

    :goto_3a
    move-object/from16 v39, v1

    :goto_3b
    const/4 v1, 0x0

    goto/16 :goto_1b

    :catchall_4
    :cond_53
    return-void

    :cond_54
    move-object/from16 v0, p1

    move-object v15, v1

    move-object v9, v5

    move-object/from16 v19, v37

    :goto_3c
    move-object/from16 v3, v19

    goto/16 :goto_1d

    :pswitch_31
    move-object v15, v9

    move-object v9, v5

    if-eqz v15, :cond_55

    .line 208
    invoke-virtual {v6, v15, v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_55
    return-void

    :pswitch_32
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 210
    const-string v1, "600"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_fps"

    goto :goto_3a

    :pswitch_33
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 211
    const-string v1, "202"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3d
    move-object/from16 v39, v35

    goto :goto_3b

    :pswitch_34
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v24

    move-object v9, v5

    .line 212
    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "1"

    move-object/from16 v2, v41

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3e
    move-object/from16 v39, v22

    goto :goto_3b

    :pswitch_35
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v41

    move-object v9, v5

    .line 214
    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    .line 215
    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3e

    :pswitch_36
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v41

    move-object v9, v5

    .line 216
    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 217
    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3e

    :pswitch_37
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    move-object v9, v5

    .line 218
    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "3"

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3f
    move-object/from16 v39, v17

    goto/16 :goto_3b

    :pswitch_38
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v3, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    move-object v9, v5

    .line 220
    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3f

    :pswitch_39
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 222
    const-string v1, "26"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3a
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 224
    const-string v1, "25"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3b
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 226
    const-string v1, "24"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3c
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 228
    const-string v1, "23"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3d
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 230
    const-string v1, "22"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3e
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 232
    const-string v1, "21"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3f
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 234
    const-string v1, "20"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_40
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 236
    const-string v1, "19"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_41
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 238
    const-string v1, "18"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_42
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 240
    const-string v1, "17"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_43
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 242
    const-string v1, "16"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_44
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 244
    const-string v1, "15"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_45
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 246
    const-string v1, "14"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_46
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 248
    const-string v1, "13"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_47
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 250
    const-string v1, "12"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_48
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 252
    const-string v1, "11"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_49
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 254
    const-string v1, "10"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_4a
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 256
    const-string v1, "9"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_4b
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 258
    const-string v1, "200"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3d

    :pswitch_4c
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 259
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_sdkInit"

    goto/16 :goto_3a

    :pswitch_4d
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v1, v3

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_40
    move-wide/from16 v44, v1

    move-object/from16 v39, v19

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_5

    :pswitch_4e
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v1, v3

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_40

    :pswitch_4f
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    move-object v9, v5

    .line 262
    iput-boolean v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0OO:Z

    .line 263
    iget-wide v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    :goto_41
    sub-long/2addr v2, v7

    goto :goto_42

    .line 265
    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    goto :goto_41

    .line 266
    :goto_42
    const-string v7, "201"

    invoke-virtual {v9, v12, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "render_time"

    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-wide/from16 v44, v2

    move-object/from16 v39, v35

    const/4 v2, 0x1

    goto/16 :goto_46

    :pswitch_50
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    move-object v9, v5

    const-wide/16 v4, 0x0

    .line 268
    iget-boolean v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0OO:Z

    if-nez v2, :cond_57

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    :cond_57
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v2, 0x1

    goto :goto_45

    :pswitch_51
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    .line 270
    iput-boolean v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0OO:Z

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_45

    :pswitch_52
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v7, v10

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_43
    move-wide/from16 v44, v7

    :goto_44
    move-object/from16 v39, v19

    goto :goto_46

    :pswitch_53
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v7, v10

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_43

    :pswitch_54
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    .line 275
    iput-wide v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_45
    move-wide/from16 v44, v4

    goto :goto_44

    :goto_46
    move-object/from16 v3, v39

    move-wide/from16 v7, v44

    :goto_47
    if-eqz v15, :cond_58

    .line 276
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_58

    .line 277
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-\u4fe1\u606f:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_48

    :cond_58
    move-object/from16 v10, v19

    :goto_48
    cmp-long v4, v7, v4

    if-lez v4, :cond_59

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-\u8017\u65f6:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_59
    if-lez v4, :cond_5a

    .line 279
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_RENDER_T1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-object/from16 v7, p2

    if-ne v7, v5, :cond_5b

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 280
    const-string v12, "-"

    const-string v13, ""

    const/4 v14, 0x0

    move-object v11, v10

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    goto :goto_49

    :cond_5a
    move-object/from16 v7, p2

    :cond_5b
    :goto_49
    if-eqz v0, :cond_5c

    .line 281
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->getDes()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    :cond_5c
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->getDes()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4a

    .line 282
    :goto_4b
    const-class v8, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v8}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 283
    const-class v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->getData()Ljava/util/HashMap;

    move-result-object v10

    if-eqz v10, :cond_60

    .line 285
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    const-string v11, "it.entries"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5d
    :goto_4c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 288
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_5e

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 289
    :cond_5e
    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_5d

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4c

    .line 290
    :cond_5f
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 291
    :cond_60
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 292
    invoke-interface {v8, v0, v3, v9}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v4, :cond_61

    move v1, v2

    .line 293
    :cond_61
    const-string v0, "TmcPerferenceAnalyse"

    invoke-static {v0, v5, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    invoke-static {v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/a;->a(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 362
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPage -> appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", miniappId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reportPagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    const-string v2, "oldChain"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p3, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :try_start_1
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 367
    :try_start_2
    const-string v2, "PointTrack"

    const-string v3, "tryInitAthena failed!"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    :goto_0
    const-string v1, "object_id"

    const-string v2, "300"

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, "chain_id_"

    if-eqz v1, :cond_0

    .line 370
    :try_start_3
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0Oo:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 374
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 375
    :cond_0
    const-string v1, "page_path"

    invoke-virtual {p3, v1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string p5, "open_page_status"

    const-string v1, "true"

    invoke-virtual {p3, p5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x0

    if-eqz p4, :cond_4

    .line 377
    const-class v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 378
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 379
    invoke-interface {v1, p4}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p4

    goto :goto_2

    :cond_1
    move-object p4, p5

    .line 380
    :goto_2
    instance-of v1, p4, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz v1, :cond_2

    check-cast p4, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    goto :goto_3

    :cond_2
    move-object p4, p5

    :goto_3
    if-eqz p4, :cond_3

    .line 381
    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMStarted()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_4

    :cond_3
    move-object p4, p5

    .line 382
    :goto_4
    const-string v1, "isForeground"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_4
    const-string p4, "downloadFrameworkMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    .line 384
    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    goto :goto_5

    :cond_5
    move v1, v3

    .line 385
    :goto_5
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 386
    const-string p4, "pageH5ProgressStatus"

    .line 387
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, ""

    if-eqz v1, :cond_6

    .line 388
    :try_start_4
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 389
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_6

    .line 390
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0:Ljava/lang/String;

    if-nez v1, :cond_7

    :cond_6
    move-object v1, v4

    .line 391
    :cond_7
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string p4, "pageDomContentLoadedStatus"

    .line 393
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_9

    .line 394
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 395
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_9

    .line 396
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v1

    .line 397
    :cond_9
    :goto_6
    invoke-virtual {p3, p4, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string p4, "downloadAppMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_a

    .line 399
    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    goto :goto_7

    :cond_a
    move v1, v3

    .line 400
    :goto_7
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string p4, "zipFrameworkMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_b

    .line 402
    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    goto :goto_8

    :cond_b
    move v1, v3

    .line 403
    :goto_8
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string p4, "zipAppMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_c

    .line 405
    iget v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 406
    :cond_c
    invoke-virtual {p3, p4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 407
    sget-object p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 408
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 409
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_d

    .line 410
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v3, :cond_d

    .line 411
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v3, :cond_d

    .line 412
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0:Ljava/lang/String;

    goto :goto_9

    :cond_d
    move-object v3, p5

    .line 413
    :goto_9
    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalTime(Ljava/lang/String;)J

    move-result-wide v3

    .line 414
    invoke-virtual {p3, p4, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 415
    sget-object p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationNum:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 416
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 417
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_e

    .line 418
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_e

    .line 419
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_e

    .line 420
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object v1, p5

    .line 421
    :goto_a
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalNum(Ljava/lang/String;)I

    move-result v0

    .line 422
    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string p4, "navigationType"

    .line 424
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz p1, :cond_f

    .line 425
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz p1, :cond_f

    .line 426
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz p1, :cond_f

    .line 427
    iget-object p5, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0oO:Ljava/lang/String;

    .line 428
    :cond_f
    invoke-virtual {p3, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-void
.end method

.method public final OooO0O0(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v3, "app"

    .line 25
    .line 26
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const-string v4, "<set-?>"

    .line 31
    .line 32
    if-eqz v3, :cond_7

    .line 33
    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    .line 41
    .line 42
    if-eqz v1, :cond_9

    .line 43
    .line 44
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_FRAMEWORK_MODE:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_FRAMEWORK_MODE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_FRAMEWORK_MODE:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_FRAMEWORK_MODE:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_3
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_APP_MODE:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_APP_MODE:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_4
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v0, "bundle.getString(APP_H5_PROGRESS_STATUS, \"\")"

    .line 135
    .line 136
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_5
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const-string v0, "bundle.getString(APP_DOMCONTENTLOADED_STATUS, \"\")"

    .line 161
    .line 162
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :cond_6
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput-boolean p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_7
    const-string v3, "page"

    .line 190
    .line 191
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_9

    .line 196
    .line 197
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    .line 204
    .line 205
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    .line 210
    .line 211
    if-eqz v2, :cond_9

    .line 212
    .line 213
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 214
    .line 215
    if-eqz v2, :cond_9

    .line 216
    .line 217
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    .line 222
    .line 223
    if-eqz v1, :cond_9

    .line 224
    .line 225
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_8

    .line 232
    .line 233
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v0, "bundle.getString(PAGE_H5_PROGRESS_STATUS, \"\")"

    .line 240
    .line 241
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0:Ljava/lang/String;

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_8
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_9

    .line 257
    .line 258
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v0, "bundle.getString(PAGE_DOMCONTENTLOADED_STATUS, \"\")"

    .line 265
    .line 266
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v1, "chainInsert fail:"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_9
    :goto_1
    return-void
.end method
