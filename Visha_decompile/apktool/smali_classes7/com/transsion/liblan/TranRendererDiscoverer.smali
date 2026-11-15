.class public Lcom/transsion/liblan/TranRendererDiscoverer;
.super Lcom/transsion/liblan/LANObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/TranRendererDiscoverer$EventListener;,
        Lcom/transsion/liblan/TranRendererDiscoverer$Description;,
        Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/LANObject<",
        "Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibLAN/RendererDiscoverer"


# instance fields
.field private final index:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/transsion/liblan/RendererItem;",
            ">;"
        }
    .end annotation
.end field

.field final mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/liblan/RendererItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->mRenderers:Ljava/util/List;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranRendererDiscoverer;->nativeNew(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/liblan/TranRendererDiscoverer$Description;
    .locals 2

    new-instance v0, Lcom/transsion/liblan/TranRendererDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/liblan/TranRendererDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;Lyxa;)V

    return-object v0
.end method

.method private static createItemFromNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/liblan/RendererItem;
    .locals 8

    new-instance v7, Lcom/transsion/liblan/RendererItem;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/liblan/RendererItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v7
.end method

.method private declared-synchronized insertItemFromEvent(J)Lcom/transsion/liblan/RendererItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranRendererDiscoverer;->nativeNewItem(J)Lcom/transsion/liblan/RendererItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->mRenderers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method public static list(Lcom/transsion/liblan/interfaces/ITranLibLAN;)[Lcom/transsion/liblan/TranRendererDiscoverer$Description;
    .locals 0

    invoke-static {p0}, Lcom/transsion/liblan/TranRendererDiscoverer;->nativeList(Lcom/transsion/liblan/interfaces/ITranLibLAN;)[Lcom/transsion/liblan/TranRendererDiscoverer$Description;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeList(Lcom/transsion/liblan/interfaces/ITranLibLAN;)[Lcom/transsion/liblan/TranRendererDiscoverer$Description;
.end method

.method private native nativeNew(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
.end method

.method private native nativeNewItem(J)Lcom/transsion/liblan/RendererItem;
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method

.method private declared-synchronized removeItemFromEvent(J)Lcom/transsion/liblan/RendererItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/liblan/RendererItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->index:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object p1, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->mRenderers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->release()V
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
.method public bridge synthetic getInstance()J
    .locals 2

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p4, 0x502

    if-eq p1, p4, :cond_1

    const/16 p4, 0x503

    if-eq p1, p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p4, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;

    invoke-direct {p0, p2, p3}, Lcom/transsion/liblan/TranRendererDiscoverer;->removeItemFromEvent(J)Lcom/transsion/liblan/RendererItem;

    move-result-object p0

    invoke-direct {p4, p1, p2, p3, p0}, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;-><init>(IJLcom/transsion/liblan/RendererItem;)V

    return-object p4

    .line 3
    :cond_1
    new-instance p4, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;

    invoke-direct {p0, p2, p3}, Lcom/transsion/liblan/TranRendererDiscoverer;->insertItemFromEvent(J)Lcom/transsion/liblan/RendererItem;

    move-result-object p0

    invoke-direct {p4, p1, p2, p3, p0}, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;-><init>(IJLcom/transsion/liblan/RendererItem;)V

    return-object p4
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/TranRendererDiscoverer;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNativeItem()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/liblan/RendererItem;

    invoke-virtual {v1}, Lcom/transsion/liblan/LANObject;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/TranRendererDiscoverer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/transsion/liblan/TranRendererDiscoverer;->nativeRelease()V

    return-void
.end method

.method public setEventListener(Lcom/transsion/liblan/TranRendererDiscoverer$EventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;)V

    return-void
.end method

.method public start()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/liblan/TranRendererDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranRendererDiscoverer;->nativeStart()Z

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

    invoke-virtual {p0}, Lcom/transsion/liblan/TranRendererDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranRendererDiscoverer;->setEventListener(Lcom/transsion/liblan/TranRendererDiscoverer$EventListener;)V

    invoke-direct {p0}, Lcom/transsion/liblan/TranRendererDiscoverer;->nativeStop()V

    invoke-virtual {p0}, Lcom/transsion/liblan/LANObject;->release()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDiscoverer is released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
