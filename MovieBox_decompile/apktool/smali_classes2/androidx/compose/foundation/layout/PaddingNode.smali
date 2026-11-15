.class final Landroidx/compose/foundation/layout/PaddingNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/x;


# instance fields
.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Z


# direct methods
.method private constructor <init>(FFFFZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    .line 4
    iput p2, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    .line 5
    iput p3, p0, Landroidx/compose/foundation/layout/PaddingNode;->p:F

    .line 6
    iput p4, p0, Landroidx/compose/foundation/layout/PaddingNode;->q:F

    .line 7
    iput-boolean p5, p0, Landroidx/compose/foundation/layout/PaddingNode;->r:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/PaddingNode;-><init>(FFFFZ)V

    return-void
.end method


# virtual methods
.method public final C1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public final D1()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public final E1()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    .line 2
    .line 3
    return v0
.end method

.method public final F1(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->q:F

    .line 2
    .line 3
    return-void
.end method

.method public final G1(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->p:F

    .line 2
    .line 3
    return-void
.end method

.method public final H1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public final I1(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    .line 2
    .line 3
    return-void
.end method

.method public final J1(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    .line 2
    .line 3
    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lo0/e;->c0(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingNode;->p:F

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lo0/e;->c0(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lo0/e;->c0(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Landroidx/compose/foundation/layout/PaddingNode;->q:F

    .line 21
    .line 22
    invoke-interface {p1, v2}, Lo0/e;->c0(F)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v1, v2

    .line 27
    neg-int v2, v0

    .line 28
    neg-int v3, v1

    .line 29
    invoke-static {p3, p4, v2, v3}, Lo0/c;->n(JII)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v2, v0

    .line 42
    invoke-static {p3, p4, v2}, Lo0/c;->i(JI)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    invoke-static {p3, p4, v0}, Lo0/c;->h(JI)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    new-instance v7, Landroidx/compose/foundation/layout/PaddingNode$measure$1;

    .line 56
    .line 57
    invoke-direct {v7, p0, p2, p1}, Landroidx/compose/foundation/layout/PaddingNode$measure$1;-><init>(Landroidx/compose/foundation/layout/PaddingNode;Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/x;)V

    .line 58
    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v3, p1

    .line 64
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method
