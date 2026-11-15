.class public Lcom/transsion/videodownloader/utils/WorkerThreadHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videodownloader/utils/WorkerThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhpc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler$a;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    new-instance p0, Lcom/transsion/videodownloader/utils/WorkerThreadHandler$MediaWorkerThread;

    invoke-direct {p0, p1}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler$MediaWorkerThread;-><init>(Ljava/lang/Runnable;)V

    return-object p0
.end method
