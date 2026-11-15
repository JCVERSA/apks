.class public Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.source "source.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TmcEngine:BridgeExtensionInvoker"


# instance fields
.field private mApiContext:Lcom/cloud/tmc/kernel/model/ApiContext;

.field private final mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

.field private mCallId:Ljava/lang/String;

.field private mRequestParams:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/ApiContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/ApiContext;)V
    .locals 1
    .param p4    # Lcom/cloud/tmc/kernel/model/ApiContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V

    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 4
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    .line 5
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mCallId:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mApiContext:Lcom/cloud/tmc/kernel/model/ApiContext;

    return-void
.end method

.method private buildActionMethodParam(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length v2, p2

    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    aget-object p2, p2, v0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p2, v1

    .line 12
    :goto_0
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;-><init>(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;-><init>(Lcom/google/gson/JsonObject;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/ExecutorBinder;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ExecutorBinder;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;-><init>(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingApiContext;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/ApiContextBinder;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mApiContext:Lcom/cloud/tmc/kernel/model/ApiContext;

    .line 77
    .line 78
    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ApiContextBinder;-><init>(Lcom/cloud/tmc/kernel/model/ApiContext;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingId;

    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/IdBinder;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mCallId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/IdBinder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    move-object v2, v1

    .line 95
    :goto_1
    if-eqz v2, :cond_8

    .line 96
    .line 97
    invoke-interface {v2, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;->bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_8
    if-nez v1, :cond_9

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_9

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :cond_9
    return-object v1
.end method

.method private initParamAnnotation(Ljava/lang/reflect/Method;)Landroidx/collection/y0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/collection/y0;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/y0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/y0;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz v1, :cond_7

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    array-length v4, v1

    .line 26
    if-ge v3, v4, :cond_7

    .line 27
    .line 28
    aget-object v4, p1, v3

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    array-length v6, v4

    .line 39
    move v7, v2

    .line 40
    :goto_1
    if-ge v7, v6, :cond_5

    .line 41
    .line 42
    aget-object v8, v4, v7

    .line 43
    .line 44
    if-eqz v8, :cond_4

    .line 45
    .line 46
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    if-eqz v9, :cond_4

    .line 51
    .line 52
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-class v10, Lcom/cloud/tmc/kernel/bridge/extension/annotation/Bindable;

    .line 57
    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    if-nez v9, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, [Ljava/lang/annotation/Annotation;

    .line 88
    .line 89
    invoke-virtual {v0, v3, v4}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    :goto_4
    return-object v0
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class p3, Lcom/cloud/tmc/kernel/bridge/extension/annotation/ParamRequired;

    .line 2
    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->size()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    :cond_0
    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 24
    .line 25
    invoke-direct {p1, p2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 26
    .line 27
    .line 28
    sget-object p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    array-length p3, p3

    .line 43
    new-array v2, p3, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->initParamAnnotation(Ljava/lang/reflect/Method;)Landroidx/collection/y0;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    move v4, v1

    .line 50
    :goto_0
    const/4 v5, 0x2

    .line 51
    if-ge v4, p3, :cond_2

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    aget-object v6, v6, v4

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroidx/collection/y0;->g(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, [Ljava/lang/annotation/Annotation;

    .line 64
    .line 65
    invoke-direct {p0, v6, v7}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->buildActionMethodParam(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    aput-object v6, v2, v4
    :try_end_0
    .catch Lcom/cloud/tmc/kernel/extension/RequiredParamNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 76
    .line 77
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 78
    .line 79
    invoke-direct {p2, p3, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 80
    .line 81
    .line 82
    new-instance p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p3, v5, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_2
    :try_start_1
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 102
    .line 103
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 108
    .line 109
    invoke-static {p3, v3}, Lcom/cloud/tmc/kernel/utils/NodeAwareUtils;->handleSetNode(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/extension/Extension;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 121
    .line 122
    invoke-virtual {p3, v3}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->setTargetExtension(Lcom/cloud/tmc/kernel/extension/Extension;)V

    .line 123
    .line 124
    .line 125
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 126
    .line 127
    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1
    :try_end_1
    .catch Lcom/cloud/tmc/integration/invoke/InvokeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    const-class p3, Lcom/cloud/tmc/kernel/annotation/AutoCallback;

    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    if-eqz p3, :cond_6

    .line 138
    .line 139
    if-nez p1, :cond_3

    .line 140
    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string p3, "AutoCallback but got null!!! "

    .line 147
    .line 148
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 152
    .line 153
    invoke-virtual {p3, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p3, " method: "

    .line 161
    .line 162
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 176
    .line 177
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 178
    .line 179
    invoke-direct {p1, p2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 180
    .line 181
    .line 182
    sget-object p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    :cond_3
    instance-of p3, p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 193
    .line 194
    if-eqz p3, :cond_4

    .line 195
    .line 196
    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 197
    .line 198
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 199
    .line 200
    invoke-direct {p2, p3, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 201
    .line 202
    .line 203
    move-object p3, p1

    .line 204
    check-cast p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 205
    .line 206
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_4
    instance-of p3, p1, Lcom/google/gson/JsonObject;

    .line 211
    .line 212
    if-eqz p3, :cond_5

    .line 213
    .line 214
    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 215
    .line 216
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 217
    .line 218
    invoke-direct {p2, p3, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 219
    .line 220
    .line 221
    move-object p3, p1

    .line 222
    check-cast p3, Lcom/google/gson/JsonObject;

    .line 223
    .line 224
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_5
    new-instance p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 229
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v2, "method "

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p2, " return type not recognized "

    .line 248
    .line 249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-direct {p3, v5, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 271
    .line 272
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 273
    .line 274
    invoke-direct {p2, v0, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    .line 278
    .line 279
    .line 280
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    return-object p1

    .line 285
    :catch_1
    move-exception p1

    .line 286
    new-instance p3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v2, "Java exception happened!\nExtension: "

    .line 292
    .line 293
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 297
    .line 298
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v2, "\nMethod: "

    .line 306
    .line 307
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    const-string v2, "TmcEngine:BridgeExtensionInvoker"

    .line 318
    .line 319
    invoke-static {v2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    new-instance p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 323
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v3, "Java exception happen in method: "

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string p2, " message: "

    .line 338
    .line 339
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const/4 p2, 0x6

    .line 354
    invoke-direct {p3, p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    .line 358
    .line 359
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 360
    .line 361
    invoke-direct {p1, p2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    return-object p1
.end method
