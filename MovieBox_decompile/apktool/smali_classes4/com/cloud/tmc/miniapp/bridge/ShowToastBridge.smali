.class public final Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO00o;

    .line 7
    .line 8
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
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final disableAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getFirstPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-class p1, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->setEnabled(Z)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final enableAlertBeforeUnload(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "message"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getFirstPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p2, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p2, v0, p1}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;-><init>(ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-class p1, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 45
    .line 46
    invoke-interface {p3, p1, p2}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final hideLoading(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "noConflict"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->cancel()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideLoading()V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final hideToast(ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "noConflict"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->cancel()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideToast()V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "showToast"

    .line 2
    .line 3
    const-string v1, "onFinalized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    const-string v0, "showToast"

    .line 2
    .line 3
    const-string v1, "onInitialized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final showActionSheet(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 12
    .param p1    # Lcom/google/gson/JsonArray;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "itemList",
                "actions"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "itemColor"
            }
            stringDefault = "#191F2B"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "type"
            }
            stringDefault = "text"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "title"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "alertText",
                "content"
            }
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            booleanDefault = true
            name = {
                "showCancel"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "cancelText"
            }
            stringDefault = "Cancel"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "cancelColor"
            }
            stringDefault = "#191F2B"
        .end annotation
    .end param
    .param p9    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p10    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object v2, p3

    .line 2
    move-object/from16 v11, p10

    .line 3
    .line 4
    const-string v0, "itemColor"

    .line 5
    .line 6
    move-object v5, p2

    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "type"

    .line 11
    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "cancelText"

    .line 16
    .line 17
    move-object/from16 v7, p7

    .line 18
    .line 19
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "cancelColor"

    .line 23
    .line 24
    move-object/from16 v8, p8

    .line 25
    .line 26
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p9, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p9 .. p9}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v9, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v9, v0

    .line 45
    :goto_0
    if-eqz p9, :cond_1

    .line 46
    .line 47
    invoke-interface/range {p9 .. p9}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    move-object v10, v0

    .line 52
    const-string v0, "errMsg"

    .line 53
    .line 54
    if-eqz v9, :cond_6

    .line 55
    .line 56
    if-eqz v10, :cond_6

    .line 57
    .line 58
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-nez p1, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v1, "text"

    .line 69
    .line 70
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    const-string v1, "icon"

    .line 77
    .line 78
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    if-eqz v11, :cond_4

    .line 85
    .line 86
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, " is not supported: AS10002"

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v11, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    return-void

    .line 115
    :cond_5
    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 122
    .line 123
    move-object v1, p1

    .line 124
    move-object v2, p3

    .line 125
    move-object/from16 v3, p4

    .line 126
    .line 127
    move-object/from16 v4, p5

    .line 128
    .line 129
    move-object v5, p2

    .line 130
    move/from16 v6, p6

    .line 131
    .line 132
    move-object/from16 v7, p7

    .line 133
    .line 134
    move-object/from16 v8, p8

    .line 135
    .line 136
    move-object/from16 v11, p10

    .line 137
    .line 138
    invoke-interface/range {v0 .. v11}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->showActionSheet(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    :goto_1
    if-eqz v11, :cond_7

    .line 143
    .line 144
    const-string v1, "Parameter error: AS10001"

    .line 145
    .line 146
    invoke-static {v0, v1, v11}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    return-void
.end method

.method public final showAddHomeTipsToast(Lcom/cloud/tmc/integration/structure/App;IJJLjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showType"
            }
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showDelayTime"
            }
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "closeDelayTime"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "message"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "iconUrl"
            }
        .end annotation
    .end param
    .param p9    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p9

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const-string v4, "showToast"

    .line 7
    .line 8
    const-string v5, "message"

    .line 9
    .line 10
    move-object/from16 v12, p7

    .line 11
    .line 12
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v5, "iconUrl"

    .line 16
    .line 17
    move-object/from16 v13, p8

    .line 18
    .line 19
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v5, "callback"

    .line 23
    .line 24
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    new-array v2, v2, [Ljava/lang/Integer;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    aput-object v5, v2, v7

    .line 39
    .line 40
    aput-object v6, v2, v3

    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "errMsg"

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    move/from16 v5, p2

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, " is not supported: AS10002"

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    move/from16 v5, p2

    .line 92
    .line 93
    sget-object v2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 94
    .line 95
    const/16 v3, 0x51

    .line 96
    .line 97
    invoke-virtual {v2, v3, p1}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    sget-object v2, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move-object v6, v3

    .line 115
    :goto_0
    invoke-virtual {v2, v6}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;->OooO00o(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    const-string v0, "dev dialog is showing, return"

    .line 122
    .line 123
    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :cond_4
    instance-of v0, v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    move-object v6, v3

    .line 144
    check-cast v6, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 145
    .line 146
    move/from16 v7, p2

    .line 147
    .line 148
    move-wide/from16 v8, p3

    .line 149
    .line 150
    move-wide/from16 v10, p5

    .line 151
    .line 152
    move-object/from16 v12, p7

    .line 153
    .line 154
    move-object/from16 v13, p8

    .line 155
    .line 156
    invoke-virtual/range {v6 .. v13}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->checkAndShowAddHomeCustomToast(IJJLjava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface/range {p9 .. p9}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    invoke-interface/range {p9 .. p9}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_1
    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    invoke-interface/range {p9 .. p9}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 171
    .line 172
    .line 173
    :goto_2
    return-void
.end method

.method public final showLoading(Ljava/lang/String;IZLcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "title"
            }
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = 0x1
            name = {
                "duration"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            booleanDefault = true
            name = {
                "mask"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p4, :cond_1

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    :cond_3
    :goto_0
    const-string v0, ""

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    move-object v1, p0

    .line 54
    move v5, p2

    .line 55
    move v6, p3

    .line 56
    move-object v7, p4

    .line 57
    move-object v8, p5

    .line 58
    invoke-virtual/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge;->showToast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final showModal(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "title"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "content"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "showCancel"
            }
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "editable"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "placeholderText"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "cancelText"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "cancelColor"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "confirmText"
            }
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "confirmColor"
            }
        .end annotation
    .end param
    .param p10    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p11    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p10, :cond_0

    .line 2
    .line 3
    invoke-interface/range {p10 .. p10}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    move-object v11, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    if-nez v11, :cond_2

    .line 18
    .line 19
    if-eqz p11, :cond_1

    .line 20
    .line 21
    invoke-interface/range {p11 .. p11}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void

    .line 25
    :cond_2
    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v1, v0

    .line 32
    check-cast v1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    move/from16 v4, p3

    .line 37
    .line 38
    move/from16 v5, p4

    .line 39
    .line 40
    move-object/from16 v6, p5

    .line 41
    .line 42
    move-object/from16 v7, p6

    .line 43
    .line 44
    move-object/from16 v8, p7

    .line 45
    .line 46
    move-object/from16 v9, p8

    .line 47
    .line 48
    move-object/from16 v10, p9

    .line 49
    .line 50
    move-object/from16 v12, p11

    .line 51
    .line 52
    invoke-interface/range {v1 .. v12}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->showModal(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final showToast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "msg",
                "title"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "icon"
            }
            stringDefault = "none"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "image"
            }
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = 0x5dc
            name = {
                "duration"
            }
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "mask"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p7    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    const-string v5, "msg"

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v5, "icon"

    .line 19
    .line 20
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    const/4 v5, 0x1

    .line 32
    if-ne v2, v5, :cond_2

    .line 33
    .line 34
    move v2, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-nez v2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const v5, 0xea60

    .line 40
    .line 41
    .line 42
    if-gt v2, v5, :cond_4

    .line 43
    .line 44
    const/16 v5, 0x3e8

    .line 45
    .line 46
    if-ge v2, v5, :cond_5

    .line 47
    .line 48
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 49
    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    .line 50
    .line 51
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_6

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_6
    invoke-static {v3, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_2
    move-object v12, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_7
    :goto_3
    const/4 v1, 0x0

    .line 65
    goto :goto_2

    .line 66
    :goto_4
    sget-object v7, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;

    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_8

    .line 77
    .line 78
    new-instance v13, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO0O0;

    .line 79
    .line 80
    invoke-direct {v13, v4}, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO0O0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 81
    .line 82
    .line 83
    const/16 v14, 0x8

    .line 84
    .line 85
    const/4 v15, 0x0

    .line 86
    const-wide/16 v9, 0x0

    .line 87
    .line 88
    move-object/from16 v6, p1

    .line 89
    .line 90
    move v8, v2

    .line 91
    move/from16 v11, p5

    .line 92
    .line 93
    invoke-static/range {v6 .. v15}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    sget-object v7, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_9

    .line 108
    .line 109
    new-instance v13, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO0OO;

    .line 110
    .line 111
    invoke-direct {v13, v4}, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO0OO;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 112
    .line 113
    .line 114
    const/16 v14, 0x8

    .line 115
    .line 116
    const/4 v15, 0x0

    .line 117
    const-wide/16 v9, 0x0

    .line 118
    .line 119
    move-object/from16 v6, p1

    .line 120
    .line 121
    move v8, v2

    .line 122
    move/from16 v11, p5

    .line 123
    .line 124
    invoke-static/range {v6 .. v15}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_9
    sget-object v7, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    new-instance v13, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO0o;

    .line 141
    .line 142
    invoke-direct {v13, v4}, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO0o;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 143
    .line 144
    .line 145
    const/16 v14, 0x8

    .line 146
    .line 147
    const/4 v15, 0x0

    .line 148
    const-wide/16 v9, 0x0

    .line 149
    .line 150
    move-object/from16 v6, p1

    .line 151
    .line 152
    move v8, v2

    .line 153
    move/from16 v11, p5

    .line 154
    .line 155
    invoke-static/range {v6 .. v15}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_a
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    new-instance v11, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO;

    .line 172
    .line 173
    invoke-direct {v11, v4}, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge$OooO;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 174
    .line 175
    .line 176
    const/4 v12, 0x4

    .line 177
    const/4 v13, 0x0

    .line 178
    const-wide/16 v8, 0x0

    .line 179
    .line 180
    move-object/from16 v6, p1

    .line 181
    .line 182
    move v7, v2

    .line 183
    move/from16 v10, p5

    .line 184
    .line 185
    invoke-static/range {v6 .. v13}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_b
    if-eqz v4, :cond_c

    .line 190
    .line 191
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 192
    .line 193
    .line 194
    :cond_c
    :goto_5
    return-void
.end method
