.class public Lcom/jeffmony/m3u8library/VideoProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mIsLibLoaded:Z = false


# instance fields
.field private mListener:Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/jeffmony/m3u8library/VideoProcessor;->loadLibrariesOnce()V

    return-void
.end method

.method public static native initFFmpegOptions()V
.end method

.method public static loadLibrariesOnce()V
    .locals 2

    const-class v0, Lcom/jeffmony/m3u8library/VideoProcessor;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/jeffmony/m3u8library/VideoProcessor;->mIsLibLoaded:Z

    if-nez v1, :cond_0

    const-string v1, "m3u8Convertor"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "avcodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "avformat"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "avutil"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "swresample"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "swscale"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/jeffmony/m3u8library/VideoProcessor;->mIsLibLoaded:Z

    invoke-static {}, Lcom/jeffmony/m3u8library/VideoProcessor;->initFFmpegOptions()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public invokeVideoTransformProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/jeffmony/m3u8library/VideoProcessor;->mListener:Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;->onTransformProgress(F)V

    :cond_0
    return-void
.end method

.method public setOnVideoTransformProgressListener(Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;)V
    .locals 0
    .param p1    # Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/jeffmony/m3u8library/VideoProcessor;->mListener:Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;

    return-void
.end method

.method public native transformVideo(Ljava/lang/String;Ljava/lang/String;)I
.end method
