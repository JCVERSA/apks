.class public final Lcom/yandex/div2/DivTextTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTextTemplate$a;,
        Lcom/yandex/div2/DivTextTemplate$EllipsisTemplate;,
        Lcom/yandex/div2/DivTextTemplate$ImageTemplate;,
        Lcom/yandex/div2/DivTextTemplate$RangeTemplate;
    }
.end annotation


# static fields
.field public static final A0:Lcom/yandex/div/json/expressions/Expression;

.field public static final B0:Lcom/yandex/div/json/expressions/Expression;

.field public static final C0:Lcom/yandex/div/json/expressions/Expression;

.field public static final D0:Lcom/yandex/div/json/expressions/Expression;

.field public static final E0:Lcom/yandex/div/json/expressions/Expression;

.field public static final F0:Lcom/yandex/div/json/expressions/Expression;

.field public static final G0:Lcom/yandex/div/json/expressions/Expression;

.field public static final H0:Lcom/yandex/div/json/expressions/Expression;

.field public static final I0:Lcom/yandex/div/json/expressions/Expression;

.field public static final J0:Lcom/yandex/div2/DivSize$c;

.field public static final K0:Ls74;

.field public static final r0:Lcom/yandex/div2/DivTextTemplate$a;

.field public static final s0:Lcom/yandex/div2/DivAnimation;

.field public static final t0:Lcom/yandex/div/json/expressions/Expression;

.field public static final u0:Lcom/yandex/div/json/expressions/Expression;

.field public static final v0:Lcom/yandex/div/json/expressions/Expression;

.field public static final w0:Lcom/yandex/div/json/expressions/Expression;

.field public static final x0:Lcom/yandex/div/json/expressions/Expression;

.field public static final y0:Lcom/yandex/div2/DivSize$d;

.field public static final z0:Lcom/yandex/div/json/expressions/Expression;


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

.field public final S:Ltp3;

.field public final T:Ltp3;

.field public final U:Ltp3;

.field public final V:Ltp3;

.field public final W:Ltp3;

.field public final X:Ltp3;

.field public final Y:Ltp3;

.field public final Z:Ltp3;

.field public final a:Ltp3;

.field public final a0:Ltp3;

.field public final b:Ltp3;

.field public final b0:Ltp3;

.field public final c:Ltp3;

.field public final c0:Ltp3;

.field public final d:Ltp3;

.field public final d0:Ltp3;

.field public final e:Ltp3;

.field public final e0:Ltp3;

.field public final f:Ltp3;

.field public final f0:Ltp3;

.field public final g:Ltp3;

.field public final g0:Ltp3;

.field public final h:Ltp3;

.field public final h0:Ltp3;

.field public final i:Ltp3;

.field public final i0:Ltp3;

.field public final j:Ltp3;

.field public final j0:Ltp3;

.field public final k:Ltp3;

.field public final k0:Ltp3;

.field public final l:Ltp3;

.field public final l0:Ltp3;

.field public final m:Ltp3;

.field public final m0:Ltp3;

.field public final n:Ltp3;

.field public final n0:Ltp3;

.field public final o:Ltp3;

.field public final o0:Ltp3;

.field public final p:Ltp3;

.field public final p0:Ltp3;

.field public final q:Ltp3;

.field public final q0:Ltp3;

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
    .locals 15

    new-instance v0, Lcom/yandex/div2/DivTextTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTextTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->r0:Lcom/yandex/div2/DivTextTemplate$a;

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

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->s0:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v13, v14}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->t0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->u0:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->v0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->w0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivFontWeight;->REGULAR:Lcom/yandex/div2/DivFontWeight;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->x0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$d;

    new-instance v8, Lcom/yandex/div2/DivWrapContentSize;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v8}, Lcom/yandex/div2/DivSize$d;-><init>(Lcom/yandex/div2/DivWrapContentSize;)V

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->y0:Lcom/yandex/div2/DivSize$d;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->z0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextTemplate;->A0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivLineStyle;->NONE:Lcom/yandex/div2/DivLineStyle;

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    sput-object v3, Lcom/yandex/div2/DivTextTemplate;->B0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v3, Lcom/yandex/div2/DivAlignmentHorizontal;->START:Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {v13, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    sput-object v3, Lcom/yandex/div2/DivTextTemplate;->C0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v3, Lcom/yandex/div2/DivAlignmentVertical;->TOP:Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {v13, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    sput-object v3, Lcom/yandex/div2/DivTextTemplate;->D0:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v3, -0x1000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    sput-object v3, Lcom/yandex/div2/DivTextTemplate;->E0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->F0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivText$Truncate;->END:Lcom/yandex/div2/DivText$Truncate;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->G0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->H0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->I0:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->J0:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lcom/yandex/div2/DivTextTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTextTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTextTemplate;->K0:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivTextTemplate;ZLorg/json/JSONObject;)V
    .locals 70

    move-object/from16 v0, p0

    const-string v1, "env"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "json"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v15, Ltp3;->c:Ltp3$a;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 73
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 74
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 75
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 76
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 77
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 78
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 79
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    .line 80
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v9

    .line 81
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v10

    .line 82
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v11

    .line 83
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v12

    .line 84
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v13

    .line 85
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move v0, v14

    move-object/from16 v14, v16

    .line 86
    invoke-virtual {v15, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    .line 87
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    .line 88
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v17

    .line 89
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v18

    .line 90
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v19

    .line 91
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v20

    .line 92
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v21

    .line 93
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v22

    .line 94
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v23

    .line 95
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v24

    .line 96
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v25

    .line 97
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v26

    .line 98
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v27

    .line 99
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v28

    .line 100
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v29

    .line 101
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v30

    .line 102
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v31

    .line 103
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v32

    .line 104
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v33

    .line 105
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v34

    .line 106
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v35

    .line 107
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v36

    .line 108
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v37

    .line 109
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v38

    .line 110
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v39

    .line 111
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v40

    .line 112
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v41

    .line 113
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v42

    .line 114
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v43

    .line 115
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v44

    .line 116
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v45

    .line 117
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v46

    .line 118
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v47

    .line 119
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v48

    .line 120
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v49

    .line 121
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v50

    .line 122
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v51

    .line 123
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v52

    .line 124
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v53

    .line 125
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v54

    .line 126
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v55

    .line 127
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v56

    .line 128
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v57

    .line 129
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v58

    .line 130
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v59

    .line 131
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v60

    .line 132
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v61

    .line 133
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v62

    .line 134
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v63

    .line 135
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v64

    .line 136
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v65

    .line 137
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v66

    .line 138
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v67

    .line 139
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v68

    .line 140
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    invoke-direct/range {v0 .. v69}, Lcom/yandex/div2/DivTextTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not use this constructor directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivTextTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivTextTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivTextTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
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

    const-string v0, "action"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionAnimation"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentHorizontal"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentVertical"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alpha"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animators"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoEllipsize"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "border"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureFocusOnAction"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnSpan"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disappearActions"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doubletapActions"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ellipsis"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focus"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusedTextColor"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFeatureSettings"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSize"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSizeUnit"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontVariationSettings"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeightValue"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functions"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hoverEndActions"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hoverStartActions"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "images"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutProvider"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "letterSpacing"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lineHeight"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "longtapActions"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margins"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxLines"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minHiddenLines"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    move-object/from16 v15, p40

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pressEndActions"

    move-object/from16 v15, p41

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pressStartActions"

    move-object/from16 v15, p42

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ranges"

    move-object/from16 v15, p43

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reuseId"

    move-object/from16 v15, p44

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rowSpan"

    move-object/from16 v15, p45

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectable"

    move-object/from16 v15, p46

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedActions"

    move-object/from16 v15, p47

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strike"

    move-object/from16 v15, p48

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v15, p49

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textAlignmentHorizontal"

    move-object/from16 v15, p50

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textAlignmentVertical"

    move-object/from16 v15, p51

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    move-object/from16 v15, p52

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textGradient"

    move-object/from16 v15, p53

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShadow"

    move-object/from16 v15, p54

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tightenWidth"

    move-object/from16 v15, p55

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tooltips"

    move-object/from16 v15, p56

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    move-object/from16 v15, p57

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionChange"

    move-object/from16 v15, p58

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionIn"

    move-object/from16 v15, p59

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionOut"

    move-object/from16 v15, p60

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionTriggers"

    move-object/from16 v15, p61

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncate"

    move-object/from16 v15, p62

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underline"

    move-object/from16 v15, p63

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableTriggers"

    move-object/from16 v15, p64

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variables"

    move-object/from16 v15, p65

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v15, p66

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityAction"

    move-object/from16 v15, p67

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityActions"

    move-object/from16 v15, p68

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    move-object/from16 v15, p69

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->a:Ltp3;

    .line 3
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->b:Ltp3;

    .line 4
    iput-object v3, v0, Lcom/yandex/div2/DivTextTemplate;->c:Ltp3;

    .line 5
    iput-object v4, v0, Lcom/yandex/div2/DivTextTemplate;->d:Ltp3;

    .line 6
    iput-object v5, v0, Lcom/yandex/div2/DivTextTemplate;->e:Ltp3;

    .line 7
    iput-object v6, v0, Lcom/yandex/div2/DivTextTemplate;->f:Ltp3;

    .line 8
    iput-object v7, v0, Lcom/yandex/div2/DivTextTemplate;->g:Ltp3;

    .line 9
    iput-object v8, v0, Lcom/yandex/div2/DivTextTemplate;->h:Ltp3;

    .line 10
    iput-object v9, v0, Lcom/yandex/div2/DivTextTemplate;->i:Ltp3;

    .line 11
    iput-object v10, v0, Lcom/yandex/div2/DivTextTemplate;->j:Ltp3;

    .line 12
    iput-object v11, v0, Lcom/yandex/div2/DivTextTemplate;->k:Ltp3;

    .line 13
    iput-object v12, v0, Lcom/yandex/div2/DivTextTemplate;->l:Ltp3;

    .line 14
    iput-object v13, v0, Lcom/yandex/div2/DivTextTemplate;->m:Ltp3;

    .line 15
    iput-object v14, v0, Lcom/yandex/div2/DivTextTemplate;->n:Ltp3;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->o:Ltp3;

    .line 17
    iput-object v15, v0, Lcom/yandex/div2/DivTextTemplate;->p:Ltp3;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->q:Ltp3;

    .line 19
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->r:Ltp3;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->s:Ltp3;

    .line 21
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->t:Ltp3;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 22
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->u:Ltp3;

    .line 23
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->v:Ltp3;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 24
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->w:Ltp3;

    .line 25
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->x:Ltp3;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    .line 26
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->y:Ltp3;

    .line 27
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->z:Ltp3;

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    .line 28
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->A:Ltp3;

    .line 29
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->B:Ltp3;

    move-object/from16 v1, p29

    move-object/from16 v2, p30

    .line 30
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->C:Ltp3;

    .line 31
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->D:Ltp3;

    move-object/from16 v1, p31

    move-object/from16 v2, p32

    .line 32
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->E:Ltp3;

    .line 33
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->F:Ltp3;

    move-object/from16 v1, p33

    move-object/from16 v2, p34

    .line 34
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->G:Ltp3;

    .line 35
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->H:Ltp3;

    move-object/from16 v1, p35

    move-object/from16 v2, p36

    .line 36
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->I:Ltp3;

    .line 37
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->J:Ltp3;

    move-object/from16 v1, p37

    move-object/from16 v2, p38

    .line 38
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->K:Ltp3;

    .line 39
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->L:Ltp3;

    move-object/from16 v1, p39

    move-object/from16 v2, p40

    .line 40
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->M:Ltp3;

    .line 41
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->N:Ltp3;

    move-object/from16 v1, p41

    move-object/from16 v2, p42

    .line 42
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->O:Ltp3;

    .line 43
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->P:Ltp3;

    move-object/from16 v1, p43

    move-object/from16 v2, p44

    .line 44
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->Q:Ltp3;

    .line 45
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->R:Ltp3;

    move-object/from16 v1, p45

    move-object/from16 v2, p46

    .line 46
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->S:Ltp3;

    .line 47
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->T:Ltp3;

    move-object/from16 v1, p47

    move-object/from16 v2, p48

    .line 48
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->U:Ltp3;

    .line 49
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->V:Ltp3;

    move-object/from16 v1, p49

    move-object/from16 v2, p50

    .line 50
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->W:Ltp3;

    .line 51
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->X:Ltp3;

    move-object/from16 v1, p51

    move-object/from16 v2, p52

    .line 52
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->Y:Ltp3;

    .line 53
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->Z:Ltp3;

    move-object/from16 v1, p53

    move-object/from16 v2, p54

    .line 54
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->a0:Ltp3;

    .line 55
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->b0:Ltp3;

    move-object/from16 v1, p55

    move-object/from16 v2, p56

    .line 56
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->c0:Ltp3;

    .line 57
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->d0:Ltp3;

    move-object/from16 v1, p57

    move-object/from16 v2, p58

    .line 58
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->e0:Ltp3;

    .line 59
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->f0:Ltp3;

    move-object/from16 v1, p59

    move-object/from16 v2, p60

    .line 60
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->g0:Ltp3;

    .line 61
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->h0:Ltp3;

    move-object/from16 v1, p61

    move-object/from16 v2, p62

    .line 62
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->i0:Ltp3;

    .line 63
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->j0:Ltp3;

    move-object/from16 v1, p63

    move-object/from16 v2, p64

    .line 64
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->k0:Ltp3;

    .line 65
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->l0:Ltp3;

    move-object/from16 v1, p65

    move-object/from16 v2, p66

    .line 66
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->m0:Ltp3;

    .line 67
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->n0:Ltp3;

    move-object/from16 v1, p67

    move-object/from16 v2, p68

    .line 68
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->o0:Ltp3;

    .line 69
    iput-object v2, v0, Lcom/yandex/div2/DivTextTemplate;->p0:Ltp3;

    move-object/from16 v1, p69

    .line 70
    iput-object v1, v0, Lcom/yandex/div2/DivTextTemplate;->q0:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->k8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTextJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTextJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTextTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
