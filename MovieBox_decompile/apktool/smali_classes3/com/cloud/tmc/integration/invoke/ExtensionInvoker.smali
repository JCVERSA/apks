.class public abstract Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;,
        Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker"


# instance fields
.field protected final invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

.field private isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

.field protected targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field

.field protected final targetNode:Lcom/cloud/tmc/kernel/node/Node;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    .line 5
    iget-object p1, p1, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    .line 7
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    return-void
.end method


# virtual methods
.method public attacheTargetExtensions(Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public attacheTargetExtensions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 2
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->a(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->c(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;->onComplete(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return-object p1

    .line 64
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v0, "Java exception happened!\nExtension: "

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, "\nMethod: "

    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const-string p3, "TmcKernel:ExtensionInvoker"

    .line 97
    .line 98
    invoke-static {p3, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    .line 110
    .line 111
    if-eqz p2, :cond_3

    .line 112
    .line 113
    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;->onFail(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    throw p1
.end method

.method protected abstract onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected final proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/integration/invoke/InvokeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    :try_start_1
    new-instance v3, Lcom/cloud/tmc/integration/invoke/InvokeException;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Lcom/cloud/tmc/integration/invoke/InvokeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v3

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    new-instance v3, Lcom/cloud/tmc/integration/invoke/InvokeException;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v3, v0}, Lcom/cloud/tmc/integration/invoke/InvokeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :goto_2
    const-string v3, "TmcKernel:ExtensionInvoker"

    .line 47
    .line 48
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "only single extension is accepted in last invoker"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    .line 76
    .line 77
    iput-object p1, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 78
    .line 79
    invoke-virtual {v0, p2, p3, p4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1
    :try_end_2
    .catch Lcom/cloud/tmc/integration/invoke/InvokeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    return-object p1

    .line 84
    :catchall_2
    move-exception p1

    .line 85
    goto :goto_4

    .line 86
    :catch_1
    move-exception p1

    .line 87
    goto :goto_5

    .line 88
    :goto_4
    new-instance p2, Lcom/cloud/tmc/integration/invoke/InvokeException;

    .line 89
    .line 90
    invoke-direct {p2, p1}, Lcom/cloud/tmc/integration/invoke/InvokeException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :goto_5
    throw p1
.end method

.method protected final proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p1

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    const-string p2, "TmcKernel:ExtensionInvoker"

    .line 8
    .line 9
    const-string p4, "extension invoke exception!"

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
