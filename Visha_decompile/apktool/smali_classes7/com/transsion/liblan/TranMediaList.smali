.class public Lcom/transsion/liblan/TranMediaList;
.super Lcom/transsion/liblan/LANObject;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranMediaList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/LANObject<",
        "Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;",
        ">;",
        "Lcom/transsion/liblan/interfaces/ITranMediaList;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibLAN/TranMediaList"


# instance fields
.field private mCount:I

.field private mLocked:Z

.field private final mMediaArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/liblan/interfaces/ITranMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranMediaDiscoverer;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLANObject;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 10
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaList;->nativeNewFromMediaDiscoverer(Lcom/transsion/liblan/TranMediaDiscoverer;)V

    .line 12
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 4
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaList;->nativeNewFromLibLan(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    .line 6
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranMedia;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLANObject;)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    .line 15
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 16
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaList;->nativeNewFromMedia(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    .line 18
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->lock()V

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->nativeGetCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    new-instance v2, Lcom/transsion/liblan/TranMedia;

    invoke-direct {v2, p0, v0}, Lcom/transsion/liblan/TranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranMediaList;I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->unlock()V

    return-void
.end method

.method private declared-synchronized insertMediaFromEvent(I)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    new-instance v0, Lcom/transsion/liblan/TranMedia;

    invoke-direct {v0, p0, p1}, Lcom/transsion/liblan/TranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranMediaList;I)V

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized lock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->nativeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native nativeGetCount()I
.end method

.method private native nativeLock()V
.end method

.method private native nativeNewFromLibLan(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V
.end method

.method private native nativeNewFromMedia(Lcom/transsion/liblan/interfaces/ITranMedia;)V
.end method

.method private native nativeNewFromMediaDiscoverer(Lcom/transsion/liblan/TranMediaDiscoverer;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeUnlock()V
.end method

.method private declared-synchronized removeMediaFromEvent(I)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/liblan/interfaces/ITranMedia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v2

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->nativeUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/TranMediaList;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic getInstance()J
    .locals 2

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMediaOfIndex(I)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaList;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized isBeLocked()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;
    .locals 1
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p4, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    if-nez p4, :cond_4

    const/4 p4, 0x1

    .line 3
    iput-boolean p4, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z

    const/16 p5, 0x200

    const/4 p6, 0x0

    const/4 p7, -0x1

    const/4 v0, 0x0

    if-eq p1, p5, :cond_2

    const/16 p4, 0x202

    if-eq p1, p4, :cond_1

    const/16 p2, 0x204

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;

    invoke-direct {p2, p1, p6, v0, p7}, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;-><init>(ILcom/transsion/liblan/interfaces/ITranMedia;ZI)V

    move-object p6, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    long-to-int p2, p2

    if-eq p2, p7, :cond_3

    .line 5
    invoke-direct {p0, p2}, Lcom/transsion/liblan/TranMediaList;->removeMediaFromEvent(I)Lcom/transsion/liblan/interfaces/ITranMedia;

    move-result-object p3

    .line 6
    new-instance p6, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;

    invoke-direct {p6, p1, p3, v0, p2}, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;-><init>(ILcom/transsion/liblan/interfaces/ITranMedia;ZI)V

    goto :goto_0

    :cond_2
    long-to-int p2, p2

    if-eq p2, p7, :cond_3

    .line 7
    invoke-direct {p0, p2}, Lcom/transsion/liblan/TranMediaList;->insertMediaFromEvent(I)Lcom/transsion/liblan/interfaces/ITranMedia;

    move-result-object p3

    .line 8
    new-instance p6, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;

    invoke-direct {p6, p1, p3, p4, p2}, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;-><init>(ILcom/transsion/liblan/interfaces/ITranMedia;ZI)V

    .line 9
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object p6

    .line 11
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already locked from event callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/TranMediaList;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNativeItem()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/liblan/interfaces/ITranMedia;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaList;->nativeRelease()V

    return-void
.end method

.method public setTranEventListener(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;Landroid/os/Handler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Landroid/os/Handler;)V

    return-void
.end method
