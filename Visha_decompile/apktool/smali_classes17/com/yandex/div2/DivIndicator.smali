.class public final Lcom/yandex/div2/DivIndicator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;
.implements Log2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivIndicator$Animation;,
        Lcom/yandex/div2/DivIndicator$a;
    }
.end annotation


# static fields
.field public static final T:Lcom/yandex/div2/DivIndicator$a;

.field public static final U:Lcom/yandex/div/json/expressions/Expression;

.field public static final V:Lcom/yandex/div/json/expressions/Expression;

.field public static final W:Lcom/yandex/div/json/expressions/Expression;

.field public static final X:Lcom/yandex/div/json/expressions/Expression;

.field public static final Y:Lcom/yandex/div2/DivSize$d;

.field public static final Z:Lcom/yandex/div/json/expressions/Expression;

.field public static final a0:Lcom/yandex/div/json/expressions/Expression;

.field public static final b0:Lcom/yandex/div2/DivShape$c;

.field public static final c0:Lcom/yandex/div2/DivFixedSize;

.field public static final d0:Lcom/yandex/div/json/expressions/Expression;

.field public static final e0:Lcom/yandex/div2/DivSize$c;

.field public static final f0:Ls74;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Lcom/yandex/div/json/expressions/Expression;

.field public final C:Lcom/yandex/div/json/expressions/Expression;

.field public final D:Ljava/util/List;

.field public final E:Lcom/yandex/div2/DivShape;

.field public final F:Lcom/yandex/div2/DivFixedSize;

.field public final G:Ljava/util/List;

.field public final H:Lcom/yandex/div2/DivTransform;

.field public final I:Lcom/yandex/div2/DivChangeTransition;

.field public final J:Lcom/yandex/div2/DivAppearanceTransition;

.field public final K:Lcom/yandex/div2/DivAppearanceTransition;

.field public final L:Ljava/util/List;

.field public final M:Ljava/util/List;

.field public final N:Ljava/util/List;

.field public final O:Lcom/yandex/div/json/expressions/Expression;

.field public final P:Lcom/yandex/div2/DivVisibilityAction;

.field public final Q:Ljava/util/List;

.field public final R:Lcom/yandex/div2/DivSize;

.field public S:Ljava/lang/Integer;

.field public final a:Lcom/yandex/div2/DivAccessibility;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div2/DivRoundedRectangleShape;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Lcom/yandex/div/json/expressions/Expression;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Lcom/yandex/div2/DivBorder;

.field public final l:Lcom/yandex/div/json/expressions/Expression;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/List;

.field public final o:Lcom/yandex/div2/DivFocus;

.field public final p:Ljava/util/List;

.field public final q:Lcom/yandex/div2/DivSize;

.field public final r:Ljava/lang/String;

.field public final s:Lcom/yandex/div/json/expressions/Expression;

.field public final t:Lcom/yandex/div2/DivRoundedRectangleShape;

.field public final u:Lcom/yandex/div2/DivRoundedRectangleShape;

.field public final v:Lcom/yandex/div2/DivIndicatorItemPlacement;

.field public final w:Lcom/yandex/div2/DivLayoutProvider;

.field public final x:Lcom/yandex/div2/DivEdgeInsets;

.field public final y:Lcom/yandex/div/json/expressions/Expression;

.field public final z:Lcom/yandex/div2/DivEdgeInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/yandex/div2/DivIndicator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivIndicator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivIndicator;->T:Lcom/yandex/div2/DivIndicator$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const v2, 0xffdc60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicator;->U:Lcom/yandex/div/json/expressions/Expression;

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicator;->V:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicator;->W:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivIndicator$Animation;->SCALE:Lcom/yandex/div2/DivIndicator$Animation;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicator;->X:Lcom/yandex/div/json/expressions/Expression;

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

    sput-object v2, Lcom/yandex/div2/DivIndicator;->Y:Lcom/yandex/div2/DivSize$d;

    const v2, 0x33919cb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicator;->Z:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicator;->a0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivShape$c;

    new-instance v11, Lcom/yandex/div2/DivRoundedRectangleShape;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/yandex/div2/DivRoundedRectangleShape;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v11}, Lcom/yandex/div2/DivShape$c;-><init>(Lcom/yandex/div2/DivRoundedRectangleShape;)V

    sput-object v2, Lcom/yandex/div2/DivIndicator;->b0:Lcom/yandex/div2/DivShape$c;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivIndicator;->c0:Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivIndicator;->d0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    invoke-direct {v2, v1, v4, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivIndicator;->e0:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lcom/yandex/div2/DivIndicator$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivIndicator$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivIndicator;->f0:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivIndicatorItemPlacement;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p17

    move-object/from16 v6, p19

    move-object/from16 v7, p25

    move-object/from16 v8, p31

    move-object/from16 v9, p32

    move-object/from16 v10, p41

    move-object/from16 v11, p44

    const-string v12, "activeItemColor"

    invoke-static {p2, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "activeItemSize"

    invoke-static {v2, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "alpha"

    invoke-static {v3, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "animation"

    invoke-static {v4, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "height"

    invoke-static {v5, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "inactiveItemColor"

    invoke-static {v6, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "minimumItemSize"

    invoke-static {v7, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "shape"

    invoke-static {v8, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "spaceBetweenCenters"

    invoke-static {v9, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "visibility"

    invoke-static {v10, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "width"

    invoke-static {v11, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v12, p1

    iput-object v12, v0, Lcom/yandex/div2/DivIndicator;->a:Lcom/yandex/div2/DivAccessibility;

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object v2, v0, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->e:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object v3, v0, Lcom/yandex/div2/DivIndicator;->g:Lcom/yandex/div/json/expressions/Expression;

    iput-object v4, v0, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->i:Ljava/util/List;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->j:Ljava/util/List;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->k:Lcom/yandex/div2/DivBorder;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->l:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->m:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->n:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->o:Lcom/yandex/div2/DivFocus;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->p:Ljava/util/List;

    iput-object v5, v0, Lcom/yandex/div2/DivIndicator;->q:Lcom/yandex/div2/DivSize;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->r:Ljava/lang/String;

    iput-object v6, v0, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->w:Lcom/yandex/div2/DivLayoutProvider;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->x:Lcom/yandex/div2/DivEdgeInsets;

    iput-object v7, v0, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->z:Lcom/yandex/div2/DivEdgeInsets;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->B:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->C:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->D:Ljava/util/List;

    iput-object v8, v0, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    iput-object v9, v0, Lcom/yandex/div2/DivIndicator;->F:Lcom/yandex/div2/DivFixedSize;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->G:Ljava/util/List;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->H:Lcom/yandex/div2/DivTransform;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->I:Lcom/yandex/div2/DivChangeTransition;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->J:Lcom/yandex/div2/DivAppearanceTransition;

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->K:Lcom/yandex/div2/DivAppearanceTransition;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->L:Ljava/util/List;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->M:Ljava/util/List;

    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->N:Ljava/util/List;

    iput-object v10, v0, Lcom/yandex/div2/DivIndicator;->O:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->P:Lcom/yandex/div2/DivVisibilityAction;

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/yandex/div2/DivIndicator;->Q:Ljava/util/List;

    iput-object v11, v0, Lcom/yandex/div2/DivIndicator;->R:Lcom/yandex/div2/DivSize;

    return-void
.end method

.method public static synthetic D(Lcom/yandex/div2/DivIndicator;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivIndicatorItemPlacement;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivIndicator;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p45

    move/from16 v2, p46

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->A()Ljava/util/List;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->getBackground()Ljava/util/List;

    move-result-object v12

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v13

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->k()Ljava/util/List;

    move-result-object v15

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->getExtensions()Ljava/util/List;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v15

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->y()Ljava/util/List;

    move-result-object v16

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v1, v17

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v17

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v1, v18

    if-eqz v18, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->getId()Ljava/lang/String;

    move-result-object v18

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v1, v19

    move-object/from16 p15, v15

    if-eqz v19, :cond_12

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v19, 0x80000

    and-int v19, v1, v19

    move-object/from16 p19, v15

    if-eqz v19, :cond_13

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v19, 0x100000

    and-int v19, v1, v19

    move-object/from16 p20, v15

    if-eqz v19, :cond_14

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v19, 0x200000

    and-int v19, v1, v19

    move-object/from16 p21, v15

    if-eqz v19, :cond_15

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v19, 0x400000

    and-int v19, v1, v19

    if-eqz v19, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v19

    goto :goto_16

    :cond_16
    move-object/from16 v19, p23

    :goto_16
    const/high16 v20, 0x800000

    and-int v20, v1, v20

    if-eqz v20, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v20

    goto :goto_17

    :cond_17
    move-object/from16 v20, p24

    :goto_17
    const/high16 v21, 0x1000000

    and-int v21, v1, v21

    move-object/from16 p22, v15

    if-eqz v21, :cond_18

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v21, 0x2000000

    and-int v21, v1, v21

    if-eqz v21, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v21

    goto :goto_19

    :cond_19
    move-object/from16 v21, p26

    :goto_19
    const/high16 v22, 0x4000000

    and-int v22, v1, v22

    move-object/from16 p25, v15

    if-eqz v22, :cond_1a

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v22, 0x8000000

    and-int v22, v1, v22

    if-eqz v22, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v22

    goto :goto_1b

    :cond_1b
    move-object/from16 v22, p28

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, v1, v23

    if-eqz v23, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v23

    goto :goto_1c

    :cond_1c
    move-object/from16 v23, p29

    :goto_1c
    const/high16 v24, 0x20000000

    and-int v24, v1, v24

    if-eqz v24, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->u()Ljava/util/List;

    move-result-object v24

    goto :goto_1d

    :cond_1d
    move-object/from16 v24, p30

    :goto_1d
    const/high16 v25, 0x40000000    # 2.0f

    and-int v25, v1, v25

    move-object/from16 p27, v15

    if-eqz v25, :cond_1e

    iget-object v15, v0, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v25, -0x80000000

    and-int v1, v1, v25

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/yandex/div2/DivIndicator;->F:Lcom/yandex/div2/DivFixedSize;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v25, v2, 0x1

    if-eqz v25, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->h()Ljava/util/List;

    move-result-object v25

    goto :goto_20

    :cond_20
    move-object/from16 v25, p33

    :goto_20
    and-int/lit8 v26, v2, 0x2

    if-eqz v26, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v26

    goto :goto_21

    :cond_21
    move-object/from16 v26, p34

    :goto_21
    and-int/lit8 v27, v2, 0x4

    if-eqz v27, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v27

    goto :goto_22

    :cond_22
    move-object/from16 v27, p35

    :goto_22
    and-int/lit8 v28, v2, 0x8

    if-eqz v28, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v28

    goto :goto_23

    :cond_23
    move-object/from16 v28, p36

    :goto_23
    and-int/lit8 v29, v2, 0x10

    if-eqz v29, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v29

    goto :goto_24

    :cond_24
    move-object/from16 v29, p37

    :goto_24
    and-int/lit8 v30, v2, 0x20

    if-eqz v30, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->n()Ljava/util/List;

    move-result-object v30

    goto :goto_25

    :cond_25
    move-object/from16 v30, p38

    :goto_25
    and-int/lit8 v31, v2, 0x40

    if-eqz v31, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->w()Ljava/util/List;

    move-result-object v31

    goto :goto_26

    :cond_26
    move-object/from16 v31, p39

    :goto_26
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p40

    :goto_27
    move-object/from16 p40, v0

    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    goto :goto_28

    :cond_28
    move-object/from16 v0, p41

    :goto_28
    move-object/from16 p41, v0

    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p42

    :goto_29
    move-object/from16 p42, v0

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p43

    :goto_2a
    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivIndicator;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v2

    goto :goto_2b

    :cond_2b
    move-object/from16 v2, p44

    :goto_2b
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p23, v19

    move-object/from16 p24, v20

    move-object/from16 p26, v21

    move-object/from16 p28, v22

    move-object/from16 p29, v23

    move-object/from16 p30, v24

    move-object/from16 p31, v15

    move-object/from16 p32, v1

    move-object/from16 p33, v25

    move-object/from16 p34, v26

    move-object/from16 p35, v27

    move-object/from16 p36, v28

    move-object/from16 p37, v29

    move-object/from16 p38, v30

    move-object/from16 p39, v31

    move-object/from16 p43, v0

    move-object/from16 p44, v2

    invoke-virtual/range {p0 .. p44}, Lcom/yandex/div2/DivIndicator;->C(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivIndicatorItemPlacement;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivIndicator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->i:Ljava/util/List;

    return-object p0
.end method

.method public B()Lcom/yandex/div2/DivBorder;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->k:Lcom/yandex/div2/DivBorder;

    return-object p0
.end method

.method public final C(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivIndicatorItemPlacement;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivIndicator;
    .locals 46

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

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    move-object/from16 v44, p44

    const-string v0, "activeItemColor"

    move-object/from16 p0, v1

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeItemSize"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alpha"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveItemColor"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimumItemSize"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spaceBetweenCenters"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v1, p41

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    move-object/from16 v1, p44

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v45, Lcom/yandex/div2/DivIndicator;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v44}, Lcom/yandex/div2/DivIndicator;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivIndicatorItemPlacement;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v45
.end method

.method public final E(Lcom/yandex/div2/DivIndicator;Loj3;Loj3;)Z
    .locals 8

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAccessibility;->a(Lcom/yandex/div2/DivAccessibility;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-object v1, p1, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v1, v3, v5

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivRoundedRectangleShape;->a(Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_4

    :cond_7
    move-object v4, v3

    :goto_4
    if-ne v1, v4, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_5

    :cond_8
    move-object v1, v3

    :goto_5
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_6

    :cond_9
    move-object v4, v3

    :goto_6
    if-ne v1, v4, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_7

    :cond_a
    move v1, v0

    :goto_7
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->A()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    return v0

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_c

    goto :goto_9

    :cond_c
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_d

    invoke-static {}, Ly71;->u()V

    :cond_d
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAnimator;

    check-cast v6, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAnimator;->a(Lcom/yandex/div2/DivAnimator;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    move v5, v7

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->A()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    move v1, v2

    goto :goto_a

    :cond_11
    :goto_9
    move v1, v0

    :goto_a
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getBackground()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getBackground()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_12

    return v0

    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_13

    goto :goto_c

    :cond_13
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_14

    invoke-static {}, Ly71;->u()V

    :cond_14
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivBackground;

    check-cast v6, Lcom/yandex/div2/DivBackground;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivBackground;->a(Lcom/yandex/div2/DivBackground;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_c

    :cond_15
    move v5, v7

    goto :goto_b

    :cond_16
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getBackground()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_17
    move v1, v2

    goto :goto_d

    :cond_18
    :goto_c
    move v1, v0

    :goto_d
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivBorder;->a(Lcom/yandex/div2/DivBorder;Loj3;Loj3;)Z

    move-result v1

    goto :goto_e

    :cond_19
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    goto :goto_e

    :cond_1a
    move v1, v0

    :goto_e
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_f

    :cond_1b
    move-object v1, v3

    :goto_f
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_10

    :cond_1c
    move-object v4, v3

    :goto_10
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->k()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1d

    return v0

    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1e

    goto :goto_12

    :cond_1e
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_1f

    invoke-static {}, Ly71;->u()V

    :cond_1f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivDisappearAction;

    check-cast v6, Lcom/yandex/div2/DivDisappearAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivDisappearAction;->g(Lcom/yandex/div2/DivDisappearAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_12

    :cond_20
    move v5, v7

    goto :goto_11

    :cond_21
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->k()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_23

    :cond_22
    move v1, v2

    goto :goto_13

    :cond_23
    :goto_12
    move v1, v0

    :goto_13
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getExtensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_24

    return v0

    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_25

    goto :goto_15

    :cond_25
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_26

    invoke-static {}, Ly71;->u()V

    :cond_26
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivExtension;

    check-cast v6, Lcom/yandex/div2/DivExtension;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivExtension;->a(Lcom/yandex/div2/DivExtension;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_15

    :cond_27
    move v5, v7

    goto :goto_14

    :cond_28
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2a

    :cond_29
    move v1, v2

    goto :goto_16

    :cond_2a
    :goto_15
    move v1, v0

    :goto_16
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivFocus;->a(Lcom/yandex/div2/DivFocus;Loj3;Loj3;)Z

    move-result v1

    goto :goto_17

    :cond_2b
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-nez v1, :cond_2c

    move v1, v2

    goto :goto_17

    :cond_2c
    move v1, v0

    :goto_17
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->y()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->y()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2d

    return v0

    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2e

    goto :goto_19

    :cond_2e
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_2f

    invoke-static {}, Ly71;->u()V

    :cond_2f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivFunction;

    check-cast v6, Lcom/yandex/div2/DivFunction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivFunction;->a(Lcom/yandex/div2/DivFunction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_19

    :cond_30
    move v5, v7

    goto :goto_18

    :cond_31
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->y()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_33

    :cond_32
    move v1, v2

    goto :goto_1a

    :cond_33
    :goto_19
    move v1, v0

    :goto_1a
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivSize;->a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v4, p1, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-eqz v1, :cond_34

    iget-object v4, p1, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivRoundedRectangleShape;->a(Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1b

    :cond_34
    iget-object v1, p1, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-nez v1, :cond_35

    move v1, v2

    goto :goto_1b

    :cond_35
    move v1, v0

    :goto_1b
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-eqz v1, :cond_36

    iget-object v4, p1, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivRoundedRectangleShape;->a(Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1c

    :cond_36
    iget-object v1, p1, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-nez v1, :cond_37

    move v1, v2

    goto :goto_1c

    :cond_37
    move v1, v0

    :goto_1c
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    if-eqz v1, :cond_38

    iget-object v4, p1, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivIndicatorItemPlacement;->a(Lcom/yandex/div2/DivIndicatorItemPlacement;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1d

    :cond_38
    iget-object v1, p1, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    if-nez v1, :cond_39

    move v1, v2

    goto :goto_1d

    :cond_39
    move v1, v0

    :goto_1d
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivLayoutProvider;->a(Lcom/yandex/div2/DivLayoutProvider;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1e

    :cond_3a
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    goto :goto_1e

    :cond_3b
    move v1, v0

    :goto_1e
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1f

    :cond_3c
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-nez v1, :cond_3d

    move v1, v2

    goto :goto_1f

    :cond_3d
    move v1, v0

    :goto_1f
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v1, p1, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-nez v1, :cond_3e

    move v1, v2

    goto :goto_20

    :cond_3e
    move v1, v0

    :goto_20
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result v1

    goto :goto_21

    :cond_3f
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-nez v1, :cond_40

    move v1, v2

    goto :goto_21

    :cond_40
    move v1, v0

    :goto_21
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    iget-object v4, p1, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_22

    :cond_41
    move-object v1, v3

    :goto_22
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_42

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_23

    :cond_42
    move-object v4, v3

    :goto_23
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_24

    :cond_43
    move-object v1, v3

    :goto_24
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_44

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_44
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->u()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_45

    return v0

    :cond_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_46

    goto :goto_26

    :cond_46
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_47

    invoke-static {}, Ly71;->u()V

    :cond_47
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    check-cast v5, Lcom/yandex/div2/DivAction;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_26

    :cond_48
    move v4, v6

    goto :goto_25

    :cond_49
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->u()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4b

    :cond_4a
    move v1, v2

    goto :goto_27

    :cond_4b
    :goto_26
    move v1, v0

    :goto_27
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    iget-object v3, p1, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivShape;->a(Lcom/yandex/div2/DivShape;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->F:Lcom/yandex/div2/DivFixedSize;

    iget-object v3, p1, Lcom/yandex/div2/DivIndicator;->F:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4c

    return v0

    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4d

    goto :goto_29

    :cond_4d
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_4e

    invoke-static {}, Ly71;->u()V

    :cond_4e
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTooltip;

    check-cast v5, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivTooltip;->a(Lcom/yandex/div2/DivTooltip;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_29

    :cond_4f
    move v4, v6

    goto :goto_28

    :cond_50
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->h()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_52

    :cond_51
    move v1, v2

    goto :goto_2a

    :cond_52
    :goto_29
    move v1, v0

    :goto_2a
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivTransform;->a(Lcom/yandex/div2/DivTransform;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2b

    :cond_53
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-nez v1, :cond_54

    move v1, v2

    goto :goto_2b

    :cond_54
    move v1, v0

    :goto_2b
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivChangeTransition;->a(Lcom/yandex/div2/DivChangeTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2c

    :cond_55
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-nez v1, :cond_56

    move v1, v2

    goto :goto_2c

    :cond_56
    move v1, v0

    :goto_2c
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAppearanceTransition;->a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2d

    :cond_57
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-nez v1, :cond_58

    move v1, v2

    goto :goto_2d

    :cond_58
    move v1, v0

    :goto_2d
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAppearanceTransition;->a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2e

    :cond_59
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-nez v1, :cond_5a

    move v1, v2

    goto :goto_2e

    :cond_5a
    move v1, v0

    :goto_2e
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->n()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5b

    return v0

    :cond_5b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_5c

    goto :goto_31

    :cond_5c
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_5d

    invoke-static {}, Ly71;->u()V

    :cond_5d
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTransitionTrigger;

    check-cast v5, Lcom/yandex/div2/DivTransitionTrigger;

    if-ne v5, v4, :cond_5e

    move v4, v2

    goto :goto_30

    :cond_5e
    move v4, v0

    :goto_30
    if-nez v4, :cond_5f

    goto :goto_31

    :cond_5f
    move v4, v6

    goto :goto_2f

    :cond_60
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->n()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_62

    :cond_61
    move v1, v2

    goto :goto_32

    :cond_62
    :goto_31
    move v1, v0

    :goto_32
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->w()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_63

    return v0

    :cond_63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_64

    goto :goto_34

    :cond_64
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_65

    invoke-static {}, Ly71;->u()V

    :cond_65
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTrigger;

    check-cast v5, Lcom/yandex/div2/DivTrigger;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivTrigger;->a(Lcom/yandex/div2/DivTrigger;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_34

    :cond_66
    move v4, v6

    goto :goto_33

    :cond_67
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->w()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_69

    :cond_68
    move v1, v2

    goto :goto_35

    :cond_69
    :goto_34
    move v1, v0

    :goto_35
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->c()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6a

    return v0

    :cond_6a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6b

    goto :goto_37

    :cond_6b
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_6c

    invoke-static {}, Ly71;->u()V

    :cond_6c
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVariable;

    check-cast v5, Lcom/yandex/div2/DivVariable;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivVariable;->a(Lcom/yandex/div2/DivVariable;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_6d

    goto :goto_37

    :cond_6d
    move v4, v6

    goto :goto_36

    :cond_6e
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_70

    :cond_6f
    move v1, v2

    goto :goto_38

    :cond_70
    :goto_37
    move v1, v0

    :goto_38
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivVisibilityAction;->g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z

    move-result v1

    goto :goto_39

    :cond_71
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-nez v1, :cond_72

    move v1, v2

    goto :goto_39

    :cond_72
    move v1, v0

    :goto_39
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_73

    return v0

    :cond_73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_74

    goto :goto_3b

    :cond_74
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_75

    invoke-static {}, Ly71;->u()V

    :cond_75
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVisibilityAction;

    check-cast v5, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivVisibilityAction;->g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_76

    goto :goto_3b

    :cond_76
    move v4, v6

    goto :goto_3a

    :cond_77
    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_79

    :cond_78
    move v1, v2

    goto :goto_3c

    :cond_79
    :goto_3b
    move v1, v0

    :goto_3c
    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivIndicator;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSize;->a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_7a

    move v0, v2

    :cond_7a
    return v0
.end method

.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->Q:Ljava/util/List;

    return-object p0
.end method

.method public b()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->l:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->N:Ljava/util/List;

    return-object p0
.end method

.method public d()Lcom/yandex/div2/DivEdgeInsets;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->x:Lcom/yandex/div2/DivEdgeInsets;

    return-object p0
.end method

.method public e()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->C:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public f()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->B:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public g()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->e:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getBackground()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->j:Ljava/util/List;

    return-object p0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->n:Ljava/util/List;

    return-object p0
.end method

.method public getHeight()Lcom/yandex/div2/DivSize;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->q:Lcom/yandex/div2/DivSize;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->r:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibility()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->O:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getWidth()Lcom/yandex/div2/DivSize;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->R:Lcom/yandex/div2/DivSize;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->G:Ljava/util/List;

    return-object p0
.end method

.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivIndicator;->S:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivIndicator;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->r()Lcom/yandex/div2/DivAccessibility;

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

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivRoundedRectangleShape;->hash()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAnimator;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    :cond_5
    move v3, v2

    :cond_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getBackground()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivBackground;

    invoke-virtual {v4}, Lcom/yandex/div2/DivBackground;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5

    :cond_7
    move v3, v2

    :cond_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/yandex/div2/DivBorder;->hash()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->k()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getExtensions()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/yandex/div2/DivFocus;->hash()I

    move-result v1

    goto :goto_a

    :cond_f
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->y()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_12
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/yandex/div2/DivRoundedRectangleShape;->hash()I

    move-result v1

    goto :goto_d

    :cond_13
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/yandex/div2/DivRoundedRectangleShape;->hash()I

    move-result v1

    goto :goto_e

    :cond_14
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/yandex/div2/DivIndicatorItemPlacement;->hash()I

    move-result v1

    goto :goto_f

    :cond_15
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/yandex/div2/DivLayoutProvider;->hash()I

    move-result v1

    goto :goto_10

    :cond_16
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_11

    :cond_17
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_12

    :cond_18
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_19
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_1a
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_1b
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1c

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_16

    :cond_1c
    move v3, v2

    :cond_1d
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    invoke-virtual {v1}, Lcom/yandex/div2/DivShape;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivIndicator;->F:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v4}, Lcom/yandex/div2/DivTooltip;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_17

    :cond_1e
    move v3, v2

    :cond_1f
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/yandex/div2/DivTransform;->hash()I

    move-result v1

    goto :goto_18

    :cond_20
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/yandex/div2/DivChangeTransition;->hash()I

    move-result v1

    goto :goto_19

    :cond_21
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition;->hash()I

    move-result v1

    goto :goto_1a

    :cond_22
    move v1, v2

    :goto_1a
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition;->hash()I

    move-result v1

    goto :goto_1b

    :cond_23
    move v1, v2

    :goto_1b
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_24
    move v1, v2

    :goto_1c
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_25

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTrigger;

    invoke-virtual {v4}, Lcom/yandex/div2/DivTrigger;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1d

    :cond_25
    move v3, v2

    :cond_26
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVariable;

    invoke-virtual {v4}, Lcom/yandex/div2/DivVariable;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1e

    :cond_27
    move v3, v2

    :cond_28
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/yandex/div2/DivVisibilityAction;->hash()I

    move-result v1

    goto :goto_1f

    :cond_29
    move v1, v2

    :goto_1f
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v3}, Lcom/yandex/div2/DivVisibilityAction;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_20

    :cond_2a
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/yandex/div2/DivIndicator;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivIndicator;->S:Ljava/lang/Integer;

    return v0
.end method

.method public i()Lcom/yandex/div2/DivAppearanceTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->K:Lcom/yandex/div2/DivAppearanceTransition;

    return-object p0
.end method

.method public j()Lcom/yandex/div2/DivChangeTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->I:Lcom/yandex/div2/DivChangeTransition;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->m:Ljava/util/List;

    return-object p0
.end method

.method public m()Lcom/yandex/div2/DivTransform;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->H:Lcom/yandex/div2/DivTransform;

    return-object p0
.end method

.method public n()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->L:Ljava/util/List;

    return-object p0
.end method

.method public o()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->f:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public p()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->g:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public q()Lcom/yandex/div2/DivFocus;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->o:Lcom/yandex/div2/DivFocus;

    return-object p0
.end method

.method public r()Lcom/yandex/div2/DivAccessibility;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->a:Lcom/yandex/div2/DivAccessibility;

    return-object p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->a4()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivIndicatorJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivIndicatorJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivIndicator;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public t()Lcom/yandex/div2/DivEdgeInsets;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->z:Lcom/yandex/div2/DivEdgeInsets;

    return-object p0
.end method

.method public u()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->D:Ljava/util/List;

    return-object p0
.end method

.method public v()Lcom/yandex/div2/DivLayoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->w:Lcom/yandex/div2/DivLayoutProvider;

    return-object p0
.end method

.method public w()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->M:Ljava/util/List;

    return-object p0
.end method

.method public x()Lcom/yandex/div2/DivVisibilityAction;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->P:Lcom/yandex/div2/DivVisibilityAction;

    return-object p0
.end method

.method public y()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->p:Ljava/util/List;

    return-object p0
.end method

.method public z()Lcom/yandex/div2/DivAppearanceTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->J:Lcom/yandex/div2/DivAppearanceTransition;

    return-object p0
.end method
