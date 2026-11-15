.class public Lcom/transsion/log/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Lcom/transsion/log/common/a;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/transsion/log/common/LoganThread;

.field public k:Ljava/text/SimpleDateFormat;

.field public l:Lsr3;

.field public m:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lwdb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/transsion/log/common/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/log/common/a;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lwdb;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LoganControlCenter"

    const-string v1, "config\'s param is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lwdb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    iget-object v0, p1, Lwdb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/log/common/a;->b:Ljava/lang/String;

    iget-wide v0, p1, Lwdb;->e:J

    iput-wide v0, p0, Lcom/transsion/log/common/a;->d:J

    iget-wide v0, p1, Lwdb;->g:J

    iput-wide v0, p0, Lcom/transsion/log/common/a;->f:J

    iget-wide v0, p1, Lwdb;->c:J

    iput-wide v0, p0, Lcom/transsion/log/common/a;->e:J

    iget-wide v0, p1, Lwdb;->f:J

    iput-wide v0, p0, Lcom/transsion/log/common/a;->g:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lwdb;->j:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/transsion/log/common/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lwdb;->k:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/transsion/log/common/a;->i:Ljava/lang/String;

    iget-object v0, p1, Lwdb;->h:Lsr3;

    iput-object v0, p0, Lcom/transsion/log/common/a;->l:Lsr3;

    iget-wide v0, p1, Lwdb;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/log/common/a;->m:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/transsion/log/common/a;->e()V

    return-void
.end method

.method public static f(Lwdb;)Lcom/transsion/log/common/a;
    .locals 2

    sget-object v0, Lcom/transsion/log/common/a;->n:Lcom/transsion/log/common/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/log/common/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/log/common/a;->n:Lcom/transsion/log/common/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/log/common/a;

    invoke-direct {v1, p0}, Lcom/transsion/log/common/a;-><init>(Lwdb;)V

    sput-object v1, Lcom/transsion/log/common/a;->n:Lcom/transsion/log/common/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/log/common/a;->n:Lcom/transsion/log/common/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, ""

    iget-object v1, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    iget-object p0, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "v_ubt_zip_v1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/log/common/LoganModel;

    invoke-direct {v0}, Lcom/transsion/log/common/LoganModel;-><init>()V

    sget-object v1, Lcom/transsion/log/common/LoganModel$Action;->FLUSH:Lcom/transsion/log/common/LoganModel$Action;

    iput-object v1, v0, Lcom/transsion/log/common/LoganModel;->a:Lcom/transsion/log/common/LoganModel$Action;

    iget-object v1, p0, Lcom/transsion/log/common/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/log/common/a;->j:Lcom/transsion/log/common/LoganThread;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/log/common/LoganThread;->notifyRun()V

    :cond_1
    return-void
.end method

.method public c()Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Lsr3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/common/a;->l:Lsr3;

    return-object p0
.end method

.method public final e()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/log/common/a;->j:Lcom/transsion/log/common/LoganThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/log/common/LoganThread;

    iget-object v3, v0, Lcom/transsion/log/common/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v0, Lcom/transsion/log/common/a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    iget-wide v6, v0, Lcom/transsion/log/common/a;->d:J

    iget-wide v8, v0, Lcom/transsion/log/common/a;->e:J

    iget-wide v10, v0, Lcom/transsion/log/common/a;->f:J

    iget-object v12, v0, Lcom/transsion/log/common/a;->h:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/log/common/a;->i:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/log/common/a;->l:Lsr3;

    iget-object v2, v0, Lcom/transsion/log/common/a;->m:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/transsion/log/common/LoganThread;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Lsr3;J)V

    iput-object v1, v0, Lcom/transsion/log/common/a;->j:Lcom/transsion/log/common/LoganThread;

    const-string v2, "logan-thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/transsion/log/common/a;->j:Lcom/transsion/log/common/LoganThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public g(Lyb9;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/log/common/a;->b()V

    iget-object v0, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/transsion/log/common/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "v_ubt_zip_v1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lyb9;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object p0, p1, Lyb9;->e:Ljava/util/List;

    invoke-static {p0, v0}, Lxu3;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    iput-object v0, p1, Lyb9;->c:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_2
    iput-object v4, p1, Lyb9;->c:Ljava/lang/String;

    return v3
.end method

.method public h(Ljava/lang/String;I)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/log/common/LoganModel;

    invoke-direct {v0}, Lcom/transsion/log/common/LoganModel;-><init>()V

    sget-object v1, Lcom/transsion/log/common/LoganModel$Action;->WRITE:Lcom/transsion/log/common/LoganModel$Action;

    iput-object v1, v0, Lcom/transsion/log/common/LoganModel;->a:Lcom/transsion/log/common/LoganModel$Action;

    new-instance v1, Lopc;

    invoke-direct {v1}, Lopc;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iput-object p1, v1, Lopc;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lopc;->e:J

    iput p2, v1, Lopc;->f:I

    iput-boolean v5, v1, Lopc;->b:Z

    iput-wide v3, v1, Lopc;->c:J

    iput-object v2, v1, Lopc;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/log/common/LoganModel;->b:Lopc;

    iget-object p1, p0, Lcom/transsion/log/common/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    int-to-long p1, p1

    iget-wide v1, p0, Lcom/transsion/log/common/a;->g:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/log/common/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/log/common/a;->j:Lcom/transsion/log/common/LoganThread;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/log/common/LoganThread;->notifyRun()V

    :cond_2
    return-void
.end method
