.class Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/filechooser/FileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CovertFileThread"
.end annotation


# instance fields
.field private final mJsChannelCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final paths:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;[Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;->mJsChannelCallback:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;->paths:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;[Ljava/lang/String;Lhq3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;-><init>(Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "agentweb-thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;->paths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/just/agentweb/filechooser/FileChooser;->convertFile([Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v1

    invoke-static {v1}, Lcom/just/agentweb/filechooser/FileChooser;->convertFileParcelObjectsToJson(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;->mJsChannelCallback:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;->mJsChannelCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;

    invoke-virtual {p0, v1}, Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw p0
.end method
