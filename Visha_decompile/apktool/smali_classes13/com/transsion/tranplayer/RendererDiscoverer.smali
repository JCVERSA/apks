.class public Lcom/transsion/tranplayer/RendererDiscoverer;
.super Lcom/transsion/tranplayer/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/RendererDiscoverer$Description;,
        Lcom/transsion/tranplayer/RendererDiscoverer$EventListener;,
        Lcom/transsion/tranplayer/RendererDiscoverer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/tranplayer/VLCObject<",
        "Lcom/transsion/tranplayer/RendererDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/RendererDiscoverer"


# instance fields
.field private final index:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/transsion/tranplayer/RendererItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCObject;-><init>(Lcom/transsion/tranplayer/LibVLC;)V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/tranplayer/RendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/RendererDiscoverer;->nativeNew(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/tranplayer/RendererDiscoverer$Description;
    .locals 2

    new-instance v0, Lcom/transsion/tranplayer/RendererDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/tranplayer/RendererDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/RendererDiscoverer$1;)V

    return-object v0
.end method

.method private static createItemFromNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/tranplayer/RendererItem;
    .locals 8

    new-instance v7, Lcom/transsion/tranplayer/RendererItem;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/tranplayer/RendererItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v7
.end method

.method private declared-synchronized insertItemFromEvent(J)Lcom/transsion/tranplayer/RendererItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/transsion/tranplayer/RendererItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/tranplayer/RendererItem;-><init>(Lcom/transsion/tranplayer/RendererDiscoverer;J)V

    iget-object v1, p0, Lcom/transsion/tranplayer/RendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static list(Lcom/transsion/tranplayer/LibVLC;)[Lcom/transsion/tranplayer/RendererDiscoverer$Description;
    .locals 0

    invoke-static {p0}, Lcom/transsion/tranplayer/RendererDiscoverer;->nativeList(Lcom/transsion/tranplayer/LibVLC;)[Lcom/transsion/tranplayer/RendererDiscoverer$Description;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeList(Lcom/transsion/tranplayer/LibVLC;)[Lcom/transsion/tranplayer/RendererDiscoverer$Description;
.end method

.method private native nativeNew(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method

.method private declared-synchronized removeItemFromEvent(J)Lcom/transsion/tranplayer/RendererItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/RendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tranplayer/RendererItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/RendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/RendererDiscoverer$Event;
    .locals 0

    const/16 p4, 0x502

    if-eq p1, p4, :cond_1

    const/16 p4, 0x503

    if-eq p1, p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p4, Lcom/transsion/tranplayer/RendererDiscoverer$Event;

    invoke-direct {p0, p2, p3}, Lcom/transsion/tranplayer/RendererDiscoverer;->removeItemFromEvent(J)Lcom/transsion/tranplayer/RendererItem;

    move-result-object p0

    invoke-direct {p4, p1, p2, p3, p0}, Lcom/transsion/tranplayer/RendererDiscoverer$Event;-><init>(IJLcom/transsion/tranplayer/RendererItem;)V

    return-object p4

    .line 3
    :cond_1
    new-instance p4, Lcom/transsion/tranplayer/RendererDiscoverer$Event;

    invoke-direct {p0, p2, p3}, Lcom/transsion/tranplayer/RendererDiscoverer;->insertItemFromEvent(J)Lcom/transsion/tranplayer/RendererItem;

    move-result-object p0

    invoke-direct {p4, p1, p2, p3, p0}, Lcom/transsion/tranplayer/RendererDiscoverer$Event;-><init>(IJLcom/transsion/tranplayer/RendererItem;)V

    return-object p4
.end method

.method public bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/tranplayer/RendererDiscoverer;->onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/RendererDiscoverer$Event;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNative()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/RendererDiscoverer;->nativeRelease()V

    return-void
.end method

.method public setEventListener(Lcom/transsion/tranplayer/RendererDiscoverer$EventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/tranplayer/VLCObject;->setEventListener(Lcom/transsion/tranplayer/VLCEvent$Listener;)V

    return-void
.end method

.method public bridge synthetic setPinPVideoMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/tranplayer/VLCObject;->setPinPVideoMode(Z)V

    return-void
.end method

.method public start()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/tranplayer/RendererDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/RendererDiscoverer;->nativeStart()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDiscoverer is released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/tranplayer/RendererDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/tranplayer/RendererDiscoverer;->setEventListener(Lcom/transsion/tranplayer/RendererDiscoverer$EventListener;)V

    invoke-direct {p0}, Lcom/transsion/tranplayer/RendererDiscoverer;->nativeStop()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDiscoverer is released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
