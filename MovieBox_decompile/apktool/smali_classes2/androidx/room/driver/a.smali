.class public final Landroidx/room/driver/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ly3/b;


# instance fields
.field private final a:Lz3/d;


# direct methods
.method public constructor <init>(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "db"

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
    iput-object p1, p0, Landroidx/room/driver/a;->a:Lz3/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic F0(Ljava/lang/String;)Ly3/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/driver/a;->f(Ljava/lang/String;)Landroidx/room/driver/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/a;->a:Lz3/d;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Lz3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/a;->a:Lz3/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ljava/lang/String;)Landroidx/room/driver/d;
    .locals 2

    .line 1
    const-string v0, "sql"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/room/driver/d;->d:Landroidx/room/driver/d$a;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/room/driver/a;->a:Lz3/d;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroidx/room/driver/d$a;->a(Lz3/d;Ljava/lang/String;)Landroidx/room/driver/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
