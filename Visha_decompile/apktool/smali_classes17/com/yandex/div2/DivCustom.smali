.class public final Lcom/yandex/div2/DivCustom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;
.implements Log2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivCustom$a;
    }
.end annotation


# static fields
.field public static final L:Lcom/yandex/div2/DivCustom$a;

.field public static final M:Lcom/yandex/div/json/expressions/Expression;

.field public static final N:Lcom/yandex/div2/DivSize$d;

.field public static final O:Lcom/yandex/div/json/expressions/Expression;

.field public static final P:Lcom/yandex/div2/DivSize$c;

.field public static final Q:Ls74;


# instance fields
.field public final A:Lcom/yandex/div2/DivAppearanceTransition;

.field public final B:Lcom/yandex/div2/DivAppearanceTransition;

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:Lcom/yandex/div/json/expressions/Expression;

.field public final G:Lcom/yandex/div2/DivVisibilityAction;

.field public final H:Ljava/util/List;

.field public final I:Lcom/yandex/div2/DivSize;

.field public J:Ljava/lang/Integer;

.field public K:Ljava/lang/Integer;

.field public final a:Lcom/yandex/div2/DivAccessibility;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Lcom/yandex/div2/DivBorder;

.field public final h:Lcom/yandex/div/json/expressions/Expression;

.field public final i:Lorg/json/JSONObject;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Lcom/yandex/div2/DivFocus;

.field public final n:Ljava/util/List;

.field public final o:Lcom/yandex/div2/DivSize;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/util/List;

.field public final r:Lcom/yandex/div2/DivLayoutProvider;

.field public final s:Lcom/yandex/div2/DivEdgeInsets;

.field public final t:Lcom/yandex/div2/DivEdgeInsets;

.field public final u:Lcom/yandex/div/json/expressions/Expression;

.field public final v:Lcom/yandex/div/json/expressions/Expression;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:Lcom/yandex/div2/DivTransform;

.field public final z:Lcom/yandex/div2/DivChangeTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/yandex/div2/DivCustom$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivCustom$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivCustom;->L:Lcom/yandex/div2/DivCustom$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivCustom;->M:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivSize$d;

    new-instance v9, Lcom/yandex/div2/DivWrapContentSize;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v9}, Lcom/yandex/div2/DivSize$d;-><init>(Lcom/yandex/div2/DivWrapContentSize;)V

    sput-object v2, Lcom/yandex/div2/DivCustom;->N:Lcom/yandex/div2/DivSize$d;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivCustom;->O:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivCustom;->P:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lcom/yandex/div2/DivCustom$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivCustom$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivCustom;->Q:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V
    .locals 7

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p10

    move-object/from16 v3, p15

    move-object/from16 v4, p32

    move-object/from16 v5, p35

    const-string v6, "alpha"

    invoke-static {p4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "customType"

    invoke-static {v2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "height"

    invoke-static {v3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "visibility"

    invoke-static {v4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "width"

    invoke-static {v5, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v6, p1

    iput-object v6, v0, Lcom/yandex/div2/DivCustom;->a:Lcom/yandex/div2/DivAccessibility;

    move-object v6, p2

    iput-object v6, v0, Lcom/yandex/div2/DivCustom;->b:Lcom/yandex/div/json/expressions/Expression;

    move-object v6, p3

    iput-object v6, v0, Lcom/yandex/div2/DivCustom;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->d:Lcom/yandex/div/json/expressions/Expression;

    move-object v1, p5

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->e:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->f:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->g:Lcom/yandex/div2/DivBorder;

    move-object v1, p8

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->h:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->i:Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->k:Ljava/util/List;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->l:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->m:Lcom/yandex/div2/DivFocus;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->n:Ljava/util/List;

    iput-object v3, v0, Lcom/yandex/div2/DivCustom;->o:Lcom/yandex/div2/DivSize;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->p:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->r:Lcom/yandex/div2/DivLayoutProvider;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->s:Lcom/yandex/div2/DivEdgeInsets;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->t:Lcom/yandex/div2/DivEdgeInsets;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->u:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->v:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->w:Ljava/util/List;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->x:Ljava/util/List;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->y:Lcom/yandex/div2/DivTransform;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->z:Lcom/yandex/div2/DivChangeTransition;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->A:Lcom/yandex/div2/DivAppearanceTransition;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->B:Lcom/yandex/div2/DivAppearanceTransition;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->C:Ljava/util/List;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->D:Ljava/util/List;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->E:Ljava/util/List;

    iput-object v4, v0, Lcom/yandex/div2/DivCustom;->F:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->G:Lcom/yandex/div2/DivVisibilityAction;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/yandex/div2/DivCustom;->H:Ljava/util/List;

    iput-object v5, v0, Lcom/yandex/div2/DivCustom;->I:Lcom/yandex/div2/DivSize;

    return-void
.end method

.method public static synthetic D(Lcom/yandex/div2/DivCustom;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivCustom;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p36

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->A()Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->getBackground()Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/yandex/div2/DivCustom;->i:Lorg/json/JSONObject;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->k()Ljava/util/List;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->getExtensions()Ljava/util/List;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v14

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->y()Ljava/util/List;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v15

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->getId()Ljava/lang/String;

    move-result-object v16

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v1, v17

    move-object/from16 p15, v15

    if-eqz v17, :cond_10

    iget-object v15, v0, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v17, 0x20000

    and-int v17, v1, v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v17

    goto :goto_11

    :cond_11
    move-object/from16 v17, p18

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, v1, v18

    if-eqz v18, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v18

    goto :goto_12

    :cond_12
    move-object/from16 v18, p19

    :goto_12
    const/high16 v19, 0x80000

    and-int v19, v1, v19

    if-eqz v19, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v19

    goto :goto_13

    :cond_13
    move-object/from16 v19, p20

    :goto_13
    const/high16 v20, 0x100000

    and-int v20, v1, v20

    if-eqz v20, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    goto :goto_14

    :cond_14
    move-object/from16 v20, p21

    :goto_14
    const/high16 v21, 0x200000

    and-int v21, v1, v21

    if-eqz v21, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    goto :goto_15

    :cond_15
    move-object/from16 v21, p22

    :goto_15
    const/high16 v22, 0x400000

    and-int v22, v1, v22

    if-eqz v22, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->u()Ljava/util/List;

    move-result-object v22

    goto :goto_16

    :cond_16
    move-object/from16 v22, p23

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, v1, v23

    if-eqz v23, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->h()Ljava/util/List;

    move-result-object v23

    goto :goto_17

    :cond_17
    move-object/from16 v23, p24

    :goto_17
    const/high16 v24, 0x1000000

    and-int v24, v1, v24

    if-eqz v24, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v24

    goto :goto_18

    :cond_18
    move-object/from16 v24, p25

    :goto_18
    const/high16 v25, 0x2000000

    and-int v25, v1, v25

    if-eqz v25, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v25

    goto :goto_19

    :cond_19
    move-object/from16 v25, p26

    :goto_19
    const/high16 v26, 0x4000000

    and-int v26, v1, v26

    if-eqz v26, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v26

    goto :goto_1a

    :cond_1a
    move-object/from16 v26, p27

    :goto_1a
    const/high16 v27, 0x8000000

    and-int v27, v1, v27

    if-eqz v27, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v27

    goto :goto_1b

    :cond_1b
    move-object/from16 v27, p28

    :goto_1b
    const/high16 v28, 0x10000000

    and-int v28, v1, v28

    if-eqz v28, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->n()Ljava/util/List;

    move-result-object v28

    goto :goto_1c

    :cond_1c
    move-object/from16 v28, p29

    :goto_1c
    const/high16 v29, 0x20000000

    and-int v29, v1, v29

    if-eqz v29, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->w()Ljava/util/List;

    move-result-object v29

    goto :goto_1d

    :cond_1d
    move-object/from16 v29, p30

    :goto_1d
    const/high16 v30, 0x40000000    # 2.0f

    and-int v30, v1, v30

    if-eqz v30, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->c()Ljava/util/List;

    move-result-object v30

    goto :goto_1e

    :cond_1e
    move-object/from16 v30, p31

    :goto_1e
    const/high16 v31, -0x80000000

    and-int v1, v1, v31

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v31, p37, 0x1

    if-eqz v31, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v31

    goto :goto_20

    :cond_20
    move-object/from16 v31, p33

    :goto_20
    and-int/lit8 v32, p37, 0x2

    if-eqz v32, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->a()Ljava/util/List;

    move-result-object v32

    goto :goto_21

    :cond_21
    move-object/from16 v32, p34

    :goto_21
    and-int/lit8 v33, p37, 0x4

    if-eqz v33, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivCustom;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v33

    goto :goto_22

    :cond_22
    move-object/from16 v33, p35

    :goto_22
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v16

    move-object/from16 p17, v15

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v1

    move-object/from16 p33, v31

    move-object/from16 p34, v32

    move-object/from16 p35, v33

    invoke-virtual/range {p0 .. p35}, Lcom/yandex/div2/DivCustom;->C(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivCustom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->e:Ljava/util/List;

    return-object p0
.end method

.method public B()Lcom/yandex/div2/DivBorder;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->g:Lcom/yandex/div2/DivBorder;

    return-object p0
.end method

.method public final C(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivCustom;
    .locals 37

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    const-string v0, "alpha"

    move-object/from16 p0, v1

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customType"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    move-object/from16 v1, p35

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v36, Lcom/yandex/div2/DivCustom;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v35}, Lcom/yandex/div2/DivCustom;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v36
.end method

.method public final E(Lcom/yandex/div2/DivCustom;Loj3;Loj3;)Z
    .locals 8

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAccessibility;->a(Lcom/yandex/div2/DivAccessibility;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    if-ne v1, v4, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    if-ne v1, v4, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v0

    :goto_5
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->A()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    return v0

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_9

    goto :goto_7

    :cond_9
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_a

    invoke-static {}, Ly71;->u()V

    :cond_a
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAnimator;

    check-cast v6, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAnimator;->a(Lcom/yandex/div2/DivAnimator;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move v5, v7

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->A()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    move v1, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v1, v0

    :goto_8
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getBackground()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getBackground()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    return v0

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_10

    goto :goto_a

    :cond_10
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_11

    invoke-static {}, Ly71;->u()V

    :cond_11
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivBackground;

    check-cast v6, Lcom/yandex/div2/DivBackground;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivBackground;->a(Lcom/yandex/div2/DivBackground;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_a

    :cond_12
    move v5, v7

    goto :goto_9

    :cond_13
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getBackground()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_14
    move v1, v2

    goto :goto_b

    :cond_15
    :goto_a
    move v1, v0

    :goto_b
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivBorder;->a(Lcom/yandex/div2/DivBorder;Loj3;Loj3;)Z

    move-result v1

    goto :goto_c

    :cond_16
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_c

    :cond_17
    move v1, v0

    :goto_c
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_d

    :cond_18
    move-object v1, v3

    :goto_d
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_e

    :cond_19
    move-object v4, v3

    :goto_e
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/yandex/div2/DivCustom;->i:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/yandex/div2/DivCustom;->i:Lorg/json/JSONObject;

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    iget-object v4, p1, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->k()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1a

    return v0

    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1b

    goto :goto_10

    :cond_1b
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_1c

    invoke-static {}, Ly71;->u()V

    :cond_1c
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivDisappearAction;

    check-cast v6, Lcom/yandex/div2/DivDisappearAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivDisappearAction;->g(Lcom/yandex/div2/DivDisappearAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_10

    :cond_1d
    move v5, v7

    goto :goto_f

    :cond_1e
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->k()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_20

    :cond_1f
    move v1, v2

    goto :goto_11

    :cond_20
    :goto_10
    move v1, v0

    :goto_11
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getExtensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_21

    return v0

    :cond_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_22

    goto :goto_13

    :cond_22
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_23

    invoke-static {}, Ly71;->u()V

    :cond_23
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivExtension;

    check-cast v6, Lcom/yandex/div2/DivExtension;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivExtension;->a(Lcom/yandex/div2/DivExtension;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_13

    :cond_24
    move v5, v7

    goto :goto_12

    :cond_25
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_27

    :cond_26
    move v1, v2

    goto :goto_14

    :cond_27
    :goto_13
    move v1, v0

    :goto_14
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivFocus;->a(Lcom/yandex/div2/DivFocus;Loj3;Loj3;)Z

    move-result v1

    goto :goto_15

    :cond_28
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    goto :goto_15

    :cond_29
    move v1, v0

    :goto_15
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->y()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->y()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2a

    return v0

    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2b

    goto :goto_17

    :cond_2b
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_2c

    invoke-static {}, Ly71;->u()V

    :cond_2c
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivFunction;

    check-cast v6, Lcom/yandex/div2/DivFunction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivFunction;->a(Lcom/yandex/div2/DivFunction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_17

    :cond_2d
    move v5, v7

    goto :goto_16

    :cond_2e
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->y()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_30

    :cond_2f
    move v1, v2

    goto :goto_18

    :cond_30
    :goto_17
    move v1, v0

    :goto_18
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivSize;->a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    if-eqz v1, :cond_35

    iget-object v4, p1, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    if-nez v4, :cond_31

    return v0

    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_32

    goto :goto_1a

    :cond_32
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_33

    invoke-static {}, Ly71;->u()V

    :cond_33
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/Div;

    check-cast v6, Lcom/yandex/div2/Div;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/Div;->a(Lcom/yandex/div2/Div;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_1a

    :cond_34
    move v5, v7

    goto :goto_19

    :cond_35
    iget-object v1, p1, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    if-nez v1, :cond_37

    :cond_36
    move v1, v2

    goto :goto_1b

    :cond_37
    :goto_1a
    move v1, v0

    :goto_1b
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivLayoutProvider;->a(Lcom/yandex/div2/DivLayoutProvider;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1c

    :cond_38
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-nez v1, :cond_39

    move v1, v2

    goto :goto_1c

    :cond_39
    move v1, v0

    :goto_1c
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1d

    :cond_3a
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    goto :goto_1d

    :cond_3b
    move v1, v0

    :goto_1d
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1e

    :cond_3c
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-nez v1, :cond_3d

    move v1, v2

    goto :goto_1e

    :cond_3d
    move v1, v0

    :goto_1e
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1f

    :cond_3e
    move-object v1, v3

    :goto_1f
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_20

    :cond_3f
    move-object v4, v3

    :goto_20
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_21

    :cond_40
    move-object v1, v3

    :goto_21
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_41

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_41
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->u()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_42

    return v0

    :cond_42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_43

    goto :goto_23

    :cond_43
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_44

    invoke-static {}, Ly71;->u()V

    :cond_44
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    check-cast v5, Lcom/yandex/div2/DivAction;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_23

    :cond_45
    move v4, v6

    goto :goto_22

    :cond_46
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->u()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_48

    :cond_47
    move v1, v2

    goto :goto_24

    :cond_48
    :goto_23
    move v1, v0

    :goto_24
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_49

    return v0

    :cond_49
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4a

    goto :goto_26

    :cond_4a
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_4b

    invoke-static {}, Ly71;->u()V

    :cond_4b
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTooltip;

    check-cast v5, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivTooltip;->a(Lcom/yandex/div2/DivTooltip;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_26

    :cond_4c
    move v4, v6

    goto :goto_25

    :cond_4d
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->h()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4f

    :cond_4e
    move v1, v2

    goto :goto_27

    :cond_4f
    :goto_26
    move v1, v0

    :goto_27
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivTransform;->a(Lcom/yandex/div2/DivTransform;Loj3;Loj3;)Z

    move-result v1

    goto :goto_28

    :cond_50
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-nez v1, :cond_51

    move v1, v2

    goto :goto_28

    :cond_51
    move v1, v0

    :goto_28
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivChangeTransition;->a(Lcom/yandex/div2/DivChangeTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_29

    :cond_52
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-nez v1, :cond_53

    move v1, v2

    goto :goto_29

    :cond_53
    move v1, v0

    :goto_29
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAppearanceTransition;->a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2a

    :cond_54
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-nez v1, :cond_55

    move v1, v2

    goto :goto_2a

    :cond_55
    move v1, v0

    :goto_2a
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAppearanceTransition;->a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2b

    :cond_56
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-nez v1, :cond_57

    move v1, v2

    goto :goto_2b

    :cond_57
    move v1, v0

    :goto_2b
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->n()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_58

    return v0

    :cond_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_59

    goto :goto_2e

    :cond_59
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_5a

    invoke-static {}, Ly71;->u()V

    :cond_5a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTransitionTrigger;

    check-cast v5, Lcom/yandex/div2/DivTransitionTrigger;

    if-ne v5, v4, :cond_5b

    move v4, v2

    goto :goto_2d

    :cond_5b
    move v4, v0

    :goto_2d
    if-nez v4, :cond_5c

    goto :goto_2e

    :cond_5c
    move v4, v6

    goto :goto_2c

    :cond_5d
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->n()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5f

    :cond_5e
    move v1, v2

    goto :goto_2f

    :cond_5f
    :goto_2e
    move v1, v0

    :goto_2f
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->w()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_60

    return v0

    :cond_60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_61

    goto :goto_31

    :cond_61
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_62

    invoke-static {}, Ly71;->u()V

    :cond_62
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTrigger;

    check-cast v5, Lcom/yandex/div2/DivTrigger;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivTrigger;->a(Lcom/yandex/div2/DivTrigger;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_31

    :cond_63
    move v4, v6

    goto :goto_30

    :cond_64
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->w()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_66

    :cond_65
    move v1, v2

    goto :goto_32

    :cond_66
    :goto_31
    move v1, v0

    :goto_32
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->c()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_67

    return v0

    :cond_67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_68

    goto :goto_34

    :cond_68
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_69

    invoke-static {}, Ly71;->u()V

    :cond_69
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVariable;

    check-cast v5, Lcom/yandex/div2/DivVariable;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivVariable;->a(Lcom/yandex/div2/DivVariable;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto :goto_34

    :cond_6a
    move v4, v6

    goto :goto_33

    :cond_6b
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6d

    :cond_6c
    move v1, v2

    goto :goto_35

    :cond_6d
    :goto_34
    move v1, v0

    :goto_35
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivVisibilityAction;->g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z

    move-result v1

    goto :goto_36

    :cond_6e
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-nez v1, :cond_6f

    move v1, v2

    goto :goto_36

    :cond_6f
    move v1, v0

    :goto_36
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_70

    return v0

    :cond_70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_71

    goto :goto_38

    :cond_71
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_72

    invoke-static {}, Ly71;->u()V

    :cond_72
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVisibilityAction;

    check-cast v5, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivVisibilityAction;->g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_73

    goto :goto_38

    :cond_73
    move v4, v6

    goto :goto_37

    :cond_74
    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_76

    :cond_75
    move v1, v2

    goto :goto_39

    :cond_76
    :goto_38
    move v1, v0

    :goto_39
    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivCustom;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSize;->a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_77

    move v0, v2

    :cond_77
    return v0
.end method

.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->H:Ljava/util/List;

    return-object p0
.end method

.method public b()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->h:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->E:Ljava/util/List;

    return-object p0
.end method

.method public d()Lcom/yandex/div2/DivEdgeInsets;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->s:Lcom/yandex/div2/DivEdgeInsets;

    return-object p0
.end method

.method public e()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->v:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public f()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->u:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public g()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->b:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getBackground()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->f:Ljava/util/List;

    return-object p0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->l:Ljava/util/List;

    return-object p0
.end method

.method public getHeight()Lcom/yandex/div2/DivSize;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->o:Lcom/yandex/div2/DivSize;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibility()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->F:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getWidth()Lcom/yandex/div2/DivSize;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->I:Lcom/yandex/div2/DivSize;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->x:Ljava/util/List;

    return-object p0
.end method

.method public hash()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/div2/DivCustom;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->l()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/Div;

    invoke-virtual {v3}, Lcom/yandex/div2/Div;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivCustom;->K:Ljava/lang/Integer;

    return v0
.end method

.method public i()Lcom/yandex/div2/DivAppearanceTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->B:Lcom/yandex/div2/DivAppearanceTransition;

    return-object p0
.end method

.method public j()Lcom/yandex/div2/DivChangeTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->z:Lcom/yandex/div2/DivChangeTransition;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->k:Ljava/util/List;

    return-object p0
.end method

.method public l()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivCustom;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivCustom;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivAccessibility;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAnimator;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getBackground()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivBackground;

    invoke-virtual {v4}, Lcom/yandex/div2/DivBackground;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    :cond_6
    move v3, v2

    :cond_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/yandex/div2/DivBorder;->hash()I

    move-result v1

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivCustom;->i:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivDisappearAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivDisappearAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_8

    :cond_b
    move v3, v2

    :cond_c
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivExtension;

    invoke-virtual {v4}, Lcom/yandex/div2/DivExtension;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    :cond_d
    move v3, v2

    :cond_e
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/yandex/div2/DivFocus;->hash()I

    move-result v1

    goto :goto_a

    :cond_f
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->y()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFunction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivFunction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_b

    :cond_10
    move v3, v2

    :cond_11
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_12
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/yandex/div2/DivLayoutProvider;->hash()I

    move-result v1

    goto :goto_d

    :cond_13
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_e

    :cond_14
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_f

    :cond_15
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_16
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_17
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_12

    :cond_18
    move v3, v2

    :cond_19
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v4}, Lcom/yandex/div2/DivTooltip;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_13

    :cond_1a
    move v3, v2

    :cond_1b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/yandex/div2/DivTransform;->hash()I

    move-result v1

    goto :goto_14

    :cond_1c
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/yandex/div2/DivChangeTransition;->hash()I

    move-result v1

    goto :goto_15

    :cond_1d
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition;->hash()I

    move-result v1

    goto :goto_16

    :cond_1e
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition;->hash()I

    move-result v1

    goto :goto_17

    :cond_1f
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_20
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTrigger;

    invoke-virtual {v4}, Lcom/yandex/div2/DivTrigger;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_19

    :cond_21
    move v3, v2

    :cond_22
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_23

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVariable;

    invoke-virtual {v4}, Lcom/yandex/div2/DivVariable;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1a

    :cond_23
    move v3, v2

    :cond_24
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/yandex/div2/DivVisibilityAction;->hash()I

    move-result v1

    goto :goto_1b

    :cond_25
    move v1, v2

    :goto_1b
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_26

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v3}, Lcom/yandex/div2/DivVisibilityAction;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1c

    :cond_26
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/yandex/div2/DivCustom;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivCustom;->J:Ljava/lang/Integer;

    return v0
.end method

.method public m()Lcom/yandex/div2/DivTransform;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->y:Lcom/yandex/div2/DivTransform;

    return-object p0
.end method

.method public n()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->C:Ljava/util/List;

    return-object p0
.end method

.method public o()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->c:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public p()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->d:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public q()Lcom/yandex/div2/DivFocus;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->m:Lcom/yandex/div2/DivFocus;

    return-object p0
.end method

.method public r()Lcom/yandex/div2/DivAccessibility;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->a:Lcom/yandex/div2/DivAccessibility;

    return-object p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->y2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCustomJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivCustomJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivCustom;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public t()Lcom/yandex/div2/DivEdgeInsets;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->t:Lcom/yandex/div2/DivEdgeInsets;

    return-object p0
.end method

.method public u()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->w:Ljava/util/List;

    return-object p0
.end method

.method public v()Lcom/yandex/div2/DivLayoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->r:Lcom/yandex/div2/DivLayoutProvider;

    return-object p0
.end method

.method public w()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->D:Ljava/util/List;

    return-object p0
.end method

.method public x()Lcom/yandex/div2/DivVisibilityAction;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->G:Lcom/yandex/div2/DivVisibilityAction;

    return-object p0
.end method

.method public y()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->n:Ljava/util/List;

    return-object p0
.end method

.method public z()Lcom/yandex/div2/DivAppearanceTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivCustom;->A:Lcom/yandex/div2/DivAppearanceTransition;

    return-object p0
.end method
