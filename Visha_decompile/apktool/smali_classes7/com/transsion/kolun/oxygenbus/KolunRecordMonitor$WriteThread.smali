.class public Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteThread"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private isRunning:Z

.field private lock:Ljava/lang/Object;

.field private mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;


# direct methods
.method public constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->this$0:Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->isRunning:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->filePath:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "monitor_file.log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->filePath:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public awake()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteLogFile()V
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public enqueue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->awake()V

    :cond_0
    return-void
.end method

.method public exist()Z
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->exist()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isExitLogFile()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->isRunning:Z

    return p0
.end method

.method public recordStringLog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    new-instance p0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->isRunning:Z

    :goto_1
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->recordStringLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->isRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunRecordMonitor$WriteThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    monitor-exit v0

    goto :goto_0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
