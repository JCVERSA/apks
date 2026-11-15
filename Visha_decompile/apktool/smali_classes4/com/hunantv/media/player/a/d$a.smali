.class Lcom/hunantv/media/player/a/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcom/hunantv/media/player/a/d$b;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/a/d$a;->a:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/a/d$a;->b:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/a/d$a;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/hunantv/media/player/a/d$a;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/a/d$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/a/d$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsThreadManager-EventHandler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/a/d$a;->a:Z

    iget-object v0, p0, Lcom/hunantv/media/player/a/d$a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/a/d$a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/hunantv/media/player/a/d$a;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/hunantv/media/player/a/d$b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/media/player/a/d$a;->e:Lcom/hunantv/media/player/a/d$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 4
    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/hunantv/media/player/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/a/d$a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/a/d$a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "domainResolve iReleased 1"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hunantv/media/player/a/d$a;->e:Lcom/hunantv/media/player/a/d$b;

    return-void

    :cond_1
    new-instance v0, Lcom/hunantv/media/player/a/a;

    invoke-direct {v0}, Lcom/hunantv/media/player/a/a;-><init>()V

    new-instance v2, Lcom/hunantv/media/player/a/d$a$1;

    invoke-direct {v2, p0}, Lcom/hunantv/media/player/a/d$a$1;-><init>(Lcom/hunantv/media/player/a/d$a;)V

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a$a;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/a/a;->b(I)V

    sget-object v2, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iget-boolean v3, p0, Lcom/hunantv/media/player/a/d$a;->c:Z

    invoke-virtual {v0, p1, v2, v3}, Lcom/hunantv/media/player/a/a;->a(Ljava/lang/String;Lcom/hunantv/media/player/a/a$b;Z)V

    iget-object v2, p0, Lcom/hunantv/media/player/a/d$a;->d:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/hunantv/media/player/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/hunantv/media/player/a/d$a;->a:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/player/a/d$a;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "domainResolve wait in"

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/hunantv/media/player/a/d$a;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v2, p0, Lcom/hunantv/media/player/a/d$a;->a:Z

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/hunantv/media/player/a/d$a;->e:Lcom/hunantv/media/player/a/d$b;

    invoke-direct {p0}, Lcom/hunantv/media/player/a/d$a;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "domainResolve iReleased 2"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/hunantv/media/player/a/a;->b()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->formatIPList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/hunantv/media/player/a/d$a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "domainResolve ips:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/hunantv/media/player/a/d$a;->e:Lcom/hunantv/media/player/a/d$b;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1, v0}, Lcom/hunantv/media/player/a/d$b;->updateIPs(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/32 v1, 0xea60

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d$a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "domainResolve empty out"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/32 v1, 0x927c0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/hunantv/media/player/a/d$a;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "domainResolve invalid"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/a/d$a;->a:Z

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/a/d$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
