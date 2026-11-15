.class public Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Tmcintegration:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->isInited:Z

    .line 28
    .line 29
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

.method public static declared-synchronized init()V
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->isInited:Z

    .line 12
    .line 13
    const-class v1, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;

    .line 14
    .line 15
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-static {}, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->initLegacyGroup()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->initGroupAppDefault()V

    .line 20
    .line 21
    .line 22
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :try_start_4
    throw v2

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 30
    throw v1
.end method

.method private static initGroupAppDefault()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    .line 7
    .line 8
    const-string v2, "forExample"

    .line 9
    .line 10
    invoke-direct {v1, v2, v2}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static initLegacyGroup()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/permission/PermissionConfig;->getInstance()Lcom/cloud/tmc/integration/permission/PermissionConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/permission/PermissionConfig;->getGroupPermissionMap()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v2, v1, [Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 16
    .line 17
    sget-object v3, Lcom/cloud/tmc/kernel/security/DefaultGroup;->INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    sget-object v3, Lcom/cloud/tmc/kernel/security/DefaultGroup;->PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aput-object v3, v2, v5

    .line 26
    .line 27
    sget-object v3, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    aput-object v3, v2, v6

    .line 31
    .line 32
    move v3, v4

    .line 33
    :goto_0
    if-ge v3, v1, :cond_0

    .line 34
    .line 35
    aget-object v6, v2, v3

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->clearPermissions()V

    .line 38
    .line 39
    .line 40
    add-int/2addr v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v4

    .line 43
    :goto_1
    if-ge v3, v1, :cond_3

    .line 44
    .line 45
    aget-object v6, v2, v3

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->groupName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/util/Map;

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-nez v8, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v8}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->assignPermissions(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_2
    add-int/2addr v3, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_3
    if-ge v4, v1, :cond_4

    .line 81
    .line 82
    aget-object v0, v2, v4

    .line 83
    .line 84
    sget-object v3, Lcom/cloud/tmc/integration/permission/model/TmcGroupInit;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v7, "DefaultGroup  init result  group="

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->groupName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v7, ", permissions="

    .line 104
    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    add-int/2addr v4, v5

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    return-void
.end method
