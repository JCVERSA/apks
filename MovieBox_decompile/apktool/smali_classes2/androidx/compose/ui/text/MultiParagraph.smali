.class public final Landroidx/compose/ui/text/MultiParagraph;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private final b:I

.field private final c:Z

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZ)V
    .locals 19

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 3
    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move/from16 v2, p4

    .line 4
    iput v2, v0, Landroidx/compose/ui/text/MultiParagraph;->b:I

    .line 5
    invoke-static/range {p2 .. p3}, Lo0/b;->n(J)I

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {p2 .. p3}, Lo0/b;->m(J)I

    move-result v2

    if-nez v2, :cond_9

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->f()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v10, v4

    move v12, v5

    move v5, v10

    :goto_0
    if-ge v5, v3, :cond_3

    .line 9
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/n;

    .line 10
    invoke-virtual {v6}, Landroidx/compose/ui/text/n;->b()Landroidx/compose/ui/text/o;

    move-result-object v7

    .line 11
    invoke-static/range {p2 .. p3}, Lo0/b;->l(J)I

    move-result v14

    .line 12
    invoke-static/range {p2 .. p3}, Lo0/b;->g(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-static/range {p2 .. p3}, Lo0/b;->k(J)I

    move-result v8

    invoke-static {v12}, Landroidx/compose/ui/text/q;->d(F)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8, v4}, Lkotlin/ranges/RangesKt;->e(II)I

    move-result v8

    :goto_1
    move/from16 v16, v8

    goto :goto_2

    .line 14
    :cond_0
    invoke-static/range {p2 .. p3}, Lo0/b;->k(J)I

    move-result v8

    goto :goto_1

    :goto_2
    const/16 v17, 0x5

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 15
    invoke-static/range {v13 .. v18}, Lo0/c;->b(IIIIILjava/lang/Object;)J

    move-result-wide v8

    .line 16
    iget v11, v0, Landroidx/compose/ui/text/MultiParagraph;->b:I

    sub-int/2addr v11, v10

    move/from16 v14, p5

    .line 17
    invoke-static {v7, v8, v9, v11, v14}, Landroidx/compose/ui/text/q;->c(Landroidx/compose/ui/text/o;JIZ)Landroidx/compose/ui/text/l;

    move-result-object v15

    .line 18
    invoke-interface {v15}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result v7

    add-float v16, v12, v7

    .line 19
    invoke-interface {v15}, Landroidx/compose/ui/text/l;->h()I

    move-result v7

    add-int v13, v10, v7

    .line 20
    new-instance v11, Landroidx/compose/ui/text/m;

    .line 21
    invoke-virtual {v6}, Landroidx/compose/ui/text/n;->c()I

    move-result v8

    .line 22
    invoke-virtual {v6}, Landroidx/compose/ui/text/n;->a()I

    move-result v9

    move-object v6, v11

    move-object v7, v15

    move-object v4, v11

    move v11, v13

    move-object/from16 p4, v1

    move v1, v13

    move/from16 v13, v16

    .line 23
    invoke-direct/range {v6 .. v13}, Landroidx/compose/ui/text/m;-><init>(Landroidx/compose/ui/text/l;IIIIFF)V

    .line 24
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v15}, Landroidx/compose/ui/text/l;->k()Z

    move-result v4

    if-nez v4, :cond_2

    .line 26
    iget v4, v0, Landroidx/compose/ui/text/MultiParagraph;->b:I

    if-ne v1, v4, :cond_1

    iget-object v4, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->f()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v4

    if-eq v5, v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v10, v1

    move/from16 v12, v16

    const/4 v4, 0x0

    move-object/from16 v1, p4

    goto/16 :goto_0

    :cond_2
    :goto_3
    const/4 v3, 0x1

    move v10, v1

    move/from16 v12, v16

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    .line 27
    :goto_4
    iput v12, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 28
    iput v10, v0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 29
    iput-boolean v3, v0, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    .line 30
    iput-object v2, v0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 31
    invoke-static/range {p2 .. p3}, Lo0/b;->l(J)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    if-ge v4, v3, :cond_6

    .line 34
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Landroidx/compose/ui/text/m;

    .line 36
    invoke-virtual {v6}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/text/l;->u()Ljava/util/List;

    move-result-object v7

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_5

    .line 39
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 40
    check-cast v11, Ly/i;

    if-eqz v11, :cond_4

    .line 41
    invoke-virtual {v6, v11}, Landroidx/compose/ui/text/m;->i(Ly/i;)Ly/i;

    move-result-object v11

    goto :goto_7

    :cond_4
    move-object v11, v5

    .line 42
    :goto_7
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 43
    :cond_5
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 44
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v3}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 45
    iget-object v2, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->B0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 46
    :cond_8
    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->g:Ljava/util/List;

    return-void

    .line 47
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZ)V

    return-void
.end method

.method public static synthetic A(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    .line 7
    move v4, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v4, p3

    .line 10
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v5, p4

    .line 18
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move-object v6, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object v6, p5

    .line 25
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    move-object v7, v1

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move-object v7, p6

    .line 32
    :goto_3
    and-int/lit8 v0, p8, 0x40

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lz/g$a;->a()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    move v8, v0

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v8, p7

    .line 45
    .line 46
    :goto_4
    move-object v1, p0

    .line 47
    move-object v2, p1

    .line 48
    move-object v3, p2

    .line 49
    invoke-virtual/range {v1 .. v8}, Landroidx/compose/ui/text/MultiParagraph;->z(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final B(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ge p1, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "offset("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ") is out of bounds [0, "

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 p1, 0x29

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method private final C(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gt p1, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "offset("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ") is out of bounds [0, "

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 p1, 0x5d

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method private final D(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "lineIndex("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ") is out of bounds [0, "

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget p1, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 p1, 0x29

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method private final b()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic y(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 v0, p8, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v0, p2

    .line 13
    :goto_0
    and-int/lit8 v2, p8, 0x4

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    move-object v2, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v2, p4

    .line 21
    :goto_1
    and-int/lit8 v4, p8, 0x8

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    move-object v4, v3

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p5

    .line 28
    :goto_2
    and-int/lit8 v5, p8, 0x10

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object v3, p6

    .line 34
    :goto_3
    and-int/lit8 v5, p8, 0x20

    .line 35
    .line 36
    if-eqz v5, :cond_4

    .line 37
    .line 38
    sget-object v5, Lz/g;->o1:Lz/g$a;

    .line 39
    .line 40
    invoke-virtual {v5}, Lz/g$a;->a()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move v5, p7

    .line 46
    :goto_4
    move-object p2, p0

    .line 47
    move-object p3, p1

    .line 48
    move-wide p4, v0

    .line 49
    move-object p6, v2

    .line 50
    move-object p7, v4

    .line 51
    move-object p8, v3

    .line 52
    move p9, v5

    .line 53
    invoke-virtual/range {p2 .. p9}, Landroidx/compose/ui/text/MultiParagraph;->x(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(J[FI)[F
    .locals 7

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->j(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->B(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->i(J)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 16
    .line 17
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 18
    .line 19
    .line 20
    iput p4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 21
    .line 22
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 23
    .line 24
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p4, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    move-wide v2, p1

    .line 33
    move-object v4, p3

    .line 34
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;-><init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p4, p1, p2, v0}, Landroidx/compose/ui/text/i;->d(Ljava/util/List;JLkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    return-object p3
.end method

.method public final c(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->r(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final d(I)Ly/i;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->B(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->t(I)Ly/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->i(Ly/i;)Ly/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public final e(I)Ly/i;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->d(I)Ly/i;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->i(Ly/i;)Ly/i;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroidx/compose/ui/text/l;->e()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    return v0
.end method

.method public final h()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public final i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Landroidx/compose/ui/text/l;->o()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/m;->l(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    return v0
.end method

.method public final k(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->s(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->l(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final m(IZ)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/text/l;->g(IZ)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->j(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final n(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-gez p1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->p(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->k(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public final o(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->c(Ljava/util/List;F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->d()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->g()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->o(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->l(F)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->k(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_0
    return p1
.end method

.method public final p(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->m(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final q(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->i(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final r(I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->f(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->j(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final s(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->c(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->l(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final t(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->b(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final u()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public final x(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V
    .locals 13

    .line 1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/compose/ui/text/m;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    move-object v6, p1

    .line 25
    move-wide v7, p2

    .line 26
    move-object/from16 v9, p4

    .line 27
    .line 28
    move-object/from16 v10, p5

    .line 29
    .line 30
    move-object/from16 v11, p6

    .line 31
    .line 32
    move/from16 v12, p7

    .line 33
    .line 34
    invoke-interface/range {v5 .. v12}, Landroidx/compose/ui/text/l;->q(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Landroidx/compose/ui/text/l;->getHeight()F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-interface {p1, v5, v4}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v6, p1

    .line 53
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final z(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/text/platform/b;->a(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
