.class public final Landroidx/compose/foundation/layout/InsetsPaddingModifier;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/layout/o;
.implements Landroidx/compose/ui/modifier/d;
.implements Landroidx/compose/ui/modifier/j;


# instance fields
.field private final b:Landroidx/compose/foundation/layout/h0;

.field private final c:Landroidx/compose/runtime/i1;

.field private final d:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/h0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-object v2, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->c:Landroidx/compose/runtime/i1;

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->d:Landroidx/compose/runtime/i1;

    .line 19
    .line 20
    return-void
.end method

.method private final a()Landroidx/compose/foundation/layout/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->d:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/layout/h0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i()Landroidx/compose/foundation/layout/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->c:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/layout/h0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k(Landroidx/compose/foundation/layout/h0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->d:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final l(Landroidx/compose/foundation/layout/h0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->c:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public f(Landroidx/compose/ui/modifier/k;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->a()Landroidx/compose/ui/modifier/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/k;->P(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/compose/foundation/layout/h0;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/i0;->b(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->l(Landroidx/compose/foundation/layout/h0;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->k(Landroidx/compose/foundation/layout/h0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getKey()Landroidx/compose/ui/modifier/l;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->a()Landroidx/compose/ui/modifier/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->j()Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()Landroidx/compose/foundation/layout/h0;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->a()Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-interface {v3, p1, v4}, Landroidx/compose/foundation/layout/h0;->c(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v4, p1}, Landroidx/compose/foundation/layout/h0;->a(Lo0/e;)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-interface {p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-interface {v5, p1, v6}, Landroidx/compose/foundation/layout/h0;->d(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v6, p1}, Landroidx/compose/foundation/layout/h0;->b(Lo0/e;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    add-int/2addr v5, v3

    .line 42
    add-int/2addr v6, v4

    .line 43
    neg-int v7, v5

    .line 44
    neg-int v8, v6

    .line 45
    invoke-static {p3, p4, v7, v8}, Lo0/c;->n(JII)J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    invoke-interface {p2, v7, v8}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    add-int/2addr v8, v5

    .line 58
    invoke-static {p3, p4, v8}, Lo0/c;->i(JI)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    add-int/2addr v8, v6

    .line 67
    invoke-static {p3, p4, v8}, Lo0/c;->h(JI)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    new-instance v6, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;

    .line 72
    .line 73
    invoke-direct {v6, v7, v3, v4}, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;-><init>(Landroidx/compose/ui/layout/g0;II)V

    .line 74
    .line 75
    .line 76
    const/4 v7, 0x4

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    move-object v0, p1

    .line 80
    move v1, v5

    .line 81
    move-object v4, v6

    .line 82
    move v5, v7

    .line 83
    move-object v6, v8

    .line 84
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method
