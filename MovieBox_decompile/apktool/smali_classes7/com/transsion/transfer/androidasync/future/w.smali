.class public Lcom/transsion/transfer/androidasync/future/w;
.super Lcom/transsion/transfer/androidasync/future/n;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/future/w$a;,
        Lcom/transsion/transfer/androidasync/future/w$b;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/c;

.field private b:Ljava/lang/Exception;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Lcom/transsion/transfer/androidasync/future/w$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/n;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/n;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic A(Lcom/transsion/transfer/androidasync/future/y;Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/transsion/transfer/androidasync/future/y;->then(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/future/w;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private F(Lcom/transsion/transfer/androidasync/future/f;Lcom/transsion/transfer/androidasync/future/w$b;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 7
    .line 8
    .line 9
    instance-of v1, p1, Lcom/transsion/transfer/androidasync/future/w;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/transsion/transfer/androidasync/future/w;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/transfer/androidasync/future/p;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/transsion/transfer/androidasync/future/p;-><init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/w;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v1}, Lcom/transsion/transfer/androidasync/future/w;->D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lcom/transsion/transfer/androidasync/future/q;

    .line 25
    .line 26
    invoke-direct {p2, p0, v0}, Lcom/transsion/transfer/androidasync/future/q;-><init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/w;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object v0
.end method

.method private I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/n;->setComplete()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/w;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/w;->b:Ljava/lang/Exception;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/w;->B()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->s()Lcom/transsion/transfer/androidasync/future/w$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0, p3, p1}, Lcom/transsion/transfer/androidasync/future/w;->r(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public static synthetic b(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->x(Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/z;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->z(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/z;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/transfer/androidasync/future/d;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/future/w;->t(Lcom/transsion/transfer/androidasync/future/d;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/future/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/transfer/androidasync/future/g;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->v(Lcom/transsion/transfer/androidasync/future/g;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/e;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->u(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/e;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/transfer/androidasync/future/y;Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/future/w;->A(Lcom/transsion/transfer/androidasync/future/y;Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->w(Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/transsion/transfer/androidasync/future/x;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->y(Lcom/transsion/transfer/androidasync/future/x;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n(Z)Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/n;->cancel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->b:Ljava/lang/Exception;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/w;->B()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->s()Lcom/transsion/transfer/androidasync/future/w$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/future/w;->d:Z

    .line 25
    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/future/w;->r(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method private q()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->b:Ljava/lang/Exception;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/future/w;->b:Ljava/lang/Exception;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private r(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/w;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/transfer/androidasync/future/w$b;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/future/w$b;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-object p2, p1, Lcom/transsion/transfer/androidasync/future/w$b;->c:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/future/w;->b:Ljava/lang/Exception;

    .line 22
    .line 23
    iput-object p2, p1, Lcom/transsion/transfer/androidasync/future/w$b;->a:Ljava/lang/Exception;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/future/w;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p2, p1, Lcom/transsion/transfer/androidasync/future/w$b;->b:Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/future/w$b;->a()V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method private s()Lcom/transsion/transfer/androidasync/future/w$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->e:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/future/w;->e:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic t(Lcom/transsion/transfer/androidasync/future/d;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/transsion/transfer/androidasync/future/d;->a(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/transsion/transfer/androidasync/future/w;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/future/w;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method private static synthetic u(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/e;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/future/e;->a(Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/future/f;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-direct {p0, p1, p4}, Lcom/transsion/transfer/androidasync/future/w;->F(Lcom/transsion/transfer/androidasync/future/f;Lcom/transsion/transfer/androidasync/future/w$b;)Lcom/transsion/transfer/androidasync/future/f;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static synthetic v(Lcom/transsion/transfer/androidasync/future/g;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/transsion/transfer/androidasync/future/g;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic w(Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private synthetic x(Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, v0}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static synthetic y(Lcom/transsion/transfer/androidasync/future/x;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p3}, Lcom/transsion/transfer/androidasync/future/x;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p2

    .line 8
    :cond_0
    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic z(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/z;Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-direct {p0, p2, v0, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p1, p3}, Lcom/transsion/transfer/androidasync/future/z;->then(Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-direct {p0, p1, p4}, Lcom/transsion/transfer/androidasync/future/w;->F(Lcom/transsion/transfer/androidasync/future/f;Lcom/transsion/transfer/androidasync/future/w$b;)Lcom/transsion/transfer/androidasync/future/f;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-direct {p0, p1, v0, p4}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->a:Lcom/transsion/transfer/androidasync/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/c;->b()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->a:Lcom/transsion/transfer/androidasync/c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public C()Lcom/transsion/transfer/androidasync/future/w;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/n;->reset()Lcom/transsion/transfer/androidasync/future/a;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->b:Ljava/lang/Exception;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->a:Lcom/transsion/transfer/androidasync/c;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->e:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/w;->d:Z

    .line 15
    .line 16
    return-object p0
.end method

.method D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/w;->e:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->s()Lcom/transsion/transfer/androidasync/future/w$a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/androidasync/future/w;->r(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public E(Lcom/transsion/transfer/androidasync/future/f;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/future/w;->F(Lcom/transsion/transfer/androidasync/future/f;Lcom/transsion/transfer/androidasync/future/w$b;)Lcom/transsion/transfer/androidasync/future/f;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public G(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public H(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public J(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0}, Lcom/transsion/transfer/androidasync/future/w;->I(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public a(Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/transsion/transfer/androidasync/future/s;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1}, Lcom/transsion/transfer/androidasync/future/s;-><init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/z;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/transsion/transfer/androidasync/future/w;->D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/w;->d:Z

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/future/w;->n(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/w;->cancel()Z

    move-result p1

    return p1
.end method

.method public e(Lcom/transsion/transfer/androidasync/future/d;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/t;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/future/t;-><init>(Lcom/transsion/transfer/androidasync/future/d;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/future/w;->p(Lcom/transsion/transfer/androidasync/future/e;)Lcom/transsion/transfer/androidasync/future/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public f(Lcom/transsion/transfer/androidasync/future/g;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/transsion/transfer/androidasync/future/w;->D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/transsion/transfer/androidasync/future/o;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/future/o;-><init>(Lcom/transsion/transfer/androidasync/future/g;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/transsion/transfer/androidasync/future/w;->D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/w;->o()Lcom/transsion/transfer/androidasync/c;

    move-result-object v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/c;->a()V

    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->q()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/w;->o()Lcom/transsion/transfer/androidasync/c;

    move-result-object v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/c;->c(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->q()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;->q()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 17
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/r;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/future/r;-><init>(Lcom/transsion/transfer/androidasync/future/y;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/future/w;->a(Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public j(Lcom/transsion/transfer/androidasync/future/x;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/transsion/transfer/androidasync/future/v;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Lcom/transsion/transfer/androidasync/future/v;-><init>(Lcom/transsion/transfer/androidasync/future/x;Lcom/transsion/transfer/androidasync/future/w;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/transsion/transfer/androidasync/future/w;->D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method o()Lcom/transsion/transfer/androidasync/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->a:Lcom/transsion/transfer/androidasync/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/transfer/androidasync/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->a:Lcom/transsion/transfer/androidasync/c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w;->a:Lcom/transsion/transfer/androidasync/c;

    .line 13
    .line 14
    return-object v0
.end method

.method public p(Lcom/transsion/transfer/androidasync/future/e;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/transsion/transfer/androidasync/future/u;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1}, Lcom/transsion/transfer/androidasync/future/u;-><init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/future/e;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/transsion/transfer/androidasync/future/w;->D(Lcom/transsion/transfer/androidasync/future/w$b;Lcom/transsion/transfer/androidasync/future/w$a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic reset()Lcom/transsion/transfer/androidasync/future/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/w;->C()Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public setComplete()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public setParent(Lcom/transsion/transfer/androidasync/future/a;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/future/n;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
