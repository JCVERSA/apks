.class public final Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabsTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabTitleStyleTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/yandex/div/json/expressions/Expression;

.field public static final B:Lcom/yandex/div/json/expressions/Expression;

.field public static final C:Lcom/yandex/div/json/expressions/Expression;

.field public static final D:Lcom/yandex/div/json/expressions/Expression;

.field public static final E:Lcom/yandex/div/json/expressions/Expression;

.field public static final F:Lcom/yandex/div2/DivEdgeInsets;

.field public static final G:Ls74;

.field public static final u:Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$a;

.field public static final v:Lcom/yandex/div/json/expressions/Expression;

.field public static final w:Lcom/yandex/div/json/expressions/Expression;

.field public static final x:Lcom/yandex/div/json/expressions/Expression;

.field public static final y:Lcom/yandex/div/json/expressions/Expression;

.field public static final z:Lcom/yandex/div/json/expressions/Expression;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->u:Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const/16 v1, -0x23a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->v:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->w:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->x:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->SLIDE:Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->y:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->z:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->A:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivFontWeight;->REGULAR:Lcom/yandex/div2/DivFontWeight;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->B:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->C:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->D:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->E:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div2/DivEdgeInsets;

    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v8

    const/16 v10, 0x52

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/yandex/div2/DivEdgeInsets;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->F:Lcom/yandex/div2/DivEdgeInsets;

    sget-object v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->G:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;ZLorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "env"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "json"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v15, Ltp3;->c:Ltp3$a;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 24
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 25
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 26
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 27
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 28
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 29
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 30
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    .line 31
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v9

    .line 32
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v10

    .line 33
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v11

    .line 34
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v12

    .line 35
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v13

    .line 36
    invoke-virtual {v15, v14}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move v0, v14

    move-object/from16 v14, v16

    .line 37
    invoke-virtual {v15, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    .line 38
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v16

    .line 39
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v17

    .line 40
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v18

    .line 41
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v19

    .line 42
    invoke-virtual {v1, v0}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 43
    invoke-direct/range {v0 .. v20}, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not use this constructor directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
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

    const-string v0, "activeBackgroundColor"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeFontVariationSettings"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeFontWeight"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeTextColor"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationDuration"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationType"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cornerRadius"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cornersRadius"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSize"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSizeUnit"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveBackgroundColor"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveFontVariationSettings"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveFontWeight"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveTextColor"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemSpacing"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "letterSpacing"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lineHeight"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->a:Ltp3;

    .line 3
    iput-object v2, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->b:Ltp3;

    .line 4
    iput-object v3, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->c:Ltp3;

    .line 5
    iput-object v4, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->d:Ltp3;

    .line 6
    iput-object v5, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->e:Ltp3;

    .line 7
    iput-object v6, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->f:Ltp3;

    .line 8
    iput-object v7, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->g:Ltp3;

    .line 9
    iput-object v8, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->h:Ltp3;

    .line 10
    iput-object v9, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->i:Ltp3;

    .line 11
    iput-object v10, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->j:Ltp3;

    .line 12
    iput-object v11, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->k:Ltp3;

    .line 13
    iput-object v12, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->l:Ltp3;

    .line 14
    iput-object v13, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->m:Ltp3;

    .line 15
    iput-object v14, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->n:Ltp3;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->o:Ltp3;

    .line 17
    iput-object v15, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->p:Ltp3;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->q:Ltp3;

    .line 19
    iput-object v2, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->r:Ltp3;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->s:Ltp3;

    .line 21
    iput-object v2, v0, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->t:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V7()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
