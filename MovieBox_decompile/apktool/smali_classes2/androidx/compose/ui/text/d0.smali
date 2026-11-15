.class public final Landroidx/compose/ui/text/d0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/d0$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/text/d0$a;

.field private static final e:Landroidx/compose/ui/text/d0;


# instance fields
.field private final a:Landroidx/compose/ui/text/x;

.field private final b:Landroidx/compose/ui/text/r;

.field private final c:Landroidx/compose/ui/text/w;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v0, Landroidx/compose/ui/text/d0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/d0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/d0;->d:Landroidx/compose/ui/text/d0$a;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/d0;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    const v32, 0xffffff

    .line 13
    .line 14
    .line 15
    const/16 v33, 0x0

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    const-wide/16 v12, 0x0

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const-wide/16 v17, 0x0

    .line 33
    .line 34
    const/16 v19, 0x0

    .line 35
    .line 36
    const/16 v20, 0x0

    .line 37
    .line 38
    const/16 v21, 0x0

    .line 39
    .line 40
    const/16 v22, 0x0

    .line 41
    .line 42
    const/16 v23, 0x0

    .line 43
    .line 44
    const-wide/16 v24, 0x0

    .line 45
    .line 46
    const/16 v26, 0x0

    .line 47
    .line 48
    const/16 v27, 0x0

    .line 49
    .line 50
    const/16 v28, 0x0

    .line 51
    .line 52
    const/16 v29, 0x0

    .line 53
    .line 54
    const/16 v30, 0x0

    .line 55
    .line 56
    const/16 v31, 0x0

    .line 57
    .line 58
    invoke-direct/range {v2 .. v33}, Landroidx/compose/ui/text/d0;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Landroidx/compose/ui/text/d0;->e:Landroidx/compose/ui/text/d0;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)V
    .locals 25

    move-object/from16 v0, p25

    .line 20
    new-instance v15, Landroidx/compose/ui/text/x;

    const/16 v23, 0x0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->b()Landroidx/compose/ui/text/v;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_0
    move-object/from16 v20, v23

    :goto_0
    const/16 v22, 0x0

    move-object v1, v15

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v24, v15

    move-object/from16 v15, p14

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v21, p19

    .line 22
    invoke-direct/range {v1 .. v22}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    new-instance v1, Landroidx/compose/ui/text/r;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object v23

    :cond_1
    const/4 v2, 0x0

    move-object/from16 p1, v1

    move/from16 p2, p20

    move/from16 p3, p21

    move-wide/from16 p4, p22

    move-object/from16 p6, p24

    move-object/from16 p7, v23

    move-object/from16 p8, p26

    move/from16 p9, p27

    move/from16 p10, p28

    move-object/from16 p11, p29

    move-object/from16 p12, v2

    .line 25
    invoke-direct/range {p1 .. p12}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    .line 26
    invoke-direct {v2, v3, v1, v0}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 10
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 11
    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 12
    sget-object v11, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v11}, Lo0/w$a;->a()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_b

    .line 13
    sget-object v6, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p15

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v6, p17

    :goto_c
    move-object/from16 v18, v6

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v6, p18

    :goto_d
    move-object/from16 v19, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v6, p19

    :goto_e
    const v20, 0x8000

    and-int v20, v0, v20

    if-eqz v20, :cond_f

    .line 14
    sget-object v20, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/style/h$a;->g()I

    move-result v20

    goto :goto_f

    :cond_f
    move/from16 v20, p20

    :goto_f
    const/high16 v21, 0x10000

    and-int v21, v0, v21

    if-eqz v21, :cond_10

    .line 15
    sget-object v21, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v21

    goto :goto_10

    :cond_10
    move/from16 v21, p21

    :goto_10
    const/high16 v22, 0x20000

    and-int v22, v0, v22

    if-eqz v22, :cond_11

    .line 16
    sget-object v22, Lo0/w;->b:Lo0/w$a;

    invoke-virtual/range {v22 .. v22}, Lo0/w$a;->a()J

    move-result-wide v22

    goto :goto_11

    :cond_11
    move-wide/from16 v22, p22

    :goto_11
    const/high16 v24, 0x40000

    and-int v24, v0, v24

    if-eqz v24, :cond_12

    const/16 v24, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v24, p24

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v25, p25

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v26, p26

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    .line 17
    sget-object v27, Landroidx/compose/ui/text/style/e;->a:Landroidx/compose/ui/text/style/e$a;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/style/e$a;->b()I

    move-result v27

    goto :goto_15

    :cond_15
    move/from16 v27, p27

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    .line 18
    sget-object v28, Landroidx/compose/ui/text/style/d;->a:Landroidx/compose/ui/text/style/d$a;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/style/d$a;->c()I

    move-result v28

    goto :goto_16

    :cond_16
    move/from16 v28, p28

    :goto_16
    const/high16 v29, 0x800000

    and-int v0, v0, v29

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v0, p29

    :goto_17
    const/16 v29, 0x0

    move-object/from16 p31, v29

    move-object/from16 p1, p0

    move-wide/from16 p2, v1

    move-wide/from16 p4, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-wide/from16 p11, v11

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-wide/from16 p16, v16

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v6

    move/from16 p21, v20

    move/from16 p22, v21

    move-wide/from16 p23, v22

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move/from16 p28, v27

    move/from16 p29, v28

    move-object/from16 p30, v0

    .line 19
    invoke-direct/range {p1 .. p31}, Landroidx/compose/ui/text/d0;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p29}, Landroidx/compose/ui/text/d0;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/text/r;->g()Landroidx/compose/ui/text/u;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/text/e0;->a(Landroidx/compose/ui/text/v;Landroidx/compose/ui/text/u;)Landroidx/compose/ui/text/w;

    move-result-object v0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 4
    iput-object p2, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 5
    iput-object p3, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    return-void
.end method

.method public static synthetic J(Landroidx/compose/ui/text/d0;JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/d0;
    .locals 28

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 2
    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 3
    sget-object v11, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v11}, Lo0/w$a;->a()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_b

    .line 4
    sget-object v6, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p15

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v6, p17

    :goto_c
    move-object/from16 p17, v6

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v6, p18

    :goto_d
    move-object/from16 p18, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v6, p19

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    .line 5
    sget-object v18, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/style/h$a;->g()I

    move-result v18

    goto :goto_f

    :cond_f
    move/from16 v18, p20

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    .line 6
    sget-object v19, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v19

    goto :goto_10

    :cond_10
    move/from16 v19, p21

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    .line 7
    sget-object v20, Lo0/w;->b:Lo0/w$a;

    invoke-virtual/range {v20 .. v20}, Lo0/w$a;->a()J

    move-result-wide v20

    goto :goto_11

    :cond_11
    move-wide/from16 v20, p22

    :goto_11
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    if-eqz v22, :cond_12

    const/16 v22, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v22, p24

    :goto_12
    const/high16 v23, 0x80000

    and-int v23, v0, v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v23, p25

    :goto_13
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_14

    .line 8
    sget-object v24, Landroidx/compose/ui/text/style/e;->a:Landroidx/compose/ui/text/style/e$a;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/text/style/e$a;->b()I

    move-result v24

    goto :goto_14

    :cond_14
    move/from16 v24, p26

    :goto_14
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_15

    .line 9
    sget-object v25, Landroidx/compose/ui/text/style/d;->a:Landroidx/compose/ui/text/style/d$a;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/text/style/d$a;->c()I

    move-result v25

    goto :goto_15

    :cond_15
    move/from16 v25, p27

    :goto_15
    const/high16 v26, 0x400000

    and-int v26, v0, v26

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v26, p28

    :goto_16
    const/high16 v27, 0x800000

    and-int v0, v0, v27

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v0, p29

    :goto_17
    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-wide/from16 p15, v16

    move-object/from16 p19, v6

    move/from16 p20, v18

    move/from16 p21, v19

    move-wide/from16 p22, v20

    move-object/from16 p24, v22

    move-object/from16 p25, v23

    move/from16 p26, v24

    move/from16 p27, v25

    move-object/from16 p28, v26

    move-object/from16 p29, v0

    .line 10
    invoke-virtual/range {p0 .. p29}, Landroidx/compose/ui/text/d0;->I(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/d0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/d0;->e:Landroidx/compose/ui/text/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c(Landroidx/compose/ui/text/d0;JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/d0;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-object v2, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v2}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    .line 2
    iget-object v4, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v4}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    .line 3
    iget-object v6, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v6}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    .line 4
    iget-object v7, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v7}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    .line 5
    iget-object v8, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v8}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    .line 6
    iget-object v9, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v9}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    .line 7
    iget-object v10, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v10}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    .line 8
    iget-object v11, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v11}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    .line 9
    iget-object v13, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v13}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v13

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    .line 10
    iget-object v14, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v14}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v14

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    .line 11
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v15

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    .line 12
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v15

    goto :goto_b

    :cond_b
    move-wide/from16 v15, p15

    :goto_b
    move-wide/from16 p15, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    .line 13
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v15

    goto :goto_c

    :cond_c
    move-object/from16 v15, p17

    :goto_c
    move-object/from16 p17, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 14
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p18

    :goto_d
    move-object/from16 p18, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    .line 15
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object v15

    goto :goto_e

    :cond_e
    move-object/from16 v15, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_f

    .line 16
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->h()I

    move-result v15

    goto :goto_f

    :cond_f
    move/from16 v15, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_10

    .line 17
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->i()I

    move-result v15

    goto :goto_10

    :cond_10
    move/from16 v15, p21

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_11

    .line 18
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->e()J

    move-result-wide v15

    goto :goto_11

    :cond_11
    move-wide/from16 v15, p22

    :goto_11
    const/high16 v17, 0x40000

    and-int v17, v1, v17

    move-wide/from16 p22, v15

    if-eqz v17, :cond_12

    .line 19
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->j()Landroidx/compose/ui/text/style/n;

    move-result-object v15

    goto :goto_12

    :cond_12
    move-object/from16 v15, p24

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_13

    .line 20
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p25

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_14

    .line 21
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->f()Landroidx/compose/ui/text/style/g;

    move-result-object v15

    goto :goto_14

    :cond_14
    move-object/from16 v15, p26

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_15

    .line 22
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->d()I

    move-result v15

    goto :goto_15

    :cond_15
    move/from16 v15, p27

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_16

    .line 23
    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->c()I

    move-result v15

    goto :goto_16

    :cond_16
    move/from16 v15, p28

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    .line 24
    iget-object v1, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v1}, Landroidx/compose/ui/text/r;->k()Landroidx/compose/ui/text/style/o;

    move-result-object v1

    goto :goto_17

    :cond_17
    move-object/from16 v1, p29

    :goto_17
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p28, v15

    move-object/from16 p29, v1

    .line 25
    invoke-virtual/range {p0 .. p29}, Landroidx/compose/ui/text/d0;->b(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/compose/ui/text/style/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final B()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final C()Landroidx/compose/ui/text/style/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final D()Landroidx/compose/ui/text/style/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->j()Landroidx/compose/ui/text/style/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final E()Landroidx/compose/ui/text/style/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->k()Landroidx/compose/ui/text/style/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final F(Landroidx/compose/ui/text/d0;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/x;->w(Landroidx/compose/ui/text/x;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public final G(Landroidx/compose/ui/text/d0;)Z
    .locals 2

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/x;->v(Landroidx/compose/ui/text/x;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method public final H(Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/d0;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/text/d0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->L()Landroidx/compose/ui/text/x;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->K()Landroidx/compose/ui/text/r;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/r;->l(Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final I(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    const/16 v24, 0x0

    if-eqz p28, :cond_0

    .line 2
    invoke-virtual/range {p28 .. p28}, Landroidx/compose/ui/text/w;->b()Landroidx/compose/ui/text/v;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_0

    :cond_0
    move-object/from16 v22, v24

    :goto_0
    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v23, p19

    .line 3
    invoke-static/range {v1 .. v23}, Landroidx/compose/ui/text/SpanStyleKt;->b(Landroidx/compose/ui/text/x;JLandroidx/compose/ui/graphics/j1;FJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)Landroidx/compose/ui/text/x;

    move-result-object v1

    .line 4
    iget-object v2, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    if-eqz p28, :cond_1

    .line 5
    invoke-virtual/range {p28 .. p28}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object v24

    :cond_1
    move-object/from16 p1, v2

    move/from16 p2, p20

    move/from16 p3, p21

    move-wide/from16 p4, p22

    move-object/from16 p6, p24

    move-object/from16 p7, v24

    move-object/from16 p8, p25

    move/from16 p9, p26

    move/from16 p10, p27

    move-object/from16 p11, p29

    .line 6
    invoke-static/range {p1 .. p11}, Landroidx/compose/ui/text/s;->a(Landroidx/compose/ui/text/r;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/r;

    move-result-object v2

    .line 7
    iget-object v3, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    if-ne v3, v1, :cond_2

    iget-object v3, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    if-ne v3, v2, :cond_2

    return-object v0

    .line 8
    :cond_2
    new-instance v3, Landroidx/compose/ui/text/d0;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;)V

    return-object v3
.end method

.method public final K()Landroidx/compose/ui/text/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/compose/ui/text/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p25

    .line 1
    new-instance v4, Landroidx/compose/ui/text/d0;

    .line 2
    new-instance v14, Landroidx/compose/ui/text/x;

    .line 3
    iget-object v5, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v5}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v1, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v1}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    .line 5
    :cond_0
    sget-object v5, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    invoke-virtual {v5, v1, v2}, Landroidx/compose/ui/text/style/l$a;->b(J)Landroidx/compose/ui/text/style/l;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->b()Landroidx/compose/ui/text/v;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_2

    :cond_1
    move-object/from16 v23, v1

    :goto_2
    const/16 v25, 0x0

    move-object v5, v14

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object v2, v14

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-wide/from16 v19, p15

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v24, p19

    .line 7
    invoke-direct/range {v5 .. v25}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    new-instance v5, Landroidx/compose/ui/text/r;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object v1

    :cond_2
    const/4 v6, 0x0

    move-object/from16 p1, v5

    move/from16 p2, p20

    move/from16 p3, p21

    move-wide/from16 p4, p22

    move-object/from16 p6, p24

    move-object/from16 p7, v1

    move-object/from16 p8, p26

    move/from16 p9, p27

    move/from16 p10, p28

    move-object/from16 p11, p29

    move-object/from16 p12, v6

    .line 10
    invoke-direct/range {p1 .. p12}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-direct {v4, v2, v5, v3}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V

    return-object v4
.end method

.method public final d()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
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
    instance-of v1, p1, Landroidx/compose/ui/text/d0;

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
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/text/d0;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

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
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final f()Landroidx/compose/ui/text/style/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()Landroidx/compose/ui/graphics/j1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->f()Landroidx/compose/ui/graphics/j1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/r;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/ui/text/w;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final i()Lz/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->h()Lz/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final j()Landroidx/compose/ui/text/font/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->k()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final m()Landroidx/compose/ui/text/font/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final n()Landroidx/compose/ui/text/font/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o()Landroidx/compose/ui/text/font/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->o()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final s()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final t()Landroidx/compose/ui/text/style/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->f()Landroidx/compose/ui/text/style/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TextStyle(color="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->h()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", brush="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->g()Landroidx/compose/ui/graphics/j1;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", alpha="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->d()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", fontSize="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->l()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", fontWeight="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->o()Landroidx/compose/ui/text/font/p;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", fontStyle="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->m()Landroidx/compose/ui/text/font/n;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", fontSynthesis="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->n()Landroidx/compose/ui/text/font/o;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", fontFamily="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->j()Landroidx/compose/ui/text/font/h;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", fontFeatureSettings="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->k()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", letterSpacing="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->q()J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ", baselineShift="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->f()Landroidx/compose/ui/text/style/a;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", textGeometricTransform="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->C()Landroidx/compose/ui/text/style/m;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", localeList="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->u()Ln0/i;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", background="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->e()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", textDecoration="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->A()Landroidx/compose/ui/text/style/i;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ", shadow="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->x()Landroidx/compose/ui/graphics/z4;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, ", drawStyle="

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->i()Lz/h;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", textAlign="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->z()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {v1}, Landroidx/compose/ui/text/style/h;->m(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", textDirection="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->B()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {v1}, Landroidx/compose/ui/text/style/j;->l(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, ", lineHeight="

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->s()J

    .line 264
    .line 265
    .line 266
    move-result-wide v1

    .line 267
    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", textIndent="

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->D()Landroidx/compose/ui/text/style/n;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, ", platformStyle="

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", lineHeightStyle="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->t()Landroidx/compose/ui/text/style/g;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, ", lineBreak="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->r()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-static {v1}, Landroidx/compose/ui/text/style/e;->i(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v1, ", hyphens="

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->p()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-static {v1}, Landroidx/compose/ui/text/style/d;->g(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v1, ", textMotion="

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->E()Landroidx/compose/ui/text/style/o;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const/16 v1, 0x29

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    return-object v0
.end method

.method public final u()Ln0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final v()Landroidx/compose/ui/text/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Landroidx/compose/ui/text/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/compose/ui/graphics/z4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final y()Landroidx/compose/ui/text/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
