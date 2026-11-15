.class public Lcom/cloud/tmc/kernel/node/NodeInstance;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/node/DataNode;
.implements Lcom/cloud/tmc/kernel/node/ValueStore;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NodeInstance"

.field protected static sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

.field private static sNodeIdBase:I

.field private static sNodeIdCounter:I


# instance fields
.field private mAlreadyFinalized:Z

.field private final mChildNodes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mNodeId:J

.field private mParentNode:Lcom/cloud/tmc/kernel/node/Node;

.field private final mValueStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit16 v0, v0, 0x2710

    .line 6
    .line 7
    sput v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdBase:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdCounter:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    sget v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdBase:I

    sget v1, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdCounter:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    .line 16
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    .line 18
    const-class v0, Lcom/cloud/tmc/kernel/node/NodeInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/node/Node;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->onInitialized()V

    return-void
.end method

.method public static bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    return-void
.end method

.method public static getBoundExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public synthetic addFixedView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/node/a;->a(Lcom/cloud/tmc/kernel/node/Node;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    if-eqz v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    const-string v0, "NodeInstance"

    .line 18
    .line 19
    const-string v1, "getStringValue error!"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public getChild(J)Lcom/cloud/tmc/kernel/node/Node;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/cloud/tmc/kernel/node/Node;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    cmp-long v3, p1, v3

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    const/4 p1, 0x0

    .line 36
    return-object p1

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/cloud/tmc/kernel/node/Node;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getData(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    const-string p2, "NodeInstance"

    const-string v1, "getData Exception"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getGroup()Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndexOfChild(Lcom/cloud/tmc/kernel/node/Node;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_2

    .line 16
    .line 17
    iget-object v4, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lcom/cloud/tmc/kernel/node/Node;

    .line 24
    .line 25
    if-ne p1, v4, :cond_1

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return v3

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    monitor-exit v1

    .line 35
    return v0

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    const-string v0, "NodeInstance"

    .line 18
    .line 19
    const-string v1, "getStringValue error!"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public getJsonArrayValue(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Lcom/google/gson/JsonArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    const-string v0, "NodeInstance"

    .line 14
    .line 15
    const-string v1, "getStringValue error!"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public getJsonValue(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Lcom/google/gson/JsonObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    const-string v0, "NodeInstance"

    .line 14
    .line 15
    const-string v1, "getStringValue error!"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    const-string v0, "NodeInstance"

    .line 18
    .line 19
    const-string v1, "getStringValue error!"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    return-wide v0
.end method

.method public getNodeId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getParentNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    const-string v0, "NodeInstance"

    .line 14
    .line 15
    const-string v1, "getStringValue error!"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public inquiry(Ljava/util/List;Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public isChildless()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public declared-synchronized onFinalized()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->exitNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public declared-synchronized onInitialized()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->enterNode(Lcom/cloud/tmc/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public peekChild()Lcom/cloud/tmc/kernel/node/Node;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/cloud/tmc/kernel/node/Node;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method public popChild()Lcom/cloud/tmc/kernel/node/Node;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/cloud/tmc/kernel/node/Node;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public pushChild(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/node/Node;->setParentNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public putBooleanValue(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public putIntValue(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public putJsonArrayValue(Ljava/lang/String;Lcom/google/gson/JsonArray;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public putJsonValue(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public putLongValue(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public putStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    monitor-exit v0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public setData(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setParentNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-void
.end method

.method public usePermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public waitOnFinalized()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    .line 8
    .line 9
    return v0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    return v0

    .line 13
    :goto_0
    const-string v2, "NodeInstance"

    .line 14
    .line 15
    const-string v3, "Interrupted!"

    .line 16
    .line 17
    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
