.class public final Lcom/yandex/div2/DivIndicatorTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivIndicatorTemplate$a;
    }
.end annotation


# static fields
.field public static final S:Lcom/yandex/div2/DivIndicatorTemplate$a;

.field public static final T:Lcom/yandex/div/json/expressions/Expression;

.field public static final U:Lcom/yandex/div/json/expressions/Expression;

.field public static final V:Lcom/yandex/div/json/expressions/Expression;

.field public static final W:Lcom/yandex/div/json/expressions/Expression;

.field public static final X:Lcom/yandex/div2/DivSize$d;

.field public static final Y:Lcom/yandex/div/json/expressions/Expression;

.field public static final Z:Lcom/yandex/div/json/expressions/Expression;

.field public static final a0:Lcom/yandex/div2/DivShape$c;

.field public static final b0:Lcom/yandex/div2/DivFixedSize;

.field public static final c0:Lcom/yandex/div/json/expressions/Expression;

.field public static final d0:Lcom/yandex/div2/DivSize$c;

.field public static final e0:Ls74;


# instance fields
.field public final A:Ltp3;

.field public final B:Ltp3;

.field public final C:Ltp3;

.field public final D:Ltp3;

.field public final E:Ltp3;

.field public final F:Ltp3;

.field public final G:Ltp3;

.field public final H:Ltp3;

.field public final I:Ltp3;

.field public final J:Ltp3;

.field public final K:Ltp3;

.field public final L:Ltp3;

.field public final M:Ltp3;

.field public final N:Ltp3;

.field public final O:Ltp3;

.field public final P:Ltp3;

.field public final Q:Ltp3;

.field public final R:Ltp3;

.field public final a:Ltp3;

.field public final b:Ltp3;

.field public final c:Ltp3;

.field public final d:Ltp3;

.field public final e:Ltp3;

.field public final f:Ltp3;

.field public final g:Ltp3;

.field public final h:Ltp3;

.field public final i:Ltp3;

.field public final j:Ltp3;

.field public final k:Ltp3;

.field public final l:Ltp3;

.field public final m:Ltp3;

.field public final n:Ltp3;

.field public final o:Ltp3;

.field public final p:Ltp3;

.field public final q:Ltp3;

.field public final r:Ltp3;

.field public final s:Ltp3;

.field public final t:Ltp3;

.field public final u:Ltp3;

.field public final v:Ltp3;

.field public final w:Ltp3;

.field public final x:Ltp3;

.field public final y:Ltp3;

.field public final z:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/yandex/div2/DivIndicatorTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivIndicatorTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivIndicatorTemplate;->S:Lcom/yandex/div2/DivIndicatorTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const v2, 0xffdc60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->T:Lcom/yandex/div/json/expressions/Expression;

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->U:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->V:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivIndicator$Animation;->SCALE:Lcom/yandex/div2/DivIndicator$Animation;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->W:Lcom/yandex/div/json/expressions/Expression;

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

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->X:Lcom/yandex/div2/DivSize$d;

    const v2, 0x33919cb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->Y:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->Z:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivShape$c;

    new-instance v11, Lcom/yandex/div2/DivRoundedRectangleShape;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/yandex/div2/DivRoundedRectangleShape;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v11}, Lcom/yandex/div2/DivShape$c;-><init>(Lcom/yandex/div2/DivRoundedRectangleShape;)V

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->a0:Lcom/yandex/div2/DivShape$c;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivIndicatorTemplate;->b0:Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivIndicatorTemplate;->c0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    invoke-direct {v2, v1, v4, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivIndicatorTemplate;->d0:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lcom/yandex/div2/DivIndicatorTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivIndicatorTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivIndicatorTemplate;->e0:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivIndicatorTemplate;ZLorg/json/JSONObject;)V
    .locals 45

    move-object/from16 v0, p0

    const-string v1, "env"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "json"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v15, Ltp3;->c:Ltp3$a;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 48
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 49
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 50
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 51
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 52
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 53
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 54
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    .line 55
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v9

    .line 56
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v10

    .line 57
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v11

    .line 58
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v12

    .line 59
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v13

    .line 60
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move v0, v14

    move-object/from16 v14, v16

    .line 61
    invoke-virtual {v15, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    .line 62
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    .line 63
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v17

    .line 64
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v18

    .line 65
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v19

    .line 66
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v20

    .line 67
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v21

    .line 68
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v22

    .line 69
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v23

    .line 70
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v24

    .line 71
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v25

    .line 72
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v26

    .line 73
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v27

    .line 74
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v28

    .line 75
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v29

    .line 76
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v30

    .line 77
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v31

    .line 78
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v32

    .line 79
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v33

    .line 80
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v34

    .line 81
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v35

    .line 82
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v36

    .line 83
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v37

    .line 84
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v38

    .line 85
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v39

    .line 86
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v40

    .line 87
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v41

    .line 88
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v42

    .line 89
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v43

    .line 90
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 91
    invoke-direct/range {v0 .. v44}, Lcom/yandex/div2/DivIndicatorTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not use this constructor directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivIndicatorTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 46
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivIndicatorTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivIndicatorTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
    .locals 16

    move-object/from16 v0, p0

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

    move-object/from16 v0, p16

    const-string v0, "accessibility"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeItemColor"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeItemSize"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeShape"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentHorizontal"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentVertical"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alpha"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animators"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "border"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnSpan"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disappearActions"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focus"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functions"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveItemColor"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveMinimumShape"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveShape"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsPlacement"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutProvider"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margins"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimumItemSize"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagerId"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reuseId"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rowSpan"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedActions"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spaceBetweenCenters"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tooltips"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionChange"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionIn"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionOut"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionTriggers"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableTriggers"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variables"

    move-object/from16 v15, p40

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v15, p41

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityAction"

    move-object/from16 v15, p42

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityActions"

    move-object/from16 v15, p43

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    move-object/from16 v15, p44

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->a:Ltp3;

    .line 3
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->b:Ltp3;

    .line 4
    iput-object v3, v0, Lcom/yandex/div2/DivIndicatorTemplate;->c:Ltp3;

    .line 5
    iput-object v4, v0, Lcom/yandex/div2/DivIndicatorTemplate;->d:Ltp3;

    .line 6
    iput-object v5, v0, Lcom/yandex/div2/DivIndicatorTemplate;->e:Ltp3;

    .line 7
    iput-object v6, v0, Lcom/yandex/div2/DivIndicatorTemplate;->f:Ltp3;

    .line 8
    iput-object v7, v0, Lcom/yandex/div2/DivIndicatorTemplate;->g:Ltp3;

    .line 9
    iput-object v8, v0, Lcom/yandex/div2/DivIndicatorTemplate;->h:Ltp3;

    .line 10
    iput-object v9, v0, Lcom/yandex/div2/DivIndicatorTemplate;->i:Ltp3;

    .line 11
    iput-object v10, v0, Lcom/yandex/div2/DivIndicatorTemplate;->j:Ltp3;

    .line 12
    iput-object v11, v0, Lcom/yandex/div2/DivIndicatorTemplate;->k:Ltp3;

    .line 13
    iput-object v12, v0, Lcom/yandex/div2/DivIndicatorTemplate;->l:Ltp3;

    .line 14
    iput-object v13, v0, Lcom/yandex/div2/DivIndicatorTemplate;->m:Ltp3;

    .line 15
    iput-object v14, v0, Lcom/yandex/div2/DivIndicatorTemplate;->n:Ltp3;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->o:Ltp3;

    .line 17
    iput-object v15, v0, Lcom/yandex/div2/DivIndicatorTemplate;->p:Ltp3;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->q:Ltp3;

    .line 19
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->r:Ltp3;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->s:Ltp3;

    .line 21
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->t:Ltp3;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 22
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->u:Ltp3;

    .line 23
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->v:Ltp3;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 24
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->w:Ltp3;

    .line 25
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->x:Ltp3;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    .line 26
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->y:Ltp3;

    .line 27
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->z:Ltp3;

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    .line 28
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->A:Ltp3;

    .line 29
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->B:Ltp3;

    move-object/from16 v1, p29

    move-object/from16 v2, p30

    .line 30
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->C:Ltp3;

    .line 31
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->D:Ltp3;

    move-object/from16 v1, p31

    move-object/from16 v2, p32

    .line 32
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->E:Ltp3;

    .line 33
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->F:Ltp3;

    move-object/from16 v1, p33

    move-object/from16 v2, p34

    .line 34
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->G:Ltp3;

    .line 35
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->H:Ltp3;

    move-object/from16 v1, p35

    move-object/from16 v2, p36

    .line 36
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->I:Ltp3;

    .line 37
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->J:Ltp3;

    move-object/from16 v1, p37

    move-object/from16 v2, p38

    .line 38
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->K:Ltp3;

    .line 39
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->L:Ltp3;

    move-object/from16 v1, p39

    move-object/from16 v2, p40

    .line 40
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->M:Ltp3;

    .line 41
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->N:Ltp3;

    move-object/from16 v1, p41

    move-object/from16 v2, p42

    .line 42
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->O:Ltp3;

    .line 43
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->P:Ltp3;

    move-object/from16 v1, p43

    move-object/from16 v2, p44

    .line 44
    iput-object v1, v0, Lcom/yandex/div2/DivIndicatorTemplate;->Q:Ltp3;

    .line 45
    iput-object v2, v0, Lcom/yandex/div2/DivIndicatorTemplate;->R:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->b4()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivIndicatorJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
