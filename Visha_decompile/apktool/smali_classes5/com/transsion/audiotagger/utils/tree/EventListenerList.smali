.class public Lcom/transsion/audiotagger/utils/tree/EventListenerList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_ARRAY:[Ljava/lang/Object;


# instance fields
.field protected transient listenerList:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    return-void
.end method

.method private getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 5
    aget-object v1, p1, p0

    check-cast v1, Ljava/lang/Class;

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/Class;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/util/EventListener;

    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/io/Serializable;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Class;Ljava/util/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v2, v1

    iput-object v2, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not of type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getListenerCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getListenerCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public getListenerList()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    return-object p0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/EventListener;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    check-cast v4, Ljava/util/EventListener;

    aput-object v4, p0, v2

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;Ljava/util/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v0, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    sub-int v3, p2, v0

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-nez p2, :cond_4

    sget-object v1, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    :cond_4
    iput-object v1, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not of type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventListenerList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " listener "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method
