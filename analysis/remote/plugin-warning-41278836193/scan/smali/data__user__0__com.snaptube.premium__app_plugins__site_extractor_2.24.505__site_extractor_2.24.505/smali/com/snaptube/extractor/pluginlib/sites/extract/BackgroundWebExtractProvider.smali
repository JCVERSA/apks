.class public Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final METHOD_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_SEND_BACKGROUND_WEB_RESULT_TO_EXTRACTOR:Ljava/lang/String; = "sendBackgroundWebResultToExtractor"

.field private static volatile instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;


# instance fields
.field private final listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LA/b;",
            ">;"
        }
    .end annotation
.end field

.field private pluginProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;
    .locals 2

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 27
    .line 28
    return-object v0
.end method

.method private notifyResultToListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LA/b;

    .line 18
    .line 19
    invoke-interface {v1, p1}, LA/b;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private sendToPlugin(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    const-class v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v3, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "sendBackgroundWebResultToExtractor"

    .line 34
    .line 35
    new-array v4, v0, [Ljava/lang/Class;

    .line 36
    .line 37
    const-class v5, Ljava/lang/String;

    .line 38
    .line 39
    aput-object v5, v4, v2

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    .line 46
    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p1, v0, v2

    .line 50
    .line 51
    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    check-cast p1, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return p1

    .line 64
    :catchall_0
    :cond_2
    return v2
.end method


# virtual methods
.method public addListener(LA/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public loadPlugin(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "getInstance"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :catchall_0
    return-void
.end method

.method public removerListener(LA/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendBackgroundWebResultToExtractor(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->sendToPlugin(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->notifyResultToListener(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v1
.end method
