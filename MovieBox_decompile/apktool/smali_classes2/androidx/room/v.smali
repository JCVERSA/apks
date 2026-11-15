.class public final Landroidx/room/v;
.super Landroidx/room/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/v$a;,
        Landroidx/room/v$b;
    }
.end annotation


# instance fields
.field private final d:Landroidx/room/c;

.field private final e:Landroidx/room/f0;

.field private final f:Ljava/util/List;

.field private final g:Landroidx/room/coroutines/ConnectionPool;

.field private h:Lz3/d;


# direct methods
.method public constructor <init>(Landroidx/room/c;Landroidx/room/f0;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/room/a;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/v;->d:Landroidx/room/c;

    .line 3
    iput-object p2, p0, Landroidx/room/v;->e:Landroidx/room/f0;

    .line 4
    iget-object v0, p1, Landroidx/room/c;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/room/v;->f:Ljava/util/List;

    .line 5
    iget-object v0, p1, Landroidx/room/c;->u:Ly3/c;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p1, Landroidx/room/c;->c:Lz3/e$c;

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lz3/e$b;->f:Lz3/e$b$b;

    iget-object v1, p1, Landroidx/room/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lz3/e$b$b;->a(Landroid/content/Context;)Lz3/e$b$a;

    move-result-object v0

    .line 8
    iget-object v1, p1, Landroidx/room/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz3/e$b$a;->d(Ljava/lang/String;)Lz3/e$b$a;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/room/v$b;

    invoke-virtual {p2}, Landroidx/room/f0;->e()I

    move-result p2

    invoke-direct {v1, p0, p2}, Landroidx/room/v$b;-><init>(Landroidx/room/v;I)V

    invoke-virtual {v0, v1}, Lz3/e$b$a;->c(Lz3/e$a;)Lz3/e$b$a;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lz3/e$b$a;->b()Lz3/e$b;

    move-result-object p2

    .line 11
    new-instance v0, Landroidx/room/driver/b;

    .line 12
    new-instance v1, Landroidx/room/driver/c;

    iget-object p1, p1, Landroidx/room/c;->c:Lz3/e$c;

    invoke-interface {p1, p2}, Lz3/e$c;->a(Lz3/e$b;)Lz3/e;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/room/driver/c;-><init>(Lz3/e;)V

    .line 13
    invoke-direct {v0, v1}, Landroidx/room/driver/b;-><init>(Landroidx/room/driver/c;)V

    .line 14
    iput-object v0, p0, Landroidx/room/v;->g:Landroidx/room/coroutines/ConnectionPool;

    goto :goto_2

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    instance-of p2, v0, Lb4/b;

    const-string v1, ":memory:"

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Landroidx/room/coroutines/b;

    .line 18
    new-instance v2, Landroidx/room/a$b;

    invoke-direct {v2, p0, v0}, Landroidx/room/a$b;-><init>(Landroidx/room/a;Ly3/c;)V

    .line 19
    iget-object p1, p1, Landroidx/room/c;->b:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 20
    :goto_0
    invoke-direct {p2, v2, v1}, Landroidx/room/coroutines/b;-><init>(Ly3/c;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p2, p1, Landroidx/room/c;->b:Ljava/lang/String;

    if-nez p2, :cond_5

    .line 22
    new-instance p1, Landroidx/room/a$b;

    invoke-direct {p1, p0, v0}, Landroidx/room/a$b;-><init>(Landroidx/room/a;Ly3/c;)V

    .line 23
    invoke-static {p1, v1}, Landroidx/room/coroutines/h;->b(Ly3/c;Ljava/lang/String;)Landroidx/room/coroutines/ConnectionPool;

    move-result-object p2

    goto :goto_1

    .line 24
    :cond_5
    new-instance p2, Landroidx/room/a$b;

    invoke-direct {p2, p0, v0}, Landroidx/room/a$b;-><init>(Landroidx/room/a;Ly3/c;)V

    .line 25
    iget-object v0, p1, Landroidx/room/c;->b:Ljava/lang/String;

    .line 26
    iget-object v1, p1, Landroidx/room/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {p0, v1}, Landroidx/room/a;->p(Landroidx/room/RoomDatabase$JournalMode;)I

    move-result v1

    .line 27
    iget-object p1, p1, Landroidx/room/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {p0, p1}, Landroidx/room/a;->q(Landroidx/room/RoomDatabase$JournalMode;)I

    move-result p1

    .line 28
    invoke-static {p2, v0, v1, p1}, Landroidx/room/coroutines/h;->a(Ly3/c;Ljava/lang/String;II)Landroidx/room/coroutines/ConnectionPool;

    move-result-object p2

    .line 29
    :goto_1
    iput-object p2, p0, Landroidx/room/v;->g:Landroidx/room/coroutines/ConnectionPool;

    .line 30
    :goto_2
    invoke-direct {p0}, Landroidx/room/v;->H()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/c;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportOpenHelperFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Landroidx/room/a;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/room/v;->d:Landroidx/room/c;

    .line 33
    new-instance v0, Landroidx/room/v$a;

    invoke-direct {v0}, Landroidx/room/v$a;-><init>()V

    iput-object v0, p0, Landroidx/room/v;->e:Landroidx/room/f0;

    .line 34
    iget-object v0, p1, Landroidx/room/c;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/room/v;->f:Ljava/util/List;

    .line 35
    new-instance v0, Landroidx/room/u;

    invoke-direct {v0, p0}, Landroidx/room/u;-><init>(Landroidx/room/v;)V

    invoke-direct {p0, p1, v0}, Landroidx/room/v;->I(Landroidx/room/c;Lkotlin/jvm/functions/Function1;)Landroidx/room/c;

    move-result-object p1

    .line 36
    new-instance v0, Landroidx/room/driver/b;

    .line 37
    new-instance v1, Landroidx/room/driver/c;

    .line 38
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz3/e;

    .line 39
    invoke-direct {v1, p1}, Landroidx/room/driver/c;-><init>(Lz3/e;)V

    .line 40
    invoke-direct {v0, v1}, Landroidx/room/driver/b;-><init>(Landroidx/room/driver/c;)V

    .line 41
    iput-object v0, p0, Landroidx/room/v;->g:Landroidx/room/coroutines/ConnectionPool;

    .line 42
    invoke-direct {p0}, Landroidx/room/v;->H()V

    return-void
.end method

.method public static synthetic C(Landroidx/room/v;Lz3/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/v;->D(Landroidx/room/v;Lz3/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final D(Landroidx/room/v;Lz3/d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/v;->h:Lz3/d;

    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final synthetic E(Landroidx/room/v;Lz3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/v;->h:Lz3/d;

    .line 2
    .line 3
    return-void
.end method

.method private final H()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/v;->o()Landroidx/room/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/room/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 6
    .line 7
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroidx/room/v;->G()Lz3/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lz3/e;->setWriteAheadLoggingEnabled(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private final I(Landroidx/room/c;Lkotlin/jvm/functions/Function1;)Landroidx/room/c;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/room/c;->e:Ljava/util/List;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    new-instance v2, Landroidx/room/v$c;

    .line 14
    .line 15
    move-object/from16 v3, p2

    .line 16
    .line 17
    invoke-direct {v2, v3}, Landroidx/room/v$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const v23, 0x3fffef

    .line 25
    .line 26
    .line 27
    const/16 v24, 0x0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/4 v15, 0x0

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    const/16 v19, 0x0

    .line 50
    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    const/16 v21, 0x0

    .line 54
    .line 55
    const/16 v22, 0x0

    .line 56
    .line 57
    move-object/from16 v0, p1

    .line 58
    .line 59
    invoke-static/range {v0 .. v24}, Landroidx/room/c;->b(Landroidx/room/c;Landroid/content/Context;Ljava/lang/String;Lz3/e$c;Landroidx/room/RoomDatabase$d;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$e;Ljava/util/List;Ljava/util/List;ZLy3/c;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Landroidx/room/c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ":memory:"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/room/v;->o()Landroidx/room/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/room/c;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object p1
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/v;->g:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/room/coroutines/ConnectionPool;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final G()Lz3/e;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/v;->g:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/room/driver/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroidx/room/driver/b;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/room/driver/b;->h()Landroidx/room/driver/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/room/driver/c;->a()Lz3/e;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_1
    return-object v2
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/v;->h:Lz3/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lz3/d;->isOpen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public K(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/v;->g:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/room/coroutines/ConnectionPool;->e(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/v;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method protected o()Landroidx/room/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/v;->d:Landroidx/room/c;

    .line 2
    .line 3
    return-object v0
.end method

.method protected r()Landroidx/room/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/v;->e:Landroidx/room/f0;

    .line 2
    .line 3
    return-object v0
.end method
