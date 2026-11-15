.class public Lcom/transsion/tranplayer/MediaDiscoverer;
.super Lcom/transsion/tranplayer/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/MediaDiscoverer$EventListener;,
        Lcom/transsion/tranplayer/MediaDiscoverer$Description;,
        Lcom/transsion/tranplayer/MediaDiscoverer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/tranplayer/VLCObject<",
        "Lcom/transsion/tranplayer/MediaDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaDiscoverer"


# instance fields
.field private mMediaList:Lcom/transsion/tranplayer/MediaList;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCObject;-><init>(Lcom/transsion/tranplayer/LibVLC;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/MediaDiscoverer;->mMediaList:Lcom/transsion/tranplayer/MediaList;

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/MediaDiscoverer;->nativeNew(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/tranplayer/MediaDiscoverer$Description;
    .locals 2

    new-instance v0, Lcom/transsion/tranplayer/MediaDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/transsion/tranplayer/MediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/tranplayer/MediaDiscoverer$1;)V

    return-object v0
.end method

.method public static list(Lcom/transsion/tranplayer/LibVLC;I)[Lcom/transsion/tranplayer/MediaDiscoverer$Description;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/transsion/tranplayer/MediaDiscoverer;->nativeList(Lcom/transsion/tranplayer/LibVLC;I)[Lcom/transsion/tranplayer/MediaDiscoverer$Description;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeList(Lcom/transsion/tranplayer/LibVLC;I)[Lcom/transsion/tranplayer/MediaDiscoverer$Description;
.end method

.method private native nativeNew(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public getMediaList()Lcom/transsion/tranplayer/MediaList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaDiscoverer;->mMediaList:Lcom/transsion/tranplayer/MediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/VLCObject;->retain()Z

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaDiscoverer;->mMediaList:Lcom/transsion/tranplayer/MediaList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/transsion/tranplayer/MediaList;

    invoke-direct {v0, p0}, Lcom/transsion/tranplayer/MediaList;-><init>(Lcom/transsion/tranplayer/MediaDiscoverer;)V

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaDiscoverer;->mMediaList:Lcom/transsion/tranplayer/MediaList;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/VLCObject;->retain()Z

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaDiscoverer;->mMediaList:Lcom/transsion/tranplayer/MediaList;

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

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/MediaDiscoverer$Event;
    .locals 0

    const/16 p0, 0x500

    if-eq p1, p0, :cond_0

    const/16 p0, 0x501

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/tranplayer/MediaDiscoverer$Event;

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaDiscoverer$Event;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/tranplayer/MediaDiscoverer;->onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/MediaDiscoverer$Event;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNative()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaDiscoverer;->mMediaList:Lcom/transsion/tranplayer/MediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaList;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaDiscoverer;->nativeRelease()V

    return-void
.end method

.method public setEventListener(Lcom/transsion/tranplayer/MediaDiscoverer$EventListener;)V
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

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaDiscoverer;->nativeStart()Z

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

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaDiscoverer;->nativeStop()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDiscoverer is released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
