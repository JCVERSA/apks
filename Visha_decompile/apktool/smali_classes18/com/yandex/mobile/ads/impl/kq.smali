.class public final Lcom/yandex/mobile/ads/impl/kq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/iq;
.implements Lcom/yandex/mobile/ads/impl/ps0$a;


# static fields
.field private static final j:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/f72;

.field private final c:Lcom/yandex/mobile/ads/impl/f72;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lq;Lcom/yandex/mobile/ads/impl/mq;Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 2

    const-string v0, "cmpV1"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmpV2"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kq;->b:Lcom/yandex/mobile/ads/impl/f72;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kq;->c:Lcom/yandex/mobile/ads/impl/f72;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq;->values()[Lcom/yandex/mobile/ads/impl/gq;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, p3, v1}, Lcom/yandex/mobile/ads/impl/kq;->a(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/ps0;->a(Lcom/yandex/mobile/ads/impl/ps0$a;)V

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/nq;)V
    .locals 1

    .line 12
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/nq$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/nq$b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nq$b;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/kq;->f:Z

    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/nq$c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/mobile/ads/impl/nq$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nq$c;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kq;->d:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/nq$d;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/yandex/mobile/ads/impl/nq$d;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nq$d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kq;->e:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/nq$e;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/yandex/mobile/ads/impl/nq$e;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nq$e;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kq;->g:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/nq$f;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/yandex/mobile/ads/impl/nq$f;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nq$f;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kq;->h:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_4
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/nq$a;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/yandex/mobile/ads/impl/nq$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nq$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kq;->i:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kq;->c:Lcom/yandex/mobile/ads/impl/f72;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/f72;->a(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)Lcom/yandex/mobile/ads/impl/nq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kq;->b:Lcom/yandex/mobile/ads/impl/f72;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/f72;->a(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)Lcom/yandex/mobile/ads/impl/nq;

    move-result-object v0

    .line 11
    :cond_0
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/kq;->a(Lcom/yandex/mobile/ads/impl/nq;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kq;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ps0;Ljava/lang/String;)V
    .locals 2

    .line 3
    const-string v0, "localStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kq;->c:Lcom/yandex/mobile/ads/impl/f72;

    invoke-interface {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/f72;->a(Lcom/yandex/mobile/ads/impl/ps0;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nq;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kq;->b:Lcom/yandex/mobile/ads/impl/f72;

    invoke-interface {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/f72;->a(Lcom/yandex/mobile/ads/impl/ps0;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nq;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/kq;->a(Lcom/yandex/mobile/ads/impl/nq;)V

    .line 7
    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kq;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kq;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kq;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/kq;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/kq;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kq;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
