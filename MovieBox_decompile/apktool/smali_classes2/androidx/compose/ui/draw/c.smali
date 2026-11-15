.class public final Landroidx/compose/ui/draw/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lo0/e;


# instance fields
.field private a:Landroidx/compose/ui/draw/a;

.field private b:Landroidx/compose/ui/draw/h;

.field private c:Lz/c;

.field private d:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/draw/i;->a:Landroidx/compose/ui/draw/i;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Lz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/draw/c;->c:Lz/c;

    .line 2
    .line 3
    return-void
.end method

.method public B0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->getDensity()Lo0/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lo0/n;->B0()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final C(Landroidx/compose/ui/draw/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/draw/c;->b:Landroidx/compose/ui/draw/h;

    .line 2
    .line 3
    return-void
.end method

.method public final D(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/draw/c;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public synthetic D0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->d(Lo0/e;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic H(F)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public synthetic J(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic P0(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/d;->e(Lo0/e;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public synthetic Q(F)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lo0/d;->f(Lo0/e;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public synthetic c0(F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->getDensity()Lo0/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lo0/e;->getDensity()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic h0(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/d;->c(Lo0/e;J)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final i()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final n()Landroidx/compose/ui/draw/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/c;->b:Landroidx/compose/ui/draw/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/h;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/draw/h;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/draw/h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/draw/c;->b:Landroidx/compose/ui/draw/h;

    .line 7
    .line 8
    return-object v0
.end method

.method public synthetic x0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final z(Landroidx/compose/ui/draw/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    .line 2
    .line 3
    return-void
.end method
