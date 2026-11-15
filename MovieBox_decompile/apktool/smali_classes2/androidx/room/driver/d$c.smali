.class final Landroidx/room/driver/d$c;
.super Landroidx/room/driver/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/driver/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final e:Lz3/h;


# direct methods
.method public constructor <init>(Lz3/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sql"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Landroidx/room/driver/d;-><init>(Lz3/d;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Lz3/d;->Y(Ljava/lang/String;)Lz3/h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 5
    .line 6
    invoke-interface {v0}, Lz3/h;->execute()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public a(ID)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lz3/f;->a(ID)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lz3/f;->c(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/room/driver/d;->j(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lz3/f;->g(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getDouble(I)D
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getLong(I)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public i(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/room/driver/d$c;->e:Lz3/h;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public isNull(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public q0(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
