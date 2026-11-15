.class public final Lcom/yandex/div2/DivImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;
.implements Log2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivImage$a;
    }
.end annotation


# static fields
.field public static final e0:Lcom/yandex/div2/DivImage$a;

.field public static final f0:Lcom/yandex/div2/DivAnimation;

.field public static final g0:Lcom/yandex/div/json/expressions/Expression;

.field public static final h0:Lcom/yandex/div/json/expressions/Expression;

.field public static final i0:Lcom/yandex/div/json/expressions/Expression;

.field public static final j0:Lcom/yandex/div/json/expressions/Expression;

.field public static final k0:Lcom/yandex/div2/DivSize$d;

.field public static final l0:Lcom/yandex/div/json/expressions/Expression;

.field public static final m0:Lcom/yandex/div/json/expressions/Expression;

.field public static final n0:Lcom/yandex/div/json/expressions/Expression;

.field public static final o0:Lcom/yandex/div/json/expressions/Expression;

.field public static final p0:Lcom/yandex/div/json/expressions/Expression;

.field public static final q0:Lcom/yandex/div/json/expressions/Expression;

.field public static final r0:Lcom/yandex/div2/DivSize$c;

.field public static final s0:Ls74;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Lcom/yandex/div/json/expressions/Expression;

.field public final C:Lcom/yandex/div2/DivLayoutProvider;

.field public final D:Ljava/util/List;

.field public final E:Lcom/yandex/div2/DivEdgeInsets;

.field public final F:Lcom/yandex/div2/DivEdgeInsets;

.field public final G:Lcom/yandex/div/json/expressions/Expression;

.field public final H:Lcom/yandex/div/json/expressions/Expression;

.field public final I:Ljava/util/List;

.field public final J:Ljava/util/List;

.field public final K:Lcom/yandex/div/json/expressions/Expression;

.field public final L:Lcom/yandex/div/json/expressions/Expression;

.field public final M:Lcom/yandex/div/json/expressions/Expression;

.field public final N:Lcom/yandex/div/json/expressions/Expression;

.field public final O:Ljava/util/List;

.field public final P:Lcom/yandex/div/json/expressions/Expression;

.field public final Q:Lcom/yandex/div/json/expressions/Expression;

.field public final R:Ljava/util/List;

.field public final S:Lcom/yandex/div2/DivTransform;

.field public final T:Lcom/yandex/div2/DivChangeTransition;

.field public final U:Lcom/yandex/div2/DivAppearanceTransition;

.field public final V:Lcom/yandex/div2/DivAppearanceTransition;

.field public final W:Ljava/util/List;

.field public final X:Ljava/util/List;

.field public final Y:Ljava/util/List;

.field public final Z:Lcom/yandex/div/json/expressions/Expression;

.field public final a:Lcom/yandex/div2/DivAccessibility;

.field public final a0:Lcom/yandex/div2/DivVisibilityAction;

.field public final b:Lcom/yandex/div2/DivAction;

.field public final b0:Ljava/util/List;

.field public final c:Lcom/yandex/div2/DivAnimation;

.field public final c0:Lcom/yandex/div2/DivSize;

.field public final d:Ljava/util/List;

.field public d0:Ljava/lang/Integer;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Ljava/util/List;

.field public final i:Lcom/yandex/div2/DivFadeTransition;

.field public final j:Lcom/yandex/div2/DivAspect;

.field public final k:Ljava/util/List;

.field public final l:Lcom/yandex/div2/DivBorder;

.field public final m:Lcom/yandex/div/json/expressions/Expression;

.field public final n:Lcom/yandex/div/json/expressions/Expression;

.field public final o:Lcom/yandex/div/json/expressions/Expression;

.field public final p:Lcom/yandex/div/json/expressions/Expression;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Lcom/yandex/div2/DivFocus;

.field public final v:Ljava/util/List;

.field public final w:Lcom/yandex/div2/DivSize;

.field public final x:Lcom/yandex/div/json/expressions/Expression;

.field public final y:Ljava/util/List;

.field public final z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/yandex/div2/DivImage$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivImage$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivImage;->e0:Lcom/yandex/div2/DivImage$a;

    new-instance v0, Lcom/yandex/div2/DivAnimation;

    sget-object v13, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const-wide v4, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    sget-object v2, Lcom/yandex/div2/DivAnimation$Name;->FADE:Lcom/yandex/div2/DivAnimation$Name;

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v10

    const/16 v11, 0x6c

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/yandex/div2/DivAnimation;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivImage;->f0:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v13, v14}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->g0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->h0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivAlignmentHorizontal;->CENTER:Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->i0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivAlignmentVertical;->CENTER:Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->j0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$d;

    new-instance v8, Lcom/yandex/div2/DivWrapContentSize;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v8}, Lcom/yandex/div2/DivSize$d;-><init>(Lcom/yandex/div2/DivWrapContentSize;)V

    sput-object v0, Lcom/yandex/div2/DivImage;->k0:Lcom/yandex/div2/DivSize$d;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivImage;->l0:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v2, 0x14000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivImage;->m0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->n0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivImageScale;->FILL:Lcom/yandex/div2/DivImageScale;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->o0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivBlendMode;->SOURCE_IN:Lcom/yandex/div2/DivBlendMode;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->p0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImage;->q0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivImage;->r0:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lcom/yandex/div2/DivImage$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivImage$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivImage;->s0:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFadeTransition;Lcom/yandex/div2/DivAspect;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p13

    move-object/from16 v4, p15

    move-object/from16 v5, p16

    move-object/from16 v6, p23

    move-object/from16 v7, p24

    move-object/from16 v8, p28

    move-object/from16 v9, p33

    move-object/from16 v10, p34

    move-object/from16 v11, p40

    move-object/from16 v12, p43

    move-object/from16 v13, p52

    move-object/from16 v14, p55

    const-string v15, "actionAnimation"

    invoke-static {v1, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "alpha"

    invoke-static {v2, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "captureFocusOnAction"

    invoke-static {v3, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "contentAlignmentHorizontal"

    invoke-static {v4, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "contentAlignmentVertical"

    invoke-static {v5, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "height"

    invoke-static {v6, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "highPriorityPreviewShow"

    invoke-static {v7, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "imageUrl"

    invoke-static {v8, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "placeholderColor"

    invoke-static {v9, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "preloadRequired"

    invoke-static {v10, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "scale"

    invoke-static {v11, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "tintMode"

    invoke-static {v12, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "visibility"

    invoke-static {v13, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "width"

    invoke-static {v14, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v15, p1

    iput-object v15, v0, Lcom/yandex/div2/DivImage;->a:Lcom/yandex/div2/DivAccessibility;

    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->c:Lcom/yandex/div2/DivAnimation;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->e:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object v2, v0, Lcom/yandex/div2/DivImage;->g:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->h:Ljava/util/List;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->k:Ljava/util/List;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->l:Lcom/yandex/div2/DivBorder;

    iput-object v3, v0, Lcom/yandex/div2/DivImage;->m:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->n:Lcom/yandex/div/json/expressions/Expression;

    iput-object v4, v0, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    iput-object v5, v0, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->q:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->s:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->u:Lcom/yandex/div2/DivFocus;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->v:Ljava/util/List;

    iput-object v6, v0, Lcom/yandex/div2/DivImage;->w:Lcom/yandex/div2/DivSize;

    iput-object v7, v0, Lcom/yandex/div2/DivImage;->x:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->A:Ljava/lang/String;

    iput-object v8, v0, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->C:Lcom/yandex/div2/DivLayoutProvider;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->E:Lcom/yandex/div2/DivEdgeInsets;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->F:Lcom/yandex/div2/DivEdgeInsets;

    iput-object v9, v0, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    iput-object v10, v0, Lcom/yandex/div2/DivImage;->H:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->L:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->M:Lcom/yandex/div/json/expressions/Expression;

    iput-object v11, v0, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->O:Ljava/util/List;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    iput-object v12, v0, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->R:Ljava/util/List;

    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->S:Lcom/yandex/div2/DivTransform;

    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->T:Lcom/yandex/div2/DivChangeTransition;

    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->U:Lcom/yandex/div2/DivAppearanceTransition;

    move-object/from16 v1, p48

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->V:Lcom/yandex/div2/DivAppearanceTransition;

    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->W:Ljava/util/List;

    move-object/from16 v1, p50

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->X:Ljava/util/List;

    move-object/from16 v1, p51

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->Y:Ljava/util/List;

    iput-object v13, v0, Lcom/yandex/div2/DivImage;->Z:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p53

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->a0:Lcom/yandex/div2/DivVisibilityAction;

    move-object/from16 v1, p54

    iput-object v1, v0, Lcom/yandex/div2/DivImage;->b0:Ljava/util/List;

    iput-object v14, v0, Lcom/yandex/div2/DivImage;->c0:Lcom/yandex/div2/DivSize;

    return-void
.end method

.method public static synthetic D(Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFadeTransition;Lcom/yandex/div2/DivAspect;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivImage;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p56

    move/from16 v2, p57

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/yandex/div2/DivImage;->c:Lcom/yandex/div2/DivAnimation;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->A()Ljava/util/List;

    move-result-object v10

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->getBackground()Ljava/util/List;

    move-result-object v13

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v14

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->m:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    move-object/from16 p15, v15

    if-eqz v17, :cond_f

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, v1, v17

    if-eqz v18, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->k()Ljava/util/List;

    move-result-object v18

    goto :goto_10

    :cond_10
    move-object/from16 v18, p17

    :goto_10
    const/high16 v19, 0x20000

    and-int v20, v1, v19

    move-object/from16 p16, v15

    if-eqz v20, :cond_11

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v21, v1, v20

    if-eqz v21, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->getExtensions()Ljava/util/List;

    move-result-object v21

    goto :goto_12

    :cond_12
    move-object/from16 v21, p19

    :goto_12
    const/high16 v22, 0x80000

    and-int v23, v1, v22

    move-object/from16 p18, v15

    if-eqz v23, :cond_13

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v23, 0x100000

    and-int v24, v1, v23

    if-eqz v24, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v24

    goto :goto_14

    :cond_14
    move-object/from16 v24, p21

    :goto_14
    const/high16 v25, 0x200000

    and-int v26, v1, v25

    if-eqz v26, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->y()Ljava/util/List;

    move-result-object v26

    goto :goto_15

    :cond_15
    move-object/from16 v26, p22

    :goto_15
    const/high16 v27, 0x400000

    and-int v27, v1, v27

    if-eqz v27, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v27

    goto :goto_16

    :cond_16
    move-object/from16 v27, p23

    :goto_16
    const/high16 v28, 0x800000

    and-int v28, v1, v28

    move-object/from16 p20, v15

    if-eqz v28, :cond_17

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->x:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v28, 0x1000000

    and-int v28, v1, v28

    move-object/from16 p24, v15

    if-eqz v28, :cond_18

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v28, 0x2000000

    and-int v28, v1, v28

    move-object/from16 p25, v15

    if-eqz v28, :cond_19

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v1, v28

    if-eqz v28, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->getId()Ljava/lang/String;

    move-result-object v28

    goto :goto_1a

    :cond_1a
    move-object/from16 v28, p27

    :goto_1a
    const/high16 v29, 0x8000000

    and-int v29, v1, v29

    move-object/from16 p26, v15

    if-eqz v29, :cond_1b

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v1, v29

    if-eqz v29, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v29

    goto :goto_1c

    :cond_1c
    move-object/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v1, v30

    move-object/from16 p28, v15

    if-eqz v30, :cond_1d

    iget-object v15, v0, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v30, 0x40000000    # 2.0f

    and-int v30, v1, v30

    if-eqz v30, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v30

    goto :goto_1e

    :cond_1e
    move-object/from16 v30, p31

    :goto_1e
    const/high16 v31, -0x80000000

    and-int v1, v1, v31

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v31, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v31, :cond_20

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v31, v2, 0x2

    move-object/from16 p33, v1

    if-eqz v31, :cond_21

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->H:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v31, v2, 0x4

    move-object/from16 p34, v1

    if-eqz v31, :cond_22

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v31, v2, 0x8

    move-object/from16 p35, v1

    if-eqz v31, :cond_23

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v31, v2, 0x10

    move-object/from16 p36, v1

    if-eqz v31, :cond_24

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v31, v2, 0x20

    if-eqz v31, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    goto :goto_25

    :cond_25
    move-object/from16 v31, p38

    :goto_25
    and-int/lit8 v32, v2, 0x40

    if-eqz v32, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v32

    goto :goto_26

    :cond_26
    move-object/from16 v32, p39

    :goto_26
    move-object/from16 p37, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p40, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->u()Ljava/util/List;

    move-result-object v1

    goto :goto_28

    :cond_28
    move-object/from16 v1, p41

    :goto_28
    move-object/from16 p41, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_29

    :cond_29
    move-object/from16 v1, p42

    :goto_29
    move-object/from16 p42, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2a

    :cond_2a
    move-object/from16 v1, p43

    :goto_2a
    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->h()Ljava/util/List;

    move-result-object v0

    goto :goto_2b

    :cond_2b
    move-object/from16 v0, p44

    :goto_2b
    move-object/from16 p44, v0

    and-int/lit16 v0, v2, 0x1000

    if-eqz v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v0

    goto :goto_2c

    :cond_2c
    move-object/from16 v0, p45

    :goto_2c
    move-object/from16 p45, v0

    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v0

    goto :goto_2d

    :cond_2d
    move-object/from16 v0, p46

    :goto_2d
    move-object/from16 p46, v0

    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v0

    goto :goto_2e

    :cond_2e
    move-object/from16 v0, p47

    :goto_2e
    and-int v16, v2, v16

    if-eqz v16, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v16

    goto :goto_2f

    :cond_2f
    move-object/from16 v16, p48

    :goto_2f
    and-int v17, v2, v17

    if-eqz v17, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->n()Ljava/util/List;

    move-result-object v17

    goto :goto_30

    :cond_30
    move-object/from16 v17, p49

    :goto_30
    and-int v19, v2, v19

    if-eqz v19, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->w()Ljava/util/List;

    move-result-object v19

    goto :goto_31

    :cond_31
    move-object/from16 v19, p50

    :goto_31
    and-int v20, v2, v20

    if-eqz v20, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->c()Ljava/util/List;

    move-result-object v20

    goto :goto_32

    :cond_32
    move-object/from16 v20, p51

    :goto_32
    and-int v22, v2, v22

    if-eqz v22, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v22

    goto :goto_33

    :cond_33
    move-object/from16 v22, p52

    :goto_33
    and-int v23, v2, v23

    if-eqz v23, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v23

    goto :goto_34

    :cond_34
    move-object/from16 v23, p53

    :goto_34
    and-int v25, v2, v25

    if-eqz v25, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->a()Ljava/util/List;

    move-result-object v25

    goto :goto_35

    :cond_35
    move-object/from16 v25, p54

    :goto_35
    const/high16 v33, 0x400000

    and-int v2, v2, v33

    if-eqz v2, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div2/DivImage;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v2

    goto :goto_36

    :cond_36
    move-object/from16 v2, p55

    :goto_36
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

    move-object/from16 p17, v18

    move-object/from16 p19, v21

    move-object/from16 p21, v24

    move-object/from16 p22, v26

    move-object/from16 p23, v27

    move-object/from16 p27, v28

    move-object/from16 p29, v29

    move-object/from16 p30, v15

    move-object/from16 p31, v30

    move-object/from16 p38, v31

    move-object/from16 p39, v32

    move-object/from16 p43, v1

    move-object/from16 p47, v0

    move-object/from16 p48, v16

    move-object/from16 p49, v17

    move-object/from16 p50, v19

    move-object/from16 p51, v20

    move-object/from16 p52, v22

    move-object/from16 p53, v23

    move-object/from16 p54, v25

    move-object/from16 p55, v2

    invoke-virtual/range {p0 .. p55}, Lcom/yandex/div2/DivImage;->C(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFadeTransition;Lcom/yandex/div2/DivAspect;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->h:Ljava/util/List;

    return-object p0
.end method

.method public B()Lcom/yandex/div2/DivBorder;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->l:Lcom/yandex/div2/DivBorder;

    return-object p0
.end method

.method public final C(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFadeTransition;Lcom/yandex/div2/DivAspect;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivImage;
    .locals 57

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

    move-object/from16 v45, p45

    move-object/from16 v46, p46

    move-object/from16 v47, p47

    move-object/from16 v48, p48

    move-object/from16 v49, p49

    move-object/from16 v50, p50

    move-object/from16 v51, p51

    move-object/from16 v52, p52

    move-object/from16 v53, p53

    move-object/from16 v54, p54

    move-object/from16 v55, p55

    const-string v0, "actionAnimation"

    move-object/from16 p0, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alpha"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureFocusOnAction"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAlignmentHorizontal"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAlignmentVertical"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highPriorityPreviewShow"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderColor"

    move-object/from16 v1, p33

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadRequired"

    move-object/from16 v1, p34

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    move-object/from16 v1, p40

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tintMode"

    move-object/from16 v1, p43

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v1, p52

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    move-object/from16 v1, p55

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v56, Lcom/yandex/div2/DivImage;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v55}, Lcom/yandex/div2/DivImage;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFadeTransition;Lcom/yandex/div2/DivAspect;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v56
.end method

.method public final E(Lcom/yandex/div2/DivImage;Loj3;Loj3;)Z
    .locals 8

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAccessibility;->a(Lcom/yandex/div2/DivAccessibility;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->c:Lcom/yandex/div2/DivAnimation;

    iget-object v3, p1, Lcom/yandex/div2/DivImage;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAnimation;->a(Lcom/yandex/div2/DivAnimation;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    if-nez v3, :cond_5

    return v0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_7

    invoke-static {}, Ly71;->u()V

    :cond_7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    check-cast v5, Lcom/yandex/div2/DivAction;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    if-nez v1, :cond_b

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v0

    :goto_4
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_5

    :cond_c
    move-object v1, v3

    :goto_5
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_6

    :cond_d
    move-object v4, v3

    :goto_6
    if-ne v1, v4, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_7

    :cond_e
    move-object v1, v3

    :goto_7
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_8

    :cond_f
    move-object v4, v3

    :goto_8
    if-ne v1, v4, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_9

    :cond_10
    move v1, v0

    :goto_9
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->A()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    return v0

    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_12

    goto :goto_b

    :cond_12
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_13

    invoke-static {}, Ly71;->u()V

    :cond_13
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAnimator;

    check-cast v6, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAnimator;->a(Lcom/yandex/div2/DivAnimator;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_b

    :cond_14
    move v5, v7

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->A()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    :cond_16
    move v1, v2

    goto :goto_c

    :cond_17
    :goto_b
    move v1, v0

    :goto_c
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    if-eqz v1, :cond_18

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivFadeTransition;->a(Lcom/yandex/div2/DivFadeTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_d

    :cond_18
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    if-nez v1, :cond_19

    move v1, v2

    goto :goto_d

    :cond_19
    move v1, v0

    :goto_d
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    if-eqz v1, :cond_1a

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivAspect;->a(Lcom/yandex/div2/DivAspect;Loj3;Loj3;)Z

    move-result v1

    goto :goto_e

    :cond_1a
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    if-nez v1, :cond_1b

    move v1, v2

    goto :goto_e

    :cond_1b
    move v1, v0

    :goto_e
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getBackground()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getBackground()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1c

    return v0

    :cond_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1d

    goto :goto_10

    :cond_1d
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_1e

    invoke-static {}, Ly71;->u()V

    :cond_1e
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivBackground;

    check-cast v6, Lcom/yandex/div2/DivBackground;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivBackground;->a(Lcom/yandex/div2/DivBackground;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_10

    :cond_1f
    move v5, v7

    goto :goto_f

    :cond_20
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getBackground()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_22

    :cond_21
    move v1, v2

    goto :goto_11

    :cond_22
    :goto_10
    move v1, v0

    :goto_11
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivBorder;->a(Lcom/yandex/div2/DivBorder;Loj3;Loj3;)Z

    move-result v1

    goto :goto_12

    :cond_23
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_12

    :cond_24
    move v1, v0

    :goto_12
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->m:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->m:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v1, v4, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_13

    :cond_25
    move-object v1, v3

    :goto_13
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_14

    :cond_26
    move-object v4, v3

    :goto_14
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->k()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_27

    return v0

    :cond_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_28

    goto :goto_16

    :cond_28
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_29

    invoke-static {}, Ly71;->u()V

    :cond_29
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivDisappearAction;

    check-cast v6, Lcom/yandex/div2/DivDisappearAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivDisappearAction;->g(Lcom/yandex/div2/DivDisappearAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_16

    :cond_2a
    move v5, v7

    goto :goto_15

    :cond_2b
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->k()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2d

    :cond_2c
    move v1, v2

    goto :goto_17

    :cond_2d
    :goto_16
    move v1, v0

    :goto_17
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    if-eqz v1, :cond_32

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    if-nez v4, :cond_2e

    return v0

    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2f

    goto :goto_19

    :cond_2f
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_30

    invoke-static {}, Ly71;->u()V

    :cond_30
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_19

    :cond_31
    move v5, v7

    goto :goto_18

    :cond_32
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    if-nez v1, :cond_34

    :cond_33
    move v1, v2

    goto :goto_1a

    :cond_34
    :goto_19
    move v1, v0

    :goto_1a
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getExtensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_35

    return v0

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_36

    goto :goto_1c

    :cond_36
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_37

    invoke-static {}, Ly71;->u()V

    :cond_37
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivExtension;

    check-cast v6, Lcom/yandex/div2/DivExtension;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivExtension;->a(Lcom/yandex/div2/DivExtension;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_1c

    :cond_38
    move v5, v7

    goto :goto_1b

    :cond_39
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3b

    :cond_3a
    move v1, v2

    goto :goto_1d

    :cond_3b
    :goto_1c
    move v1, v0

    :goto_1d
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz v1, :cond_40

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-nez v4, :cond_3c

    return v0

    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_3d

    goto :goto_1f

    :cond_3d
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_3e

    invoke-static {}, Ly71;->u()V

    :cond_3e
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivFilter;

    check-cast v6, Lcom/yandex/div2/DivFilter;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivFilter;->a(Lcom/yandex/div2/DivFilter;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_1f

    :cond_3f
    move v5, v7

    goto :goto_1e

    :cond_40
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-nez v1, :cond_42

    :cond_41
    move v1, v2

    goto :goto_20

    :cond_42
    :goto_1f
    move v1, v0

    :goto_20
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivFocus;->a(Lcom/yandex/div2/DivFocus;Loj3;Loj3;)Z

    move-result v1

    goto :goto_21

    :cond_43
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-nez v1, :cond_44

    move v1, v2

    goto :goto_21

    :cond_44
    move v1, v0

    :goto_21
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->y()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->y()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_45

    return v0

    :cond_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_46

    goto :goto_23

    :cond_46
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_47

    invoke-static {}, Ly71;->u()V

    :cond_47
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivFunction;

    check-cast v6, Lcom/yandex/div2/DivFunction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivFunction;->a(Lcom/yandex/div2/DivFunction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_48

    goto :goto_23

    :cond_48
    move v5, v7

    goto :goto_22

    :cond_49
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->y()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4b

    :cond_4a
    move v1, v2

    goto :goto_24

    :cond_4b
    :goto_23
    move v1, v0

    :goto_24
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivSize;->a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v1, v4, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    if-eqz v1, :cond_50

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    if-nez v4, :cond_4c

    return v0

    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_4d

    goto :goto_26

    :cond_4d
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_4e

    invoke-static {}, Ly71;->u()V

    :cond_4e
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_26

    :cond_4f
    move v5, v7

    goto :goto_25

    :cond_50
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    if-nez v1, :cond_52

    :cond_51
    move v1, v2

    goto :goto_27

    :cond_52
    :goto_26
    move v1, v0

    :goto_27
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    if-eqz v1, :cond_57

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    if-nez v4, :cond_53

    return v0

    :cond_53
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_54

    goto :goto_29

    :cond_54
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_55

    invoke-static {}, Ly71;->u()V

    :cond_55
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_29

    :cond_56
    move v5, v7

    goto :goto_28

    :cond_57
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    if-nez v1, :cond_59

    :cond_58
    move v1, v2

    goto :goto_2a

    :cond_59
    :goto_29
    move v1, v0

    :goto_2a
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivLayoutProvider;->a(Lcom/yandex/div2/DivLayoutProvider;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2b

    :cond_5a
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-nez v1, :cond_5b

    move v1, v2

    goto :goto_2b

    :cond_5b
    move v1, v0

    :goto_2b
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    if-eqz v1, :cond_60

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    if-nez v4, :cond_5c

    return v0

    :cond_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_5d

    goto :goto_2d

    :cond_5d
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_5e

    invoke-static {}, Ly71;->u()V

    :cond_5e
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_2d

    :cond_5f
    move v5, v7

    goto :goto_2c

    :cond_60
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    if-nez v1, :cond_62

    :cond_61
    move v1, v2

    goto :goto_2e

    :cond_62
    :goto_2d
    move v1, v0

    :goto_2e
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2f

    :cond_63
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-nez v1, :cond_64

    move v1, v2

    goto :goto_2f

    :cond_64
    move v1, v0

    :goto_2f
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result v1

    goto :goto_30

    :cond_65
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-nez v1, :cond_66

    move v1, v2

    goto :goto_30

    :cond_66
    move v1, v0

    :goto_30
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v1, v4, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    if-eqz v1, :cond_6b

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    if-nez v4, :cond_67

    return v0

    :cond_67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_68

    goto :goto_32

    :cond_68
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_69

    invoke-static {}, Ly71;->u()V

    :cond_69
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto :goto_32

    :cond_6a
    move v5, v7

    goto :goto_31

    :cond_6b
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    if-nez v1, :cond_6d

    :cond_6c
    move v1, v2

    goto :goto_33

    :cond_6d
    :goto_32
    move v1, v0

    :goto_33
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    if-eqz v1, :cond_72

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    if-nez v4, :cond_6e

    return v0

    :cond_6e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_6f

    goto :goto_35

    :cond_6f
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_70

    invoke-static {}, Ly71;->u()V

    :cond_70
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_71

    goto :goto_35

    :cond_71
    move v5, v7

    goto :goto_34

    :cond_72
    iget-object v1, p1, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    if-nez v1, :cond_74

    :cond_73
    move v1, v2

    goto :goto_36

    :cond_74
    :goto_35
    move v1, v0

    :goto_36
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_75

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_37

    :cond_75
    move-object v1, v3

    :goto_37
    iget-object v4, p1, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_76

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_38

    :cond_76
    move-object v4, v3

    :goto_38
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_39

    :cond_77
    move-object v1, v3

    :goto_39
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_78

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3a

    :cond_78
    move-object v4, v3

    :goto_3a
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_3b

    :cond_79
    move-object v1, v3

    :goto_3b
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_7a

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_3c

    :cond_7a
    move-object v4, v3

    :goto_3c
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->u()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7b

    return v0

    :cond_7b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_7c

    goto :goto_3e

    :cond_7c
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_7d

    invoke-static {}, Ly71;->u()V

    :cond_7d
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction;

    check-cast v6, Lcom/yandex/div2/DivAction;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_7e

    goto :goto_3e

    :cond_7e
    move v5, v7

    goto :goto_3d

    :cond_7f
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->u()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_81

    :cond_80
    move v1, v2

    goto :goto_3f

    :cond_81
    :goto_3e
    move v1, v0

    :goto_3f
    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_82

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_40

    :cond_82
    move-object v1, v3

    :goto_40
    iget-object v4, p1, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_83

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :cond_83
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_84

    return v0

    :cond_84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_85

    goto :goto_42

    :cond_85
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_86

    invoke-static {}, Ly71;->u()V

    :cond_86
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTooltip;

    check-cast v5, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivTooltip;->a(Lcom/yandex/div2/DivTooltip;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_87

    goto :goto_42

    :cond_87
    move v4, v6

    goto :goto_41

    :cond_88
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->h()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8a

    :cond_89
    move v1, v2

    goto :goto_43

    :cond_8a
    :goto_42
    move v1, v0

    :goto_43
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivTransform;->a(Lcom/yandex/div2/DivTransform;Loj3;Loj3;)Z

    move-result v1

    goto :goto_44

    :cond_8b
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-nez v1, :cond_8c

    move v1, v2

    goto :goto_44

    :cond_8c
    move v1, v0

    :goto_44
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivChangeTransition;->a(Lcom/yandex/div2/DivChangeTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_45

    :cond_8d
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-nez v1, :cond_8e

    move v1, v2

    goto :goto_45

    :cond_8e
    move v1, v0

    :goto_45
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAppearanceTransition;->a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_46

    :cond_8f
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-nez v1, :cond_90

    move v1, v2

    goto :goto_46

    :cond_90
    move v1, v0

    :goto_46
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAppearanceTransition;->a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z

    move-result v1

    goto :goto_47

    :cond_91
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-nez v1, :cond_92

    move v1, v2

    goto :goto_47

    :cond_92
    move v1, v0

    :goto_47
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->n()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_93

    return v0

    :cond_93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_94

    goto :goto_4a

    :cond_94
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_95

    invoke-static {}, Ly71;->u()V

    :cond_95
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTransitionTrigger;

    check-cast v5, Lcom/yandex/div2/DivTransitionTrigger;

    if-ne v5, v4, :cond_96

    move v4, v2

    goto :goto_49

    :cond_96
    move v4, v0

    :goto_49
    if-nez v4, :cond_97

    goto :goto_4a

    :cond_97
    move v4, v6

    goto :goto_48

    :cond_98
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->n()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9a

    :cond_99
    move v1, v2

    goto :goto_4b

    :cond_9a
    :goto_4a
    move v1, v0

    :goto_4b
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->w()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_9b

    return v0

    :cond_9b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_9c

    goto :goto_4d

    :cond_9c
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_9d

    invoke-static {}, Ly71;->u()V

    :cond_9d
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTrigger;

    check-cast v5, Lcom/yandex/div2/DivTrigger;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivTrigger;->a(Lcom/yandex/div2/DivTrigger;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_9e

    goto :goto_4d

    :cond_9e
    move v4, v6

    goto :goto_4c

    :cond_9f
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->w()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a1

    :cond_a0
    move v1, v2

    goto :goto_4e

    :cond_a1
    :goto_4d
    move v1, v0

    :goto_4e
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a6

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->c()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_a2

    return v0

    :cond_a2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_a3

    goto :goto_50

    :cond_a3
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_a4

    invoke-static {}, Ly71;->u()V

    :cond_a4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVariable;

    check-cast v5, Lcom/yandex/div2/DivVariable;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivVariable;->a(Lcom/yandex/div2/DivVariable;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_a5

    goto :goto_50

    :cond_a5
    move v4, v6

    goto :goto_4f

    :cond_a6
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a8

    :cond_a7
    move v1, v2

    goto :goto_51

    :cond_a8
    :goto_50
    move v1, v0

    :goto_51
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-eqz v1, :cond_a9

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivVisibilityAction;->g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z

    move-result v1

    goto :goto_52

    :cond_a9
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-nez v1, :cond_aa

    move v1, v2

    goto :goto_52

    :cond_aa
    move v1, v0

    :goto_52
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_af

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_ab

    return v0

    :cond_ab
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_ac

    goto :goto_54

    :cond_ac
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_ad

    invoke-static {}, Ly71;->u()V

    :cond_ad
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVisibilityAction;

    check-cast v5, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v5, v4, p2, p3}, Lcom/yandex/div2/DivVisibilityAction;->g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z

    move-result v4

    if-nez v4, :cond_ae

    goto :goto_54

    :cond_ae
    move v4, v6

    goto :goto_53

    :cond_af
    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b1

    :cond_b0
    move v1, v2

    goto :goto_55

    :cond_b1
    :goto_54
    move v1, v0

    :goto_55
    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivImage;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSize;->a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_b2

    move v0, v2

    :cond_b2
    return v0
.end method

.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->b0:Ljava/util/List;

    return-object p0
.end method

.method public b()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->n:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->Y:Ljava/util/List;

    return-object p0
.end method

.method public d()Lcom/yandex/div2/DivEdgeInsets;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->E:Lcom/yandex/div2/DivEdgeInsets;

    return-object p0
.end method

.method public e()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->M:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public f()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->L:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public g()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->e:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getBackground()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->k:Ljava/util/List;

    return-object p0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->s:Ljava/util/List;

    return-object p0
.end method

.method public getHeight()Lcom/yandex/div2/DivSize;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->w:Lcom/yandex/div2/DivSize;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->A:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibility()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->Z:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getWidth()Lcom/yandex/div2/DivSize;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->c0:Lcom/yandex/div2/DivSize;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->R:Ljava/util/List;

    return-object p0
.end method

.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivImage;->d0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivImage;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->r()Lcom/yandex/div2/DivAccessibility;

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

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v1}, Lcom/yandex/div2/DivAnimation;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    :cond_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->A()Ljava/util/List;

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

    check-cast v4, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAnimator;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5

    :cond_7
    move v3, v2

    :cond_8
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/yandex/div2/DivFadeTransition;->hash()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/yandex/div2/DivAspect;->hash()I

    move-result v1

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getBackground()Ljava/util/List;

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

    check-cast v4, Lcom/yandex/div2/DivBackground;

    invoke-virtual {v4}, Lcom/yandex/div2/DivBackground;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_8

    :cond_b
    move v3, v2

    :cond_c
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/yandex/div2/DivBorder;->hash()I

    move-result v1

    goto :goto_9

    :cond_d
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->m:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_e
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivDisappearAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivDisappearAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_b

    :cond_f
    move v3, v2

    :cond_10
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    if-eqz v1, :cond_11

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_c

    :cond_11
    move v3, v2

    :cond_12
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getExtensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivExtension;

    invoke-virtual {v4}, Lcom/yandex/div2/DivExtension;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_d

    :cond_13
    move v3, v2

    :cond_14
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz v1, :cond_15

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFilter;

    invoke-virtual {v4}, Lcom/yandex/div2/DivFilter;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_e

    :cond_15
    move v3, v2

    :cond_16
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/yandex/div2/DivFocus;->hash()I

    move-result v1

    goto :goto_f

    :cond_17
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->y()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFunction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivFunction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_10

    :cond_18
    move v3, v2

    :cond_19
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    if-eqz v1, :cond_1a

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_11

    :cond_1a
    move v3, v2

    :cond_1b
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    if-eqz v1, :cond_1c

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_12

    :cond_1c
    move v3, v2

    :cond_1d
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_1e
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/yandex/div2/DivLayoutProvider;->hash()I

    move-result v1

    goto :goto_14

    :cond_1f
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    if-eqz v1, :cond_20

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_15

    :cond_20
    move v3, v2

    :cond_21
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_16

    :cond_22
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_17

    :cond_23
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    if-eqz v1, :cond_24

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_18

    :cond_24
    move v3, v2

    :cond_25
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    if-eqz v1, :cond_26

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_19

    :cond_26
    move v3, v2

    :cond_27
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1a

    :cond_28
    move v1, v2

    :goto_1a
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1b

    :cond_29
    move v1, v2

    :goto_1b
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_2a
    move v1, v2

    :goto_1c
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2b

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1d

    :cond_2b
    move v3, v2

    :cond_2c
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_2d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2e

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v4}, Lcom/yandex/div2/DivTooltip;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1f

    :cond_2e
    move v3, v2

    :cond_2f
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/yandex/div2/DivTransform;->hash()I

    move-result v1

    goto :goto_20

    :cond_30
    move v1, v2

    :goto_20
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/yandex/div2/DivChangeTransition;->hash()I

    move-result v1

    goto :goto_21

    :cond_31
    move v1, v2

    :goto_21
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition;->hash()I

    move-result v1

    goto :goto_22

    :cond_32
    move v1, v2

    :goto_22
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition;->hash()I

    move-result v1

    goto :goto_23

    :cond_33
    move v1, v2

    :goto_23
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_24

    :cond_34
    move v1, v2

    :goto_24
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_35

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTrigger;

    invoke-virtual {v4}, Lcom/yandex/div2/DivTrigger;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_25

    :cond_35
    move v3, v2

    :cond_36
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivVariable;

    invoke-virtual {v4}, Lcom/yandex/div2/DivVariable;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_26

    :cond_37
    move v3, v2

    :cond_38
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/yandex/div2/DivVisibilityAction;->hash()I

    move-result v1

    goto :goto_27

    :cond_39
    move v1, v2

    :goto_27
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3a

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v3}, Lcom/yandex/div2/DivVisibilityAction;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_28

    :cond_3a
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/yandex/div2/DivImage;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivImage;->d0:Ljava/lang/Integer;

    return v0
.end method

.method public i()Lcom/yandex/div2/DivAppearanceTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->V:Lcom/yandex/div2/DivAppearanceTransition;

    return-object p0
.end method

.method public j()Lcom/yandex/div2/DivChangeTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->T:Lcom/yandex/div2/DivChangeTransition;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->q:Ljava/util/List;

    return-object p0
.end method

.method public m()Lcom/yandex/div2/DivTransform;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->S:Lcom/yandex/div2/DivTransform;

    return-object p0
.end method

.method public n()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->W:Ljava/util/List;

    return-object p0
.end method

.method public o()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->f:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public p()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->g:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public q()Lcom/yandex/div2/DivFocus;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->u:Lcom/yandex/div2/DivFocus;

    return-object p0
.end method

.method public r()Lcom/yandex/div2/DivAccessibility;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->a:Lcom/yandex/div2/DivAccessibility;

    return-object p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->U3()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivImageJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivImageJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivImage;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public t()Lcom/yandex/div2/DivEdgeInsets;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->F:Lcom/yandex/div2/DivEdgeInsets;

    return-object p0
.end method

.method public u()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->O:Ljava/util/List;

    return-object p0
.end method

.method public v()Lcom/yandex/div2/DivLayoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->C:Lcom/yandex/div2/DivLayoutProvider;

    return-object p0
.end method

.method public w()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->X:Ljava/util/List;

    return-object p0
.end method

.method public x()Lcom/yandex/div2/DivVisibilityAction;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->a0:Lcom/yandex/div2/DivVisibilityAction;

    return-object p0
.end method

.method public y()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->v:Ljava/util/List;

    return-object p0
.end method

.method public z()Lcom/yandex/div2/DivAppearanceTransition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->U:Lcom/yandex/div2/DivAppearanceTransition;

    return-object p0
.end method
