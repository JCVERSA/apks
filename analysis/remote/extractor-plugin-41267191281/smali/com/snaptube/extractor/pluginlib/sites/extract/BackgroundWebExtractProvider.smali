.class public Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;
.super Ljava/lang/Object;


# static fields
.field private static final METHOD_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_SEND_BACKGROUND_WEB_RESULT_TO_EXTRACTOR:Ljava/lang/String; = "sendBackgroundWebResultToExtractor"

.field private static volatile instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;


# instance fields
.field private final listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/d00;",
            ">;"
        }
    .end annotation
.end field

.field private pluginProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;
    .locals 2

    sget-object v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    invoke-direct {v1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;-><init>()V

    sput-object v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->instance:Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    return-object v0
.end method

.method private notifyResultToListener(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/d00;

    invoke-interface {v1, p1}, Lo/d00;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendToPlugin(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-class v1, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "sendBackgroundWebResultToExtractor"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_2
    return v2
.end method


# virtual methods
.method public addListener(Lo/d00;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public loadPlugin(Ljava/lang/ClassLoader;)V
    .locals 2

    :try_start_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getInstance"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->pluginProvider:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public removerListener(Lo/d00;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->listenersList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendBackgroundWebResultToExtractor(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->sendToPlugin(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->notifyResultToListener(Ljava/lang/String;)V

    return v1
.end method
