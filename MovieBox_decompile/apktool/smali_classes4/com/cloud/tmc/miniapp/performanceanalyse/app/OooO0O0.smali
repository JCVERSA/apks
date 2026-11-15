.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

.field public static final OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(II)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, "h5PointTrack"

    const-string v7, "appOpenPointData"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "data"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportAppOpenSuccess =======> appOpenPointData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    :try_start_0
    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0o:Z

    if-eqz v7, :cond_0

    return-void

    .line 82
    :cond_0
    const-string v7, "openMiniAppResult"

    const-string v8, "true"

    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0oO:I

    if-eq v7, v3, :cond_2

    .line 84
    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0oo:I

    if-eq v7, v3, :cond_2

    .line 85
    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO:I

    if-eq v7, v3, :cond_2

    .line 86
    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0:I

    if-ne v7, v3, :cond_1

    goto :goto_0

    :cond_1
    move v7, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    :goto_0
    move v7, v3

    .line 87
    :goto_1
    const-string v8, "syncType"

    invoke-virtual {v1, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v7, "openMiniAppFailedReason"

    invoke-virtual {v1, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v7, "maxStage"

    const/16 v8, 0x11

    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v7, "isExitInStage"

    invoke-virtual {v1, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move v11, v4

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_2
    const/16 v9, 0x12

    if-ge v11, v9, :cond_8

    .line 93
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 95
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_3

    :cond_3
    const-wide/16 v16, 0x0

    .line 96
    :goto_3
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 97
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_4

    :cond_4
    const-wide/16 v18, 0x0

    .line 98
    :goto_4
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 99
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_5

    :cond_5
    const-wide/16 v20, 0x0

    :goto_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-array v10, v3, [J

    aput-wide v16, v10, v2

    aput-wide v18, v10, v4

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v11, v4, :cond_7

    if-eq v11, v8, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v14, v18

    goto :goto_6

    :cond_7
    move-wide/from16 v12, v16

    :goto_6
    add-int/2addr v11, v4

    goto :goto_2

    .line 101
    :cond_8
    const-string v3, "stageCostTime"

    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "stageRangeTime"

    invoke-static {v7}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "page_path"

    .line 104
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 105
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-boolean v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOOO0:Z

    .line 107
    iput-boolean v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0o:Z

    .line 108
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 109
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 110
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO00o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    const-class v4, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 112
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 113
    invoke-interface {v4, v3}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 114
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v7, "start_main_first_time"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_7

    :cond_9
    const-wide/16 v7, 0x0

    :goto_7
    if-eqz v4, :cond_a

    .line 115
    :try_start_2
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v9, "start_mini_first_time"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_1
    :goto_8
    const-wide/16 v9, 0x0

    goto :goto_a

    :cond_a
    const-wide/16 v9, 0x0

    :goto_9
    if-eqz v4, :cond_b

    .line 116
    :try_start_3
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v5, "mini_process_alive"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_b
    :goto_a
    const-wide/16 v4, 0x0

    goto :goto_b

    :catchall_3
    const-wide/16 v7, 0x0

    goto :goto_8

    :goto_b
    cmp-long v11, v7, v4

    if-eqz v11, :cond_c

    .line 117
    :try_start_4
    const-string v4, "mini_first_time"

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_c
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-eqz v4, :cond_d

    .line 118
    const-string v5, "mini_second_time"

    invoke-virtual {v1, v5, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    if-eqz v11, :cond_e

    .line 119
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firstStartTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v12, v7

    goto :goto_c

    :cond_e
    if-eqz v4, :cond_f

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondStartTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v12, v9

    goto :goto_c

    .line 121
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportStartTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    sub-long/2addr v14, v12

    .line 122
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v5, "miniapp_all_start_time"

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "is_mini_process_alive"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v2, v3, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->trackCommonResPoint(Ljava/lang/String;Landroid/os/Bundle;)V

    const-class v2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 126
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 127
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO00o:Ljava/lang/String;

    .line 128
    const-string v3, "mini_app_open"

    invoke-interface {v2, v0, v3, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_e

    .line 129
    :goto_d
    const-string v1, "Exception failed!"

    invoke-static {v6, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catchall_4
    :goto_e
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 130
    sget-object v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-eqz p1, :cond_0

    .line 131
    iget-boolean v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOOO0:Z

    :cond_0
    return v0
.end method

.method public final OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "isExitInStage"

    const-string v5, "false"

    const-string v6, "data"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordAppStageFail =======> appId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    :try_start_0
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 22
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_0
    if-eqz v0, :cond_8

    .line 24
    sget-object v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez v8, :cond_1

    return v3

    .line 25
    :cond_1
    const-string v9, "openMiniAppResult"

    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v9, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 27
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 29
    iget-object v11, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 30
    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 31
    iget-object v11, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 32
    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v5, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 34
    iget-object v11, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 35
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 36
    iget-object v13, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 37
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v5, "true"

    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v6, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    .line 41
    iget v7, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0oO:I

    .line 42
    invoke-virtual {v6, v2, v7}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(II)I

    move-result v7

    .line 43
    iget v9, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0oo:I

    .line 44
    invoke-virtual {v6, v7, v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(II)I

    move-result v7

    .line 45
    iget v9, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0:I

    .line 46
    invoke-virtual {v6, v7, v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(II)I

    move-result v7

    .line 47
    iget v9, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO:I

    .line 48
    invoke-virtual {v6, v7, v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(II)I

    move-result v6

    .line 49
    const-string v7, "syncType"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-object v6, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 51
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    .line 52
    const-string v7, "maxStage"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    if-gt v3, v6, :cond_7

    move v10, v3

    .line 55
    :goto_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 56
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 57
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_3

    :cond_4
    move-wide v15, v13

    .line 58
    :goto_3
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 59
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v13

    .line 60
    :goto_4
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 61
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :cond_6
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x2

    .line 62
    new-array v12, v12, [J

    aput-wide v15, v12, v2

    aput-wide v17, v12, v3

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v10, v6, :cond_7

    add-int/2addr v10, v3

    goto :goto_2

    .line 63
    :cond_7
    const-string v2, "stageCostTime"

    invoke-static {v7}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "stageRangeTime"

    invoke-static {v9}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "page_path"

    .line 66
    iget-object v6, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 67
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v2, v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->trackCommonResPoint(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 71
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 72
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO00o:Ljava/lang/String;

    .line 73
    const-string v6, "mini_app_open"

    invoke-interface {v0, v2, v6, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    iput-boolean v3, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0o:Z

    .line 75
    iget-boolean v0, v8, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0O:Z

    if-nez v0, :cond_8

    .line 76
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v8, v2, v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    return v3
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "stage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordAppStageEnd =======> stage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    if-eqz p2, :cond_4

    .line 6
    sget-object v3, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    sget-object v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez p2, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object v4, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 8
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    .line 9
    :cond_2
    iget-object v4, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 10
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 11
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 12
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 14
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 15
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 16
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 17
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {v3, p2, p3}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return v0
.end method

.method public final OooO0O0(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordAppStageFinish =======> appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 25
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    sget-object v2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    move-object v3, v2

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez v3, :cond_0

    return v0

    .line 26
    :cond_0
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0o:Z

    if-eqz v3, :cond_1

    .line 27
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 28
    :cond_1
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    const-string v4, "\u5c0f\u7a0b\u5e8f\u5173\u95ed"

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p1, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 30
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return v0
.end method

.method public final OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move-object/from16 v1, p3

    const/4 v15, 0x1

    const-string v2, "stage"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordAppStageStart =======> stage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    if-eqz v14, :cond_6

    .line 5
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->AppSetupStep:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    sget-object v13, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-array v1, v15, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 9
    new-instance v12, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    .line 10
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v15, v12

    move/from16 v12, v17

    move-object/from16 v18, v13

    move/from16 v13, v16

    .line 13
    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IIIIZZZ)V

    move-object/from16 v0, v18

    .line 14
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_0
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 15
    :cond_3
    sget-object v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez v4, :cond_4

    const/4 v5, 0x1

    return v5

    :cond_4
    const/4 v5, 0x1

    .line 16
    iget-object v6, v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 17
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v5

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18
    iget-object v3, v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 19
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0O:Z

    .line 22
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iput-object v0, v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0O0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v15

    :goto_2
    return v0
.end method

.method public final OooO0OO(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    .line 10
    .line 11
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->UPDATE_FRAMEWORK_MODE:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    iput v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0oo:I

    .line 32
    .line 33
    :cond_1
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->UPDATE_APP_MODE:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eq v3, v2, :cond_2

    .line 40
    .line 41
    iput v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0oO:I

    .line 42
    .line 43
    :cond_2
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_FRAMEWORK_MODE:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p2, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, v2, :cond_3

    .line 50
    .line 51
    iput v4, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooOO0:I

    .line 52
    .line 53
    :cond_3
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p2, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eq p2, v2, :cond_4

    .line 60
    .line 61
    iput p2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO:I

    .line 62
    .line 63
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "recordAppStageInsert ==> updateFrameworkMode:"

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", updateAppMode:"

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", downloadFrameworkMode:"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", downloadAppMode:"

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :catchall_0
    :cond_5
    return v0
.end method
