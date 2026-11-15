.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/x;
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/i1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Map;

.field private B:Landroidx/compose/foundation/text/modifiers/e;

.field private C:Lkotlin/jvm/functions/Function1;

.field private D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

.field private n:Landroidx/compose/ui/text/AnnotatedString;

.field private o:Landroidx/compose/ui/text/d0;

.field private p:Landroidx/compose/ui/text/font/h$b;

.field private q:Lkotlin/jvm/functions/Function1;

.field private r:I

.field private s:Z

.field private t:I

.field private u:I

.field private v:Ljava/util/List;

.field private w:Lkotlin/jvm/functions/Function1;

.field private x:Landroidx/compose/foundation/text/modifiers/h;

.field private y:Landroidx/compose/ui/graphics/x1;

.field private z:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 6
    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    .line 7
    iput p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 8
    iput-boolean p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 9
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 10
    iput p8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 11
    iput-object p9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 12
    iput-object p10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    .line 13
    iput-object p12, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    .line 14
    iput-object p13, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic C1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/foundation/text/modifiers/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L1()Landroidx/compose/foundation/text/modifiers/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/ui/graphics/x1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/ui/text/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->O1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Q1(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final L1()Landroidx/compose/foundation/text/modifiers/e;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:Landroidx/compose/foundation/text/modifiers/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/text/modifiers/e;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 12
    .line 13
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 14
    .line 15
    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 16
    .line 17
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 18
    .line 19
    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 20
    .line 21
    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/text/modifiers/e;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:Landroidx/compose/foundation/text/modifiers/e;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:Landroidx/compose/foundation/text/modifiers/e;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method private final M1(Lo0/e;)Landroidx/compose/foundation/text/modifiers/e;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->a()Landroidx/compose/foundation/text/modifiers/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/e;->h(Lo0/e;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L1()Landroidx/compose/foundation/text/modifiers/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/e;->h(Lo0/e;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method private final O1()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/a0;->b(Landroidx/compose/ui/node/x;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final Q1(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v9, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v9

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->f(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->a()Landroidx/compose/foundation/text/modifiers/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 29
    .line 30
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 31
    .line 32
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 33
    .line 34
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 35
    .line 36
    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 37
    .line 38
    iget-object v10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    move v7, v8

    .line 42
    move-object v8, v10

    .line 43
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/text/modifiers/e;->k(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-nez v0, :cond_3

    .line 51
    .line 52
    return v9

    .line 53
    :cond_2
    new-instance v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 56
    .line 57
    const/16 v5, 0xc

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    move-object v0, v10

    .line 63
    move-object v2, p1

    .line 64
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/foundation/text/modifiers/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    new-instance v11, Landroidx/compose/foundation/text/modifiers/e;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 72
    .line 73
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 74
    .line 75
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 76
    .line 77
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 78
    .line 79
    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 80
    .line 81
    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    move-object v0, v11

    .line 85
    move-object v1, p1

    .line 86
    move v7, v8

    .line 87
    move-object v8, v9

    .line 88
    move-object v9, v12

    .line 89
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/modifiers/e;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L1()Landroidx/compose/foundation/text/modifiers/e;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/e;->a()Lo0/e;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v11, v0}, Landroidx/compose/foundation/text/modifiers/e;->h(Lo0/e;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v11}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->d(Landroidx/compose/foundation/text/modifiers/e;)V

    .line 104
    .line 105
    .line 106
    iput-object v10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 107
    .line 108
    :cond_3
    const/4 v0, 0x1

    .line 109
    return v0
.end method


# virtual methods
.method public final I1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 3
    .line 4
    return-void
.end method

.method public final J1(ZZZZ)V
    .locals 9

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    if-eqz p4, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L1()Landroidx/compose/foundation/text/modifiers/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 16
    .line 17
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 18
    .line 19
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 20
    .line 21
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 22
    .line 23
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 24
    .line 25
    iget-object v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/text/modifiers/e;->k(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    if-nez p2, :cond_3

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    if-nez p2, :cond_5

    .line 49
    .line 50
    if-nez p3, :cond_5

    .line 51
    .line 52
    if-eqz p4, :cond_6

    .line 53
    .line 54
    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/node/a0;->b(Landroidx/compose/ui/node/x;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 58
    .line 59
    .line 60
    :cond_6
    if-eqz p1, :cond_7

    .line 61
    .line 62
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 63
    .line 64
    .line 65
    :cond_7
    return-void
.end method

.method public final K1(Lz/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n(Lz/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final N1()Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final P1(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Q0(Landroidx/compose/ui/semantics/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 13
    .line 14
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->E(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->F(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->D(Landroidx/compose/ui/semantics/n;Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$2;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$2;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-static {p1, v2, v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->H(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$3;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$3;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v2, v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->M(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$4;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$4;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2, v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v2, v0, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->j(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final R1(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Lkotlin/jvm/functions/Function1;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eq v0, p2, :cond_1

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    move p1, v1

    .line 18
    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/foundation/text/modifiers/h;

    .line 19
    .line 20
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    move p1, v1

    .line 27
    :cond_2
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    if-eq p2, p4, :cond_3

    .line 30
    .line 31
    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move v1, p1

    .line 35
    :goto_1
    return v1
.end method

.method public final S1(Landroidx/compose/ui/graphics/x1;Landroidx/compose/ui/text/d0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/d0;->F(Landroidx/compose/ui/text/d0;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method public final T1(Landroidx/compose/ui/text/d0;Ljava/util/List;IIZLandroidx/compose/ui/text/font/h$b;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/d0;->G(Landroidx/compose/ui/text/d0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 23
    .line 24
    if-eq p1, p3, :cond_1

    .line 25
    .line 26
    iput p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    .line 27
    .line 28
    move v0, v1

    .line 29
    :cond_1
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 30
    .line 31
    if-eq p1, p4, :cond_2

    .line 32
    .line 33
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_2
    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 37
    .line 38
    if-eq p1, p5, :cond_3

    .line 39
    .line 40
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    .line 41
    .line 42
    move v0, v1

    .line 43
    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 44
    .line 45
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_4

    .line 50
    .line 51
    iput-object p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    .line 52
    .line 53
    move v0, v1

    .line 54
    :cond_4
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 55
    .line 56
    invoke-static {p1, p7}, Landroidx/compose/ui/text/style/p;->e(II)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    move v1, v0

    .line 66
    :goto_0
    return v1
.end method

.method public final U1(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/AnnotatedString;->l(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 61
    :goto_1
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 64
    .line 65
    :cond_2
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->I1()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return v1
.end method

.method public synthetic V0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public n(Lz/c;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M1(Lo0/e;)Landroidx/compose/foundation/text/modifiers/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/e;->c()Landroidx/compose/ui/text/z;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v11, 0x1

    .line 33
    const/4 v12, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    .line 37
    .line 38
    sget-object v4, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/p$a;->c()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {v3, v4}, Landroidx/compose/ui/text/style/p;->e(II)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    move v13, v11

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v13, v12

    .line 53
    :goto_0
    if-eqz v13, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->y()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    invoke-static {v3, v4}, Lo0/t;->g(J)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->y()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, Lo0/t;->f(J)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    int-to-float v1, v1

    .line 73
    sget-object v4, Ly/g;->b:Ly/g$a;

    .line 74
    .line 75
    invoke-virtual {v4}, Ly/g$a;->c()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-static {v3, v1}, Ly/n;->a(FF)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    invoke-static {v4, v5, v6, v7}, Ly/j;->a(JJ)Ly/i;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x2

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static {v0, v1, v12, v3, v4}, Landroidx/compose/ui/graphics/l1;->e(Landroidx/compose/ui/graphics/m1;Ly/i;IILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->A()Landroidx/compose/ui/text/style/i;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    sget-object v1, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->c()Landroidx/compose/ui/text/style/i;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_3
    move-object v6, v1

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    goto/16 :goto_7

    .line 113
    .line 114
    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->x()Landroidx/compose/ui/graphics/z4;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    sget-object v1, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/z4$a;->a()Landroidx/compose/ui/graphics/z4;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_4
    move-object v5, v1

    .line 129
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->i()Lz/h;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    sget-object v1, Lz/l;->a:Lz/l;

    .line 138
    .line 139
    :cond_5
    move-object v7, v1

    .line 140
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->g()Landroidx/compose/ui/graphics/j1;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 149
    .line 150
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->d()F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    const/16 v9, 0x40

    .line 155
    .line 156
    const/4 v10, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    move-object v1, v2

    .line 159
    move-object v2, v0

    .line 160
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/text/MultiParagraph;->A(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    .line 165
    .line 166
    if-eqz v1, :cond_7

    .line 167
    .line 168
    invoke-interface {v1}, Landroidx/compose/ui/graphics/x1;->a()J

    .line 169
    .line 170
    .line 171
    move-result-wide v3

    .line 172
    goto :goto_2

    .line 173
    :cond_7
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 176
    .line 177
    .line 178
    move-result-wide v3

    .line 179
    :goto_2
    const-wide/16 v8, 0x10

    .line 180
    .line 181
    cmp-long v1, v3, v8

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->h()J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    cmp-long v1, v3, v8

    .line 193
    .line 194
    if-eqz v1, :cond_9

    .line 195
    .line 196
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->h()J

    .line 199
    .line 200
    .line 201
    move-result-wide v3

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    :goto_3
    const/16 v9, 0x20

    .line 210
    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v8, 0x0

    .line 213
    move-object v1, v2

    .line 214
    move-object v2, v0

    .line 215
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/text/MultiParagraph;->y(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    :goto_4
    if-eqz v13, :cond_a

    .line 219
    .line 220
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 221
    .line 222
    .line 223
    :cond_a
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    .line 224
    .line 225
    if-eqz v0, :cond_b

    .line 226
    .line 227
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->c()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-ne v0, v11, :cond_b

    .line 232
    .line 233
    move v0, v12

    .line 234
    goto :goto_5

    .line 235
    :cond_b
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    .line 236
    .line 237
    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/i;->a(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    :goto_5
    if-nez v0, :cond_e

    .line 242
    .line 243
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    .line 244
    .line 245
    check-cast v0, Ljava/util/Collection;

    .line 246
    .line 247
    if-eqz v0, :cond_d

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_c

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_c
    move v11, v12

    .line 257
    :cond_d
    :goto_6
    if-nez v11, :cond_f

    .line 258
    .line 259
    :cond_e
    invoke-interface {p1}, Lz/c;->X0()V

    .line 260
    .line 261
    .line 262
    :cond_f
    return-void

    .line 263
    :goto_7
    if-eqz v13, :cond_10

    .line 264
    .line 265
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 266
    .line 267
    .line 268
    :cond_10
    throw p1
.end method

.method public synthetic w0()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M1(Lo0/e;)Landroidx/compose/foundation/text/modifiers/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p3, p4, v1}, Landroidx/compose/foundation/text/modifiers/e;->e(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/e;->c()Landroidx/compose/ui/text/z;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    invoke-static {p0}, Landroidx/compose/ui/node/a0;->a(Landroidx/compose/ui/node/x;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Ljava/util/Map;

    .line 41
    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-direct {p3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/h;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->h()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/h;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->j()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Ljava/util/Map;

    .line 89
    .line 90
    :cond_2
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    if-eqz p3, :cond_3

    .line 93
    .line 94
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->x()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_3
    sget-object p3, Lo0/b;->b:Lo0/b$a;

    .line 102
    .line 103
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-static {v0, v1}, Lo0/t;->g(J)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    invoke-static {v1, v2}, Lo0/t;->g(J)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    invoke-static {v2, v3}, Lo0/t;->f(J)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    invoke-static {v3, v4}, Lo0/t;->f(J)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {p3, v0, v1, v2, v3}, Lo0/b$a;->b(IIII)J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-static {v0, v1}, Lo0/t;->g(J)I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    invoke-static {v0, v1}, Lo0/t;->f(J)I

    .line 156
    .line 157
    .line 158
    move-result p4

    .line 159
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Ljava/util/Map;

    .line 160
    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$measure$1;

    .line 165
    .line 166
    invoke-direct {v1, p2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$measure$1;-><init>(Landroidx/compose/ui/layout/g0;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, p3, p4, v0, v1}, Landroidx/compose/ui/layout/x;->p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1
.end method
