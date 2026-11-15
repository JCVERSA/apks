.class public final Landroidx/compose/foundation/text/modifiers/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Landroidx/compose/ui/text/AnnotatedString;

.field private b:Landroidx/compose/ui/text/d0;

.field private c:Landroidx/compose/ui/text/font/h$b;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/util/List;

.field private i:Landroidx/compose/foundation/text/modifiers/c;

.field private j:J

.field private k:Lo0/e;

.field private l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private m:Landroidx/compose/ui/unit/LayoutDirection;

.field private n:Landroidx/compose/ui/text/z;

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    .line 6
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    .line 7
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    .line 8
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    .line 9
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    .line 10
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    .line 11
    sget-object p1, Landroidx/compose/foundation/text/modifiers/a;->a:Landroidx/compose/foundation/text/modifiers/a$a;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/a$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/e;->o:I

    .line 13
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/e;->p:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/modifiers/e;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V

    return-void
.end method

.method private final d(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 7

    .line 1
    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/modifiers/e;->i(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance p3, Landroidx/compose/ui/text/MultiParagraph;

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p1, p2, v0, v2, v3}, Landroidx/compose/foundation/text/modifiers/b;->a(JZIF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    .line 20
    .line 21
    iget p2, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    .line 22
    .line 23
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    .line 24
    .line 25
    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/b;->b(ZII)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    .line 30
    .line 31
    sget-object p2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/compose/ui/text/style/p$a;->b()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {p1, p2}, Landroidx/compose/ui/text/style/p;->e(II)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v0, p3

    .line 43
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    return-object p3
.end method

.method private final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/compose/foundation/text/modifiers/e;->p:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/compose/foundation/text/modifiers/e;->o:I

    .line 10
    .line 11
    return-void
.end method

.method private final g(Landroidx/compose/ui/text/z;JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->d()Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eq p4, v1, :cond_2

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {p4}, Landroidx/compose/ui/text/y;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {p2, p3, v1, v2}, Lo0/b;->f(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    const/4 v1, 0x0

    .line 44
    if-eqz p4, :cond_3

    .line 45
    .line 46
    return v1

    .line 47
    :cond_3
    invoke-static {p2, p3}, Lo0/b;->l(J)I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroidx/compose/ui/text/y;->a()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-static {v2, v3}, Lo0/b;->l(J)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eq p4, v2, :cond_4

    .line 64
    .line 65
    return v0

    .line 66
    :cond_4
    invoke-static {p2, p3}, Lo0/b;->k(J)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    int-to-float p2, p2

    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p3}, Landroidx/compose/ui/text/MultiParagraph;->h()F

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    cmpg-float p2, p2, p3

    .line 80
    .line 81
    if-ltz p2, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/text/MultiParagraph;->f()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    return v1

    .line 95
    :cond_6
    :goto_0
    return v0
.end method

.method private final i(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/e;->m:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->m:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroidx/compose/ui/text/e0;->c(Landroidx/compose/ui/text/d0;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/d0;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 26
    .line 27
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_1
    move-object v5, p1

    .line 41
    new-instance v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 42
    .line 43
    move-object v2, v0

    .line 44
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 48
    .line 49
    return-object v0
.end method

.method private final j(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/z;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->w()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v8, Landroidx/compose/ui/text/z;

    .line 20
    .line 21
    new-instance v3, Landroidx/compose/ui/text/y;

    .line 22
    .line 23
    iget-object v10, v0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 24
    .line 25
    iget-object v11, v0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_0
    move-object v12, v2

    .line 36
    iget v13, v0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    .line 37
    .line 38
    iget-boolean v14, v0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    .line 39
    .line 40
    iget v15, v0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    .line 48
    .line 49
    const/16 v21, 0x0

    .line 50
    .line 51
    move-object v9, v3

    .line 52
    move-object/from16 v16, v2

    .line 53
    .line 54
    move-object/from16 v17, p1

    .line 55
    .line 56
    move-object/from16 v18, v4

    .line 57
    .line 58
    move-wide/from16 v19, p2

    .line 59
    .line 60
    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/text/y;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;IZILo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/h$b;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Landroidx/compose/foundation/text/b;->a(F)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->h()F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Landroidx/compose/foundation/text/b;->a(F)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v1, v2}, Lo0/u;->a(II)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    move-wide/from16 v4, p2

    .line 80
    .line 81
    invoke-static {v4, v5, v1, v2}, Lo0/c;->f(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    const/4 v7, 0x0

    .line 86
    move-object v2, v8

    .line 87
    move-object/from16 v4, p4

    .line 88
    .line 89
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/z;-><init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    return-object v8
.end method


# virtual methods
.method public final a()Lo0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroidx/compose/ui/text/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroidx/compose/ui/text/z;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "You must call layoutWithConstraints first"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final e(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/foundation/text/modifiers/c;->h:Landroidx/compose/foundation/text/modifiers/c$a;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/e;->i:Landroidx/compose/foundation/text/modifiers/c;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    .line 11
    .line 12
    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 13
    .line 14
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    .line 18
    .line 19
    move-object v4, p3

    .line 20
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/text/modifiers/c$a;->a(Landroidx/compose/foundation/text/modifiers/c;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/d0;Lo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/foundation/text/modifiers/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->i:Landroidx/compose/foundation/text/modifiers/c;

    .line 25
    .line 26
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, v2}, Landroidx/compose/foundation/text/modifiers/c;->c(JI)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 33
    .line 34
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/e;->g(Landroidx/compose/ui/text/z;JLandroidx/compose/ui/unit/LayoutDirection;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/text/y;->a()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {p1, p2, v2, v3}, Lo0/b;->f(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    return p1

    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/e;->j(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/z;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 75
    .line 76
    return v1

    .line 77
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/e;->d(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/e;->j(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/z;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    .line 86
    .line 87
    return v1
.end method

.method public final h(Lo0/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/foundation/text/modifiers/a;->d(Lo0/e;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/modifiers/a;->a:Landroidx/compose/foundation/text/modifiers/a$a;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/a$a;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 19
    .line 20
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    .line 26
    .line 27
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/foundation/text/modifiers/a;->e(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    .line 34
    .line 35
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/e;->f()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final k(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    .line 8
    .line 9
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    .line 12
    .line 13
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/e;->f()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
