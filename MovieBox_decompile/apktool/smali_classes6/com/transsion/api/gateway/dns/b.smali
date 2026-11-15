.class public Lcom/transsion/api/gateway/dns/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/dns/b;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    iget-object v0, p1, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/api/gateway/dns/d;

    .line 8
    iget-object v1, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/transsion/api/gateway/dns/d;

    invoke-direct {v2, v0}, Lcom/transsion/api/gateway/dns/d;-><init>(Lcom/transsion/api/gateway/dns/d;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    iput-object p1, p0, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-class v0, Lcom/transsion/api/gateway/dns/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/api/gateway/dns/d;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    const-class v1, Lcom/transsion/api/gateway/dns/b;

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    :try_start_1
    new-instance v0, Lcom/transsion/api/gateway/dns/d;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2}, Lcom/transsion/api/gateway/dns/d;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    throw p1

    .line 58
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw p1
.end method
