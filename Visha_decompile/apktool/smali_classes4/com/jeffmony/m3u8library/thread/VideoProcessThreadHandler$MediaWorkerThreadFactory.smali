.class Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler$MediaWorkerThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaWorkerThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls4c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler$MediaWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    new-instance p0, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler$MediaWorkerThread;

    invoke-direct {p0, p1}, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler$MediaWorkerThread;-><init>(Ljava/lang/Runnable;)V

    return-object p0
.end method
