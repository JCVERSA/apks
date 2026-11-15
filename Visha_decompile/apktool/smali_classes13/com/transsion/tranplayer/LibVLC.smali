.class public Lcom/transsion/tranplayer/LibVLC;
.super Lcom/transsion/tranplayer/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/LibVLC$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/tranplayer/VLCObject<",
        "Lcom/transsion/tranplayer/LibVLC$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VLC/LibVLC"

.field private static ffmpegLoadOK:Z = false

.field private static sLoaded:Z = false


# instance fields
.field final mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/transsion/tranplayer/LibVLC;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/tranplayer/VLCObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tranplayer/LibVLC;->mAppContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/transsion/tranplayer/LibVLC;->loadLibraries()V

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "--android-display-chroma"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    const-string v6, "--aout="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v5

    .line 7
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v5

    :cond_3
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_8

    :cond_5
    if-eqz v1, :cond_7

    .line 8
    invoke-static {}, Lcom/transsion/tranplayer/util/HWDecoderUtil;->getAudioOutputFromDevice()Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    if-ne v0, v1, :cond_6

    .line 10
    const-string v0, "--aout=opensles"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_6
    const-string v0, "--aout=android_audiotrack"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    if-eqz v2, :cond_8

    .line 12
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v0, "RV16"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_8
    sget-boolean v0, Lcom/transsion/tranplayer/LibVLC;->ffmpegLoadOK:Z

    if-eqz v0, :cond_9

    .line 15
    const-string v0, "--ffmpegloadOK"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string v0, "vlc"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/tranplayer/LibVLC;->nativeNew([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized loadLibraries()V
    .locals 6

    const-class v0, Lcom/transsion/tranplayer/LibVLC;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/transsion/tranplayer/LibVLC;->sLoaded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/transsion/tranplayer/LibVLC;->ffmpegLoadOK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :try_start_1
    sput-boolean v2, Lcom/transsion/tranplayer/LibVLC;->sLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "vlcffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "vlc"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "vlcjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_3
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered a security issue when loading vlcjni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    :goto_1
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load vlcjni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private native nativeNew([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetUserAgent(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public native changeset()Ljava/lang/String;
.end method

.method public native compiler()Ljava/lang/String;
.end method

.method public getFFmpegLoadState()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/tranplayer/LibVLC;->ffmpegLoadOK:Z

    return p0
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/LibVLC$Event;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/tranplayer/LibVLC;->onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/LibVLC$Event;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNative()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/LibVLC;->nativeRelease()V

    return-void
.end method

.method public bridge synthetic setPinPVideoMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/tranplayer/VLCObject;->setPinPVideoMode(Z)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/LibVLC;->nativeSetUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native version()Ljava/lang/String;
.end method
