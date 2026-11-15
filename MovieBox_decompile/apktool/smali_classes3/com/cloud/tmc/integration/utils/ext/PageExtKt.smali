.class public final Lcom/cloud/tmc/integration/utils/ext/PageExtKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0010\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "checkAlertBeforeUnload",
        "",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "block",
        "Lkotlin/Function0;",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final declared-synchronized checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/integration/utils/ext/PageExtKt;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v3, "miniAppAlertBeforeUnload"

    .line 10
    .line 11
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    move-object v3, v2

    .line 23
    :goto_0
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v15, 0x1

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return v15

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_7

    .line 36
    .line 37
    :try_start_1
    const-class v4, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 38
    .line 39
    invoke-interface {v0, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 44
    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    instance-of v6, v5, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    move-object v2, v5

    .line 57
    check-cast v2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 58
    .line 59
    :cond_3
    if-eqz v2, :cond_6

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    if-nez v13, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->getEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    const-string v2, "miniAppAlertBeforeUnload"

    .line 75
    .line 76
    invoke-interface {v0, v2, v15}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-class v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    new-instance v14, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;

    .line 92
    .line 93
    move-object/from16 v3, p1

    .line 94
    .line 95
    invoke-direct {v14, v0, v4, v3}, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;-><init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    move-object v4, v2

    .line 105
    invoke-interface/range {v4 .. v14}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->showCommonDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    monitor-exit v1

    .line 109
    return v15

    .line 110
    :cond_5
    monitor-exit v1

    .line 111
    return v3

    .line 112
    :cond_6
    :goto_1
    monitor-exit v1

    .line 113
    return v3

    .line 114
    :cond_7
    :goto_2
    monitor-exit v1

    .line 115
    return v3

    .line 116
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw v0
.end method

.method public static synthetic checkAlertBeforeUnload$default(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ext/PageExtKt;->checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
