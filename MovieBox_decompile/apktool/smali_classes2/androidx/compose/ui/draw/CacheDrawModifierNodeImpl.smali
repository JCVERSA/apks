.class final Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/draw/b;
.implements Landroidx/compose/ui/node/u0;
.implements Landroidx/compose/ui/draw/a;


# instance fields
.field private final n:Landroidx/compose/ui/draw/c;

.field private o:Z

.field private p:Landroidx/compose/ui/draw/k;

.field private q:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/draw/c;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->q:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/compose/ui/draw/c;->z(Landroidx/compose/ui/draw/a;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;-><init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroidx/compose/ui/draw/c;->D(Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final E1(Lz/c;)Landroidx/compose/ui/draw/h;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/c;->C(Landroidx/compose/ui/draw/h;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/ui/draw/c;->B(Lz/c;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1;

    .line 15
    .line 16
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1;-><init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;Landroidx/compose/ui/draw/c;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/draw/c;->n()Landroidx/compose/ui/draw/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "DrawResult not defined, did you forget to call onDraw?"

    .line 33
    .line 34
    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 35
    .line 36
    .line 37
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 38
    .line 39
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/draw/c;->n()Landroidx/compose/ui/draw/h;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method


# virtual methods
.method public final C1()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D1()Landroidx/compose/ui/graphics/a4;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/draw/k;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/compose/ui/draw/k;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/draw/k;->c()Landroidx/compose/ui/graphics/a4;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Landroidx/compose/ui/node/g;->j(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/graphics/a4;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/k;->e(Landroidx/compose/ui/graphics/a4;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public Z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getDensity()Lo0/e;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/g;->i(Landroidx/compose/ui/node/f;)Lo0/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/g;->l(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lo0/u;->d(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public n(Lz/c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->E1(Lz/c;)Landroidx/compose/ui/draw/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/draw/h;->a()Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public n1()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/f$c;->n1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/draw/k;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/draw/k;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/c;->C(Landroidx/compose/ui/draw/h;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public w0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
