.class public Lcom/cloud/tmc/integration/utils/LatestUseUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final CONSTANT_LOGO:Ljava/lang/String; = "logo_"

.field private static final INSIDE_MARGIN:I = 0xa

.field private static final INSIDE_RADIUS:F = 14.0f

.field private static final LARGE_ICON_SIZE:I = 0x90

.field private static final LATEST_APP_COUNT_KEY:Ljava/lang/String; = "latest_app_count"

.field private static final LATEST_APP_ICON_KEY:Ljava/lang/String; = "latest_app_icon"

.field private static final LATEST_APP_ICON_MSG_KEY:Ljava/lang/String; = "latest_app_icon_msg"

.field private static final LATEST_APP_ICON_MSG_NIGHT_KEY:Ljava/lang/String; = "latest_app_icon_msg_night"

.field private static final LATEST_APP_ICON_NIGHT_KEY:Ljava/lang/String; = "latest_app_icon_night"

.field private static final LATEST_USE_APP_KEY:Ljava/lang/String; = "latest_use_app"

.field private static final OUTSIDE_MARGIN:I = 0x10

.field private static final OUTSIDE_RADIUS:F = 36.0f

.field private static final SMALL_ICON_SIZE:I = 0x33

.field private static final TAG:Ljava/lang/String; = "LatestUseUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized addAppUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-class v9, Lcom/cloud/tmc/integration/utils/LatestUseUtils;

    .line 3
    .line 4
    monitor-enter v9

    .line 5
    :try_start_0
    const-string v1, "LatestUseUtils"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "addAppUse -> appId -> "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "appName "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-object v3, p1

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    :try_start_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    .line 38
    .line 39
    const-string v2, "latest_use"

    .line 40
    .line 41
    invoke-virtual {v1, p0, v2}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getAbilityEnableStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const-string v0, "LatestUseUtils"

    .line 48
    .line 49
    const-string v1, "config not add latest use."

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v9

    .line 55
    return v10

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApp()Ljava/util/HashMap;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    new-instance v12, Lcom/cloud/tmc/integration/model/AppStoreInfo;

    .line 63
    .line 64
    move-object v1, v12

    .line 65
    move-object v2, p0

    .line 66
    move-object v3, p1

    .line 67
    move-object v4, p2

    .line 68
    move-object/from16 v5, p3

    .line 69
    .line 70
    move-object/from16 v6, p4

    .line 71
    .line 72
    move-object/from16 v7, p5

    .line 73
    .line 74
    move/from16 v8, p6

    .line 75
    .line 76
    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/integration/model/AppStoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    if-eqz v11, :cond_1

    .line 80
    .line 81
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Lcom/cloud/tmc/integration/utils/LatestUseUtils$1;

    .line 102
    .line 103
    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/LatestUseUtils$1;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, p0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {v11}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->updateLatestUseApp(Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    monitor-exit v9

    .line 116
    const/4 v0, 0x1

    .line 117
    return v0

    .line 118
    :goto_0
    :try_start_3
    const-string v1, "LatestUseUtils"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .line 122
    .line 123
    monitor-exit v9

    .line 124
    return v10

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    throw v0
.end method

.method public static declared-synchronized deleteAppUse(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/utils/LatestUseUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApp()Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->updateLatestUseApp(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    monitor-exit v0

    .line 34
    return v2

    .line 35
    :cond_2
    :goto_1
    monitor-exit v0

    .line 36
    return v2

    .line 37
    :goto_2
    :try_start_1
    const-string v1, "LatestUseUtils"

    .line 38
    .line 39
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    throw p0
.end method

.method private static getLatestUseApp()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/AppStoreInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "LatestUseUtils"

    .line 2
    .line 3
    const-string v1, "latest_use_app"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Lcom/cloud/tmc/integration/utils/LatestUseUtils$3;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/cloud/tmc/integration/utils/LatestUseUtils$3;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-class v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 16
    .line 17
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 22
    .line 23
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "miniLatestUseApps"

    .line 28
    .line 29
    invoke-interface {v4, v5, v6, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v4, v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/HashMap;

    .line 47
    .line 48
    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getMultiMMKVInstance()Lcom/tencent/mmkv/MMKV;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_2
    const-string v5, "{}"

    .line 59
    .line 60
    invoke-virtual {v4, v1, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v5, "getLatestUseApp->"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->updateLatestUseApp(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :goto_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    return-object v2
.end method

.method public static declared-synchronized getLatestUseApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/AppStoreInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/utils/LatestUseUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApp()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    new-instance v1, Lcom/cloud/tmc/integration/utils/LatestUseUtils$2;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/cloud/tmc/integration/utils/LatestUseUtils$2;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v2

    .line 39
    move-object v3, v1

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :goto_1
    :try_start_2
    const-string v2, "LatestUseUtils"

    .line 45
    .line 46
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    if-nez v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_2
    move-exception v1

    .line 58
    goto :goto_4

    .line 59
    :cond_2
    :goto_3
    monitor-exit v0

    .line 60
    return-object v3

    .line 61
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    throw v1
.end method

.method public static declared-synchronized removeList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/utils/LatestUseUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApp()Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->updateLatestUseApp(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    :try_start_1
    const-string v1, "LatestUseUtils"

    .line 43
    .line 44
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .line 46
    .line 47
    :goto_2
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    throw p0
.end method

.method private static updateLatestUseApp(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/AppStoreInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "miniLatestUseApps"

    .line 17
    .line 18
    const-string v3, "latest_use_app"

    .line 19
    .line 20
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    const-string v0, "LatestUseUtils"

    .line 30
    .line 31
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
