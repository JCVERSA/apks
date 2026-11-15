.class public Lcom/transsion/liblan/TranMediaDiscoverer;
.super Lcom/transsion/liblan/LANObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/TranMediaDiscoverer$Description;,
        Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;,
        Lcom/transsion/liblan/TranMediaDiscoverer$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/LANObject<",
        "Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibLAN/MediaDiscoverer"


# instance fields
.field private mMediaList:Lcom/transsion/liblan/TranMediaList;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/TranMediaDiscoverer;->mMediaList:Lcom/transsion/liblan/TranMediaList;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMediaDiscoverer;->nativeNew(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/liblan/TranMediaDiscoverer$Description;
    .locals 2

    new-instance v0, Lcom/transsion/liblan/TranMediaDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/transsion/liblan/TranMediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;ILqxa;)V

    return-object v0
.end method

.method public static list(Lcom/transsion/liblan/interfaces/ITranLibLAN;I)[Lcom/transsion/liblan/TranMediaDiscoverer$Description;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/transsion/liblan/TranMediaDiscoverer;->nativeList(Lcom/transsion/liblan/interfaces/ITranLibLAN;I)[Lcom/transsion/liblan/TranMediaDiscoverer$Description;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeList(Lcom/transsion/liblan/interfaces/ITranLibLAN;I)[Lcom/transsion/liblan/TranMediaDiscoverer$Description;
.end method

.method private native nativeNew(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public bridge synthetic getInstance()J
    .locals 2

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaList()Lcom/transsion/liblan/TranMediaList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaDiscoverer;->mMediaList:Lcom/transsion/liblan/TranMediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->retain()Z

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaDiscoverer;->mMediaList:Lcom/transsion/liblan/TranMediaList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/transsion/liblan/TranMediaList;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/TranMediaList;-><init>(Lcom/transsion/liblan/TranMediaDiscoverer;)V

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaDiscoverer;->mMediaList:Lcom/transsion/liblan/TranMediaList;

    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->retain()Z

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaDiscoverer;->mMediaList:Lcom/transsion/liblan/TranMediaList;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
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

.method public onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p0, 0x500

    if-eq p1, p0, :cond_0

    const/16 p0, 0x501

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/TranMediaDiscoverer;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNativeItem()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaDiscoverer;->mMediaList:Lcom/transsion/liblan/TranMediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaList;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaDiscoverer;->nativeRelease()V

    return-void
.end method

.method public setEventListener(Lcom/transsion/liblan/TranMediaDiscoverer$EventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;)V

    return-void
.end method

.method public start()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaDiscoverer;->nativeStart()Z

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

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaDiscoverer;->nativeStop()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDiscoverer is released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
