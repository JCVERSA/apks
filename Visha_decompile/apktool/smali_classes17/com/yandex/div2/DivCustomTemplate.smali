.class public final Lcom/yandex/div2/DivCustomTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivCustomTemplate$a;
    }
.end annotation


# static fields
.field public static final J:Lcom/yandex/div2/DivCustomTemplate$a;

.field public static final K:Lcom/yandex/div/json/expressions/Expression;

.field public static final L:Lcom/yandex/div2/DivSize$d;

.field public static final M:Lcom/yandex/div/json/expressions/Expression;

.field public static final N:Lcom/yandex/div2/DivSize$c;

.field public static final O:Ls74;


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
    .locals 10

    new-instance v0, Lcom/yandex/div2/DivCustomTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivCustomTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivCustomTemplate;->J:Lcom/yandex/div2/DivCustomTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivCustomTemplate;->K:Lcom/yandex/div/json/expressions/Expression;

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

    sput-object v2, Lcom/yandex/div2/DivCustomTemplate;->L:Lcom/yandex/div2/DivSize$d;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivCustomTemplate;->M:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivCustomTemplate;->N:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lcom/yandex/div2/DivCustomTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivCustomTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivCustomTemplate;->O:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivCustomTemplate;ZLorg/json/JSONObject;)V
    .locals 36

    move-object/from16 v0, p0

    const-string v1, "env"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "json"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v15, Ltp3;->c:Ltp3$a;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 39
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 40
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 41
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 42
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 43
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 44
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 45
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    .line 46
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v9

    .line 47
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v10

    .line 48
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v11

    .line 49
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v12

    .line 50
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v13

    .line 51
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move v0, v14

    move-object/from16 v14, v16

    .line 52
    invoke-virtual {v15, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    .line 53
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    .line 54
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v17

    .line 55
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v18

    .line 56
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v19

    .line 57
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v20

    .line 58
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v21

    .line 59
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v22

    .line 60
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v23

    .line 61
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v24

    .line 62
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v25

    .line 63
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v26

    .line 64
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v27

    .line 65
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v28

    .line 66
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v29

    .line 67
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v30

    .line 68
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v31

    .line 69
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v32

    .line 70
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v33

    .line 71
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v34

    .line 72
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 73
    invoke-direct/range {v0 .. v35}, Lcom/yandex/div2/DivCustomTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not use this constructor directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivCustomTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivCustomTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivCustomTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
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

    const-string v0, "alignmentHorizontal"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentVertical"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alpha"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animators"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "border"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnSpan"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customProps"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customType"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disappearActions"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focus"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functions"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutProvider"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margins"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reuseId"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rowSpan"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedActions"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tooltips"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionChange"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionIn"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionOut"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionTriggers"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableTriggers"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variables"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityAction"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityActions"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->a:Ltp3;

    .line 3
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->b:Ltp3;

    .line 4
    iput-object v3, v0, Lcom/yandex/div2/DivCustomTemplate;->c:Ltp3;

    .line 5
    iput-object v4, v0, Lcom/yandex/div2/DivCustomTemplate;->d:Ltp3;

    .line 6
    iput-object v5, v0, Lcom/yandex/div2/DivCustomTemplate;->e:Ltp3;

    .line 7
    iput-object v6, v0, Lcom/yandex/div2/DivCustomTemplate;->f:Ltp3;

    .line 8
    iput-object v7, v0, Lcom/yandex/div2/DivCustomTemplate;->g:Ltp3;

    .line 9
    iput-object v8, v0, Lcom/yandex/div2/DivCustomTemplate;->h:Ltp3;

    .line 10
    iput-object v9, v0, Lcom/yandex/div2/DivCustomTemplate;->i:Ltp3;

    .line 11
    iput-object v10, v0, Lcom/yandex/div2/DivCustomTemplate;->j:Ltp3;

    .line 12
    iput-object v11, v0, Lcom/yandex/div2/DivCustomTemplate;->k:Ltp3;

    .line 13
    iput-object v12, v0, Lcom/yandex/div2/DivCustomTemplate;->l:Ltp3;

    .line 14
    iput-object v13, v0, Lcom/yandex/div2/DivCustomTemplate;->m:Ltp3;

    .line 15
    iput-object v14, v0, Lcom/yandex/div2/DivCustomTemplate;->n:Ltp3;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->o:Ltp3;

    .line 17
    iput-object v15, v0, Lcom/yandex/div2/DivCustomTemplate;->p:Ltp3;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->q:Ltp3;

    .line 19
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->r:Ltp3;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->s:Ltp3;

    .line 21
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->t:Ltp3;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 22
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->u:Ltp3;

    .line 23
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->v:Ltp3;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 24
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->w:Ltp3;

    .line 25
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->x:Ltp3;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    .line 26
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->y:Ltp3;

    .line 27
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->z:Ltp3;

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    .line 28
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->A:Ltp3;

    .line 29
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->B:Ltp3;

    move-object/from16 v1, p29

    move-object/from16 v2, p30

    .line 30
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->C:Ltp3;

    .line 31
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->D:Ltp3;

    move-object/from16 v1, p31

    move-object/from16 v2, p32

    .line 32
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->E:Ltp3;

    .line 33
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->F:Ltp3;

    move-object/from16 v1, p33

    move-object/from16 v2, p34

    .line 34
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->G:Ltp3;

    .line 35
    iput-object v2, v0, Lcom/yandex/div2/DivCustomTemplate;->H:Ltp3;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lcom/yandex/div2/DivCustomTemplate;->I:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->z2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCustomJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivCustomJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivCustomTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
