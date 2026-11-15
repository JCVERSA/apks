.class final Landroidx/compose/foundation/lazy/layout/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/layout/f0;
.implements Landroidx/compose/ui/layout/f0$a;
.implements Landroidx/compose/foundation/lazy/layout/w$a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/compose/foundation/lazy/layout/w;

.field private final c:Landroidx/compose/runtime/e1;

.field private final d:Landroidx/compose/runtime/e1;

.field private final e:Landroidx/compose/runtime/i1;

.field private final f:Landroidx/compose/runtime/i1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/v;->b:Landroidx/compose/foundation/lazy/layout/w;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    invoke-static {p1}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->c:Landroidx/compose/runtime/e1;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->d:Landroidx/compose/runtime/e1;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 p2, 0x2

    .line 24
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->e:Landroidx/compose/runtime/i1;

    .line 29
    .line 30
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->f:Landroidx/compose/runtime/i1;

    .line 35
    .line 36
    return-void
.end method

.method private final b()Landroidx/compose/ui/layout/f0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->e:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/layout/f0$a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->d:Landroidx/compose/runtime/e1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/n0;->getIntValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final e()Landroidx/compose/ui/layout/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->f:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/layout/f0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h(Landroidx/compose/ui/layout/f0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->e:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->d:Landroidx/compose/runtime/e1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final k(Landroidx/compose/ui/layout/f0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->f:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/ui/layout/f0$a;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->b:Landroidx/compose/foundation/lazy/layout/w;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/w;->j(Landroidx/compose/foundation/lazy/layout/w$a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/v;->c()Landroidx/compose/ui/layout/f0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/compose/ui/layout/f0;->a()Landroidx/compose/ui/layout/f0$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->h(Landroidx/compose/ui/layout/f0$a;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->j(I)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public final c()Landroidx/compose/ui/layout/f0;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->e()Landroidx/compose/ui/layout/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/v;->release()V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->c:Landroidx/compose/runtime/e1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->c:Landroidx/compose/runtime/e1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/n0;->getIntValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Landroidx/compose/ui/layout/f0;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v3, v2

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->e()Landroidx/compose/ui/layout/f0;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-eq p1, v5, :cond_3

    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/v;->k(Landroidx/compose/ui/layout/f0;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-lez v5, :cond_3

    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->b()Landroidx/compose/ui/layout/f0$a;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-interface {v5}, Landroidx/compose/ui/layout/f0$a;->release()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Landroidx/compose/ui/layout/f0;->a()Landroidx/compose/ui/layout/f0$a;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/layout/v;->h(Landroidx/compose/ui/layout/f0$a;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    invoke-virtual {v0, v1, v4, v3}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_2
    invoke-virtual {v0, v1, v4, v3}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->j(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->b:Landroidx/compose/foundation/lazy/layout/w;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/w;->l(Landroidx/compose/foundation/lazy/layout/w$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->b()Landroidx/compose/ui/layout/f0$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Landroidx/compose/ui/layout/f0$a;->release()V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->h(Landroidx/compose/ui/layout/f0$a;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "Release should only be called once"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method
