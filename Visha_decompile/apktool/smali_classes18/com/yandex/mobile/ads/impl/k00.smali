.class public final Lcom/yandex/mobile/ads/impl/k00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/k00$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/yandex/mobile/ads/impl/t32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/t32<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Random;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i52$d;

.field private final b:Lcom/yandex/mobile/ads/impl/i52$b;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/k00$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/t32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/t32<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yandex/mobile/ads/impl/ei1;

.field private f:Lcom/yandex/mobile/ads/impl/i52;

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwkd;

    invoke-direct {v0}, Lwkd;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/k00;->h:Lcom/yandex/mobile/ads/impl/t32;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/k00;->i:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/k00;->h:Lcom/yandex/mobile/ads/impl/t32;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/k00;-><init>(Lcom/yandex/mobile/ads/impl/t32;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t32;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/t32<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->d:Lcom/yandex/mobile/ads/impl/t32;

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/i52$d;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i52$d;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    .line 5
    new-instance p1, Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i52$b;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->b:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    .line 7
    sget-object p1, Lcom/yandex/mobile/ads/impl/i52;->b:Lcom/yandex/mobile/ads/impl/i52;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->f:Lcom/yandex/mobile/ads/impl/i52;

    return-void
.end method

.method private a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/k00$a;
    .locals 13
    .param p2    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/k00$a;

    .line 12
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->c(Lcom/yandex/mobile/ads/impl/k00$a;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 13
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->b(Lcom/yandex/mobile/ads/impl/k00$a;)I

    move-result v5

    if-ne p1, v5, :cond_1

    if-eqz p2, :cond_1

    .line 14
    iget-wide v5, p2, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    invoke-static {v4, v5, v6}, Lcom/yandex/mobile/ads/impl/k00$a;->h(Lcom/yandex/mobile/ads/impl/k00$a;J)V

    :cond_1
    if-nez p2, :cond_2

    .line 15
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->b(Lcom/yandex/mobile/ads/impl/k00$a;)I

    move-result v5

    if-ne p1, v5, :cond_0

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->d(Lcom/yandex/mobile/ads/impl/k00$a;)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v5

    if-nez v5, :cond_3

    .line 17
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v5, p2, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->c(Lcom/yandex/mobile/ads/impl/k00$a;)J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_0

    goto :goto_1

    .line 18
    :cond_3
    iget-wide v9, p2, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    iget-wide v11, v5, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    cmp-long v6, v9, v11

    if-nez v6, :cond_0

    iget v6, p2, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    iget v9, v5, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    if-ne v6, v9, :cond_0

    iget v6, p2, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    iget v5, v5, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    if-ne v6, v5, :cond_0

    .line 19
    :goto_1
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->c(Lcom/yandex/mobile/ads/impl/k00$a;)J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_5

    cmp-long v7, v5, v2

    if-gez v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez v7, :cond_0

    .line 20
    sget v5, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 21
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->d(Lcom/yandex/mobile/ads/impl/k00$a;)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/k00$a;->d(Lcom/yandex/mobile/ads/impl/k00$a;)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_5
    :goto_2
    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->d:Lcom/yandex/mobile/ads/impl/t32;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/t32;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/yandex/mobile/ads/impl/k00$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/yandex/mobile/ads/impl/k00$a;-><init>(Lcom/yandex/mobile/ads/impl/k00;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/vw0$b;)V

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v1
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    .line 8
    new-array v0, v0, [B

    .line 9
    sget-object v1, Lcom/yandex/mobile/ads/impl/k00;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 10
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/yandex/mobile/ads/impl/ld$a;)V
    .locals 6

    .line 2
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/k00$a;

    .line 5
    iget v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/k00;->a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/k00$a;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/k00;->c(Lcom/yandex/mobile/ads/impl/ld$a;)V

    .line 9
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->c(Lcom/yandex/mobile/ads/impl/k00$a;)J

    move-result-wide v1

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v4, v3, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->d(Lcom/yandex/mobile/ads/impl/k00$a;)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    iget v2, v3, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    iget v1, v3, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    if-eq v0, v1, :cond_2

    .line 11
    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    invoke-direct {v0, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/vw0$b;-><init>(Ljava/lang/Object;J)V

    .line 12
    iget p1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/k00;->a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/k00$a;

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/k00;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->b:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object p1

    iget p1, p1, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/k00;->a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/k00$a;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object p1
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

.method public final a(Lcom/yandex/mobile/ads/impl/ei1;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    return-void
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/ld$a;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/k00$a;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->e(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/nw0;

    invoke-virtual {v2, p1, v1}, Lcom/yandex/mobile/ads/impl/nw0;->b(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/ld$a;I)V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 31
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/k00$a;

    .line 33
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/ld$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 35
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->e(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    .line 37
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->f(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 38
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    .line 39
    :cond_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/nw0;

    invoke-virtual {v2, p1, v1}, Lcom/yandex/mobile/ads/impl/nw0;->b(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/k00;->b(Lcom/yandex/mobile/ads/impl/ld$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/yandex/mobile/ads/impl/ld$a;)V
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/k00$a;

    .line 6
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->c(Lcom/yandex/mobile/ads/impl/k00$a;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 8
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->b(Lcom/yandex/mobile/ads/impl/k00$a;)I

    move-result v0

    iget v2, p1, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/rw0;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget v0, p1, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/k00;->a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/k00$a;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 13
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    .line 14
    :cond_3
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-wide v5, v3, Lcom/yandex/mobile/ads/impl/rw0;->d:J

    iget v3, v3, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/yandex/mobile/ads/impl/vw0$b;-><init>(IJLjava/lang/Object;)V

    .line 16
    iget v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    .line 17
    invoke-direct {p0, v3, v1}, Lcom/yandex/mobile/ads/impl/k00;->a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/k00$a;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/k00$a;->e(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 19
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/k00$a;->i(Lcom/yandex/mobile/ads/impl/k00$a;Z)V

    .line 20
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/k00;->b:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    .line 21
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->b:Lcom/yandex/mobile/ads/impl/i52$b;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget v3, v3, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    .line 22
    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/i52$b;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/impl/f92;->b(J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->b:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 23
    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/i52$b;->f:J

    .line 24
    invoke-static {v5, v6}, Lcom/yandex/mobile/ads/impl/f92;->b(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x0

    .line 25
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 26
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :cond_4
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->e(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 28
    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/k00$a;->i(Lcom/yandex/mobile/ads/impl/k00$a;Z)V

    .line 29
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    :cond_5
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->f(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 31
    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/k00$a;->j(Lcom/yandex/mobile/ads/impl/k00$a;Z)V

    .line 32
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/nw0;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/nw0;->a(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/yandex/mobile/ads/impl/ld$a;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k00;->f:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->f:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k00;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/k00$a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/k00;->f:Lcom/yandex/mobile/ads/impl/i52;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/k00$a;->b(Lcom/yandex/mobile/ads/impl/k00$a;)I

    move-result v4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->b()I

    move-result v5

    const/4 v6, -0x1

    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/i52;->b()I

    move-result v5

    if-ge v4, v5, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    iget-object v5, v2, Lcom/yandex/mobile/ads/impl/k00$a;->g:Lcom/yandex/mobile/ads/impl/k00;

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/k00;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/k00$a;->g:Lcom/yandex/mobile/ads/impl/k00;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/k00;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    iget v4, v4, Lcom/yandex/mobile/ads/impl/i52$d;->p:I

    :goto_1
    iget-object v5, v2, Lcom/yandex/mobile/ads/impl/k00$a;->g:Lcom/yandex/mobile/ads/impl/k00;

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/k00;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    iget v5, v5, Lcom/yandex/mobile/ads/impl/i52$d;->q:I

    if-gt v4, v5, :cond_3

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v6, :cond_2

    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/k00$a;->g:Lcom/yandex/mobile/ads/impl/k00;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/k00;->b:Lcom/yandex/mobile/ads/impl/i52$b;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v7}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$b;Z)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v4

    iget v4, v4, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_2
    invoke-static {v2, v4}, Lcom/yandex/mobile/ads/impl/k00$a;->g(Lcom/yandex/mobile/ads/impl/k00$a;I)V

    if-ne v4, v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/k00$a;->d(Lcom/yandex/mobile/ads/impl/k00$a;)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v6, :cond_6

    :goto_3
    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/ld$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/k00$a;->e(Lcom/yandex/mobile/ads/impl/k00$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/yandex/mobile/ads/impl/k00;->g:Ljava/lang/String;

    :cond_7
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/k00;->e:Lcom/yandex/mobile/ads/impl/ei1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/k00$a;->a(Lcom/yandex/mobile/ads/impl/k00$a;)Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/nw0;

    invoke-virtual {v3, p1, v2}, Lcom/yandex/mobile/ads/impl/nw0;->b(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/k00;->b(Lcom/yandex/mobile/ads/impl/ld$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
