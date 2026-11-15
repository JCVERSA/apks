.class public Lcom/hunantv/media/player/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/a/d$a;,
        Lcom/hunantv/media/player/a/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Lcom/hunantv/media/player/a/d$a;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcom/hunantv/media/player/a/d$b;

.field private f:Lcom/hunantv/media/player/a/d$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/a/d;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/a/d;->d:Ljava/lang/Object;

    new-instance v0, Lcom/hunantv/media/player/a/d$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/a/d$1;-><init>(Lcom/hunantv/media/player/a/d;)V

    iput-object v0, p0, Lcom/hunantv/media/player/a/d;->e:Lcom/hunantv/media/player/a/d$b;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/a/d;)Lcom/hunantv/media/player/a/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/a/d;->f:Lcom/hunantv/media/player/a/d$b;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/a/d;->f:Lcom/hunantv/media/player/a/d$b;

    return-object p0
.end method

.method public a()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/hunantv/media/player/a/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start in"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/hunantv/media/player/a/d;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mgtvmp_jDns"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/hunantv/media/player/a/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/hunantv/media/player/a/d$a;

    iget-object v2, p0, Lcom/hunantv/media/player/a/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hunantv/media/player/a/d;->c:Z

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/a/d$a;-><init>(Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/hunantv/media/player/a/d;->b:Lcom/hunantv/media/player/a/d$a;

    iget-object v2, p0, Lcom/hunantv/media/player/a/d;->e:Lcom/hunantv/media/player/a/d$b;

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/a/d$a;->a(Lcom/hunantv/media/player/a/d$b;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start success"

    :goto_0
    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start already"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start error"

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "start out"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/hunantv/media/player/a/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send addDomain Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/a/d;->b:Lcom/hunantv/media/player/a/d$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/player/a/d$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/hunantv/media/player/a/d;->b:Lcom/hunantv/media/player/a/d$a;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/hunantv/media/player/a/d;->c:Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/a/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release in"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/hunantv/media/player/a/d;->b:Lcom/hunantv/media/player/a/d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/player/a/d$a;->a()V

    iput-object v2, p0, Lcom/hunantv/media/player/a/d;->b:Lcom/hunantv/media/player/a/d$a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/a/d;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/hunantv/media/player/a/d;->a:Landroid/os/HandlerThread;

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release success"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "release exception"

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "release out"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
