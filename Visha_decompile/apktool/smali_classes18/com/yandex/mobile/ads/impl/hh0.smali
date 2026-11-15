.class public final Lcom/yandex/mobile/ads/impl/hh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hh0$a;,
        Lcom/yandex/mobile/ads/impl/hh0$b;,
        Lcom/yandex/mobile/ads/impl/hh0$c;
    }
.end annotation


# static fields
.field private static final C:Lcom/yandex/mobile/ads/impl/zx1;


# instance fields
.field private final A:Lcom/yandex/mobile/ads/impl/hh0$c;

.field private final B:Ljava/util/LinkedHashSet;

.field private final a:Z

.field private final b:Lcom/yandex/mobile/ads/impl/hh0$b;

.field private final c:Ljava/util/LinkedHashMap;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/yandex/mobile/ads/impl/l42;

.field private final i:Lcom/yandex/mobile/ads/impl/k42;

.field private final j:Lcom/yandex/mobile/ads/impl/k42;

.field private final k:Lcom/yandex/mobile/ads/impl/k42;

.field private final l:Lcom/yandex/mobile/ads/impl/cn1;

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private final s:Lcom/yandex/mobile/ads/impl/zx1;

.field private t:Lcom/yandex/mobile/ads/impl/zx1;

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private final y:Ljava/net/Socket;

.field private final z:Lcom/yandex/mobile/ads/impl/ph0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/zx1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/zx1;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/zx1;->a(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/zx1;->a(II)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hh0;->C:Lcom/yandex/mobile/ads/impl/zx1;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hh0$a;)V
    .locals 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->a:Z

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->c()Lcom/yandex/mobile/ads/impl/hh0$b;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->b:Lcom/yandex/mobile/ads/impl/hh0$b;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->f:I

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->i()Lcom/yandex/mobile/ads/impl/l42;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->h:Lcom/yandex/mobile/ads/impl/l42;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l42;->e()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v3

    iput-object v3, p0, Lcom/yandex/mobile/ads/impl/hh0;->i:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l42;->e()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v4

    iput-object v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->j:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l42;->e()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->k:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->e()Lcom/yandex/mobile/ads/impl/cn1;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->l:Lcom/yandex/mobile/ads/impl/cn1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/zx1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/zx1;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v4, v5}, Lcom/yandex/mobile/ads/impl/zx1;->a(II)V

    :cond_1
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->s:Lcom/yandex/mobile/ads/impl/zx1;

    sget-object v2, Lcom/yandex/mobile/ads/impl/hh0;->C:Lcom/yandex/mobile/ads/impl/zx1;

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->t:Lcom/yandex/mobile/ads/impl/zx1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zx1;->b()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->x:J

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->g()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->y:Ljava/net/Socket;

    new-instance v2, Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->f()Lokio/BufferedSink;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/yandex/mobile/ads/impl/ph0;-><init>(Lokio/BufferedSink;Z)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/hh0$c;

    new-instance v4, Lcom/yandex/mobile/ads/impl/nh0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->h()Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/yandex/mobile/ads/impl/nh0;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v2, p0, v4}, Lcom/yandex/mobile/ads/impl/hh0$c;-><init>(Lcom/yandex/mobile/ads/impl/hh0;Lcom/yandex/mobile/ads/impl/nh0;)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->A:Lcom/yandex/mobile/ads/impl/hh0$c;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->B:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->d()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hh0$a;->d()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/hh0$h;

    invoke-direct {v0, p1, p0, v4, v5}, Lcom/yandex/mobile/ads/impl/hh0$h;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;J)V

    invoke-virtual {v3, v0, v4, v5}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hh0;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->q:J

    return-wide v0
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/zx1;
    .locals 1

    .line 106
    sget-object v0, Lcom/yandex/mobile/ads/impl/hh0;->C:Lcom/yandex/mobile/ads/impl/zx1;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hh0;J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->q:J

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/hh0;Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->e:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p0, v0, v0, p1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/hh0;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->B:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/hh0;J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->p:J

    return-void
.end method

.method public static b(I)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/hh0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->p:J

    return-wide v0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/hh0;J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->m:J

    return-void
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/hh0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->m:J

    return-wide v0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/hh0;J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->n:J

    return-void
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/hh0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->n:J

    return-wide v0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/hh0;J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->x:J

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/cn1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->l:Lcom/yandex/mobile/ads/impl/cn1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/k42;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->k:Lcom/yandex/mobile/ads/impl/k42;

    return-object p0
.end method

.method public static final synthetic h(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/l42;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->h:Lcom/yandex/mobile/ads/impl/l42;

    return-object p0
.end method

.method public static final synthetic i(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/k42;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->i:Lcom/yandex/mobile/ads/impl/k42;

    return-object p0
.end method

.method public static final synthetic j(Lcom/yandex/mobile/ads/impl/hh0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->g:Z

    return p0
.end method

.method public static final synthetic k(Lcom/yandex/mobile/ads/impl/hh0;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->g:Z

    return-void
.end method

.method public static l(Lcom/yandex/mobile/ads/impl/hh0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/yandex/mobile/ads/impl/l42;->h:Lcom/yandex/mobile/ads/impl/l42;

    .line 11
    const-string v1, "taskRunner"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ph0;->a()V

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->s:Lcom/yandex/mobile/ads/impl/zx1;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ph0;->b(Lcom/yandex/mobile/ads/impl/zx1;)V

    .line 14
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->s:Lcom/yandex/mobile/ads/impl/zx1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zx1;->b()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 15
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/yandex/mobile/ads/impl/ph0;->a(IJ)V

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l42;->e()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->A:Lcom/yandex/mobile/ads/impl/hh0$c;

    .line 17
    new-instance v2, Lcom/yandex/mobile/ads/impl/j42;

    invoke-direct {v2, v1, p0}, Lcom/yandex/mobile/ads/impl/j42;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0$c;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Lcom/yandex/mobile/ads/impl/oh0;
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/oh0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;Z)Lcom/yandex/mobile/ads/impl/oh0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    xor-int/lit8 v7, p2, 0x1

    .line 29
    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    monitor-enter v8

    .line 30
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->f:I

    const v2, 0x3fffffff    # 1.9999999f

    if-le v1, v2, :cond_0

    .line 32
    sget-object v1, Lcom/yandex/mobile/ads/impl/t50;->h:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->g:Z

    if-nez v1, :cond_5

    .line 34
    iget v9, p0, Lcom/yandex/mobile/ads/impl/hh0;->f:I

    add-int/lit8 v1, v9, 0x2

    .line 35
    iput v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->f:I

    .line 36
    new-instance v10, Lcom/yandex/mobile/ads/impl/oh0;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v2, v9

    move-object v3, p0

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/oh0;-><init>(ILcom/yandex/mobile/ads/impl/hh0;ZZLcom/yandex/mobile/ads/impl/qf0;)V

    if-eqz p2, :cond_2

    .line 37
    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->w:J

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/hh0;->x:J

    cmp-long p2, v1, v3

    if-gez p2, :cond_2

    .line 38
    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/oh0;->n()J

    move-result-wide v1

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/oh0;->m()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/oh0;->q()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 40
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_3
    sget-object p2, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    monitor-exit p0

    .line 43
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p2, v9, p1, v7}, Lcom/yandex/mobile/ads/impl/ph0;->a(ILjava/util/ArrayList;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    monitor-exit v8

    if-eqz v0, :cond_4

    .line 45
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ph0;->flush()V

    :cond_4
    return-object v10

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 46
    :cond_5
    :try_start_3
    new-instance p1, Lcom/yandex/mobile/ads/impl/qr;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/qr;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :goto_2
    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :goto_3
    monitor-exit v8

    throw p0
.end method

.method public final a(IILokio/BufferedSource;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "source"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p2

    .line 51
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 52
    invoke-interface {p3, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 53
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/hh0;->j:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] onData"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v0, Lcom/yandex/mobile/ads/impl/lh0;

    move-object v1, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/lh0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;ILokio/Buffer;IZ)V

    const-wide/16 p0, 0x0

    invoke-virtual {p3, v0, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ph0;->a(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    sget-object p2, Lcom/yandex/mobile/ads/impl/t50;->e:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p0, p2, p2, p1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final a(IJ)V
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->i:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    new-instance v1, Lcom/yandex/mobile/ads/impl/hh0$j;

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/hh0$j;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;IJ)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/t50;)V
    .locals 3

    .line 68
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->j:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onReset"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/yandex/mobile/ads/impl/hh0$f;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;ILcom/yandex/mobile/ads/impl/t50;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/lf0;",
            ">;)V"
        }
    .end annotation

    .line 58
    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->B:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object p2, Lcom/yandex/mobile/ads/impl/t50;->e:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->c(ILcom/yandex/mobile/ads/impl/t50;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->B:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    .line 65
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->j:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onRequest"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/yandex/mobile/ads/impl/hh0$e;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0$e;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;ILjava/util/List;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void

    .line 67
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/lf0;",
            ">;Z)V"
        }
    .end annotation

    .line 55
    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->j:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onHeaders"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    new-instance v1, Lcom/yandex/mobile/ads/impl/hh0$d;

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/hh0$d;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;ILjava/util/List;Z)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method

.method public final a(IZLokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 87
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p0, p2, p1, p3, v3}, Lcom/yandex/mobile/ads/impl/ph0;->a(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 88
    monitor-enter p0

    .line 89
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->w:J

    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/hh0;->x:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 92
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    .line 93
    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 94
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ph0;->b()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 95
    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->w:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->w:J

    .line 96
    sget-object v4, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    sub-long/2addr p4, v6

    .line 98
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lcom/yandex/mobile/ads/impl/ph0;->a(ZILokio/Buffer;I)V

    goto :goto_0

    .line 99
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 100
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t50;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-string v0, "statusCode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 76
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 78
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 79
    :try_start_3
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->g:Z

    .line 80
    iget v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->e:I

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 81
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    monitor-exit p0

    .line 83
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    invoke-virtual {p0, v2, p1, v1}, Lcom/yandex/mobile/ads/impl/ph0;->a(ILcom/yandex/mobile/ads/impl/t50;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 85
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V
    .locals 3

    .line 5
    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " MUST NOT hold lock on "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    monitor-enter p0

    .line 10
    :try_start_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 12
    new-array v1, v0, [Lcom/yandex/mobile/ads/impl/oh0;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    .line 14
    :goto_1
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    check-cast p1, [Lcom/yandex/mobile/ads/impl/oh0;

    if-eqz p1, :cond_3

    .line 17
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 18
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ph0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 20
    :catch_2
    :try_start_4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->y:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 21
    :catch_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->i:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/k42;->j()V

    .line 22
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->j:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/k42;->j()V

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->k:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k42;->j()V

    return-void

    .line 24
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zx1;)V
    .locals 1

    .line 71
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->t:Lcom/yandex/mobile/ads/impl/zx1;

    return-void
.end method

.method public final declared-synchronized a(J)Z
    .locals 6

    monitor-enter p0

    .line 26
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 27
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->p:J

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/hh0;->o:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, p1, v2

    if-ltz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(ILcom/yandex/mobile/ads/impl/t50;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    const-string v0, "statusCode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ph0;->a(ILcom/yandex/mobile/ads/impl/t50;)V

    return-void
.end method

.method public final declared-synchronized b(J)V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->u:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->u:J

    .line 6
    iget-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->v:J

    sub-long/2addr v0, p1

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->s:Lcom/yandex/mobile/ads/impl/zx1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zx1;->b()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(IJ)V

    .line 9
    iget-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->v:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->a:Z

    return p0
.end method

.method public final declared-synchronized c(I)Lcom/yandex/mobile/ads/impl/oh0;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/oh0;

    .line 5
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c(ILcom/yandex/mobile/ads/impl/t50;)V
    .locals 3

    .line 6
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->i:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/yandex/mobile/ads/impl/hh0$i;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0$i;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;ILcom/yandex/mobile/ads/impl/t50;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->d:Lcom/yandex/mobile/ads/impl/t50;

    sget-object v1, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    return-void
.end method

.method public final d()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->e:I

    return p0
.end method

.method public final d(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/yandex/mobile/ads/impl/hh0;->e:I

    return-void
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/hh0$b;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->b:Lcom/yandex/mobile/ads/impl/hh0$b;

    return-object p0
.end method

.method public final f()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->f:I

    return p0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ph0;->flush()V

    return-void
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/zx1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->s:Lcom/yandex/mobile/ads/impl/zx1;

    return-object p0
.end method

.method public final h()Lcom/yandex/mobile/ads/impl/zx1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->t:Lcom/yandex/mobile/ads/impl/zx1;

    return-object p0
.end method

.method public final i()Ljava/util/LinkedHashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->c:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final j()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->x:J

    return-wide v0
.end method

.method public final k()Lcom/yandex/mobile/ads/impl/ph0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0;->z:Lcom/yandex/mobile/ads/impl/ph0;

    return-object p0
.end method

.method public final l()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->p:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 3
    :try_start_1
    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/hh0;->o:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->r:J

    .line 5
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0;->i:Lcom/yandex/mobile/ads/impl/k42;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ping"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/yandex/mobile/ads/impl/hh0$g;

    invoke-direct {v2, v1, p0}, Lcom/yandex/mobile/ads/impl/hh0$g;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method
