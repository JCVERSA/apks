.class public final Landroidx/room/coroutines/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field private final a:Ly3/c;

.field private final b:Ljava/lang/String;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ly3/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "driver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fileName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/room/coroutines/b;->a:Ly3/c;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/room/coroutines/b;->b:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Landroidx/room/coroutines/a;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Landroidx/room/coroutines/a;-><init>(Landroidx/room/coroutines/b;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/room/coroutines/b;->c:Lkotlin/Lazy;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic b(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/coroutines/b;->d(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/coroutines/b;->a:Ly3/c;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/room/coroutines/b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v1, p0}, Ly3/c;->open(Ljava/lang/String;)Ly3/b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "null cannot be cast to non-null type androidx.sqlite.driver.AndroidSQLiteConnection"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p0, Lb4/a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;-><init>(Lb4/a;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private final h()Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/b;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/room/coroutines/b;->h()Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->f()Lb4/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lb4/a;->close()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/coroutines/b;->h()Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
