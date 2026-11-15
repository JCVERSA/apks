.class public final Landroidx/compose/foundation/layout/ColumnMeasurePolicy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/layout/t;
.implements Landroidx/compose/foundation/layout/x;


# instance fields
.field private final a:Landroidx/compose/foundation/layout/b$k;

.field private final b:Landroidx/compose/ui/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/foundation/layout/ColumnMeasurePolicy;Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/z;IILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->h(Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/z;IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final h(Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/z;IILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/z;->a()Landroidx/compose/foundation/layout/m;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int/2addr p3, v0

    .line 16
    invoke-virtual {p2, p3, p5, p1, p4}, Landroidx/compose/foundation/layout/m;->a(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/g0;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-int/2addr p3, p1

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-interface {p2, p1, p3, p5}, Landroidx/compose/ui/b$b;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_1
    return p1
.end method


# virtual methods
.method public a(IIIIZ)J
    .locals 0

    .line 1
    invoke-static {p5, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/i;->b(ZIIII)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public b(I[I[ILandroidx/compose/ui/layout/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 2
    .line 3
    invoke-interface {v0, p4, p1, p2, p3}, Landroidx/compose/foundation/layout/b$k;->c(Lo0/e;I[I[I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;
    .locals 16

    .line 1
    invoke-static/range {p3 .. p4}, Lo0/b;->m(J)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static/range {p3 .. p4}, Lo0/b;->n(J)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static/range {p3 .. p4}, Lo0/b;->k(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static/range {p3 .. p4}, Lo0/b;->l(J)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    move-object/from16 v15, p0

    .line 18
    .line 19
    iget-object v0, v15, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/foundation/layout/b$k;->a()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    move-object/from16 v6, p1

    .line 26
    .line 27
    invoke-interface {v6, v0}, Lo0/e;->c0(F)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    new-array v8, v0, [Landroidx/compose/ui/layout/g0;

    .line 36
    .line 37
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    const/16 v13, 0xc00

    .line 42
    .line 43
    const/4 v14, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    move-object/from16 v0, p0

    .line 48
    .line 49
    move-object/from16 v7, p2

    .line 50
    .line 51
    invoke-static/range {v0 .. v14}, Landroidx/compose/foundation/layout/y;->b(Landroidx/compose/foundation/layout/x;IIIIILandroidx/compose/ui/layout/x;Ljava/util/List;[Landroidx/compose/ui/layout/g0;II[IIILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public d([Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/x;I[III[IIII)Landroidx/compose/ui/layout/v;
    .locals 8

    .line 1
    new-instance v7, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p0

    .line 6
    move v3, p6

    .line 7
    move v4, p3

    .line 8
    move-object v5, p2

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;-><init>([Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;IILandroidx/compose/ui/layout/x;[I)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, p2

    .line 17
    move v1, p6

    .line 18
    move v2, p5

    .line 19
    move-object v4, v7

    .line 20
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public e(Landroidx/compose/ui/layout/g0;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public f(Landroidx/compose/ui/layout/g0;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ColumnMeasurePolicy(verticalArrangement="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", horizontalAlignment="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
