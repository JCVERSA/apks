.class public Lcom/cloud/tmc/integration/invoke/AwareExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.source "source.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker:Aware"


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 15
    .line 16
    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/utils/NodeAwareUtils;->handleSetNode(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/extension/Extension;)V

    .line 17
    .line 18
    .line 19
    instance-of p3, p1, Lcom/cloud/tmc/kernel/scheduler/Schedulable;

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    move-object p3, p1

    .line 24
    check-cast p3, Lcom/cloud/tmc/kernel/scheduler/Schedulable;

    .line 25
    .line 26
    const-class v2, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 33
    .line 34
    invoke-interface {p3, v2}, Lcom/cloud/tmc/kernel/scheduler/Schedulable;->setExecutorFactory(Lcom/cloud/tmc/kernel/executor/IExecutorService;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "extension "

    .line 43
    .line 44
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " method "

    .line 55
    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " cost "

    .line 63
    .line 64
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    sub-long/2addr p1, v0

    .line 72
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string p2, "TmcKernel:ExtensionInvoker:Aware"

    .line 80
    .line 81
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method
