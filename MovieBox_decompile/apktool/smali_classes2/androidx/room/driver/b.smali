.class public final Landroidx/room/driver/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field private final a:Landroidx/room/driver/c;


# direct methods
.method public constructor <init>(Landroidx/room/driver/c;)V
    .locals 1

    .line 1
    const-string v0, "supportDriver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    .line 10
    .line 11
    return-void
.end method

.method private final d()Landroidx/room/driver/SupportSQLitePooledConnection;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/driver/c;->a()Lz3/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lz3/e;->getDatabaseName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, ":memory:"

    .line 14
    .line 15
    :cond_0
    new-instance v1, Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroidx/room/driver/c;->b(Ljava/lang/String;)Landroidx/room/driver/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v1, v0}, Landroidx/room/driver/SupportSQLitePooledConnection;-><init>(Landroidx/room/driver/a;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/driver/c;->a()Lz3/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lz3/e;->close()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/driver/b;->d()Landroidx/room/driver/SupportSQLitePooledConnection;

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

.method public final h()Landroidx/room/driver/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    .line 2
    .line 3
    return-object v0
.end method
