.class public final Landroidx/room/driver/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ly3/c;


# instance fields
.field private final a:Lz3/e;


# direct methods
.method public constructor <init>(Lz3/e;)V
    .locals 1

    .line 1
    const-string v0, "openHelper"

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
    iput-object p1, p0, Landroidx/room/driver/c;->a:Lz3/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lz3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/c;->a:Lz3/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroidx/room/driver/a;
    .locals 1

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/room/driver/a;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/driver/c;->a:Lz3/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lz3/e;->getWritableDatabase()Lz3/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Landroidx/room/driver/a;-><init>(Lz3/d;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public bridge synthetic open(Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/driver/c;->b(Ljava/lang/String;)Landroidx/room/driver/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
