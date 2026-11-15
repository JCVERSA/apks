.class public final Lcom/yandex/div2/DivText$Range;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivText$Range$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/yandex/div/json/expressions/Expression;

.field public static final B:Ls74;

.field public static final x:Lcom/yandex/div2/DivText$Range$a;

.field public static final y:Lcom/yandex/div/json/expressions/Expression;

.field public static final z:Lcom/yandex/div/json/expressions/Expression;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div2/DivTextRangeBackground;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Lcom/yandex/div2/DivTextRangeBorder;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Lcom/yandex/div/json/expressions/Expression;

.field public final i:Lcom/yandex/div/json/expressions/Expression;

.field public final j:Lcom/yandex/div/json/expressions/Expression;

.field public final k:Lcom/yandex/div/json/expressions/Expression;

.field public final l:Lcom/yandex/div/json/expressions/Expression;

.field public final m:Lcom/yandex/div/json/expressions/Expression;

.field public final n:Lcom/yandex/div/json/expressions/Expression;

.field public final o:Lcom/yandex/div/json/expressions/Expression;

.field public final p:Lcom/yandex/div2/DivTextRangeMask;

.field public final q:Lcom/yandex/div/json/expressions/Expression;

.field public final r:Lcom/yandex/div/json/expressions/Expression;

.field public final s:Lcom/yandex/div/json/expressions/Expression;

.field public final t:Lcom/yandex/div2/DivShadow;

.field public final u:Lcom/yandex/div/json/expressions/Expression;

.field public final v:Lcom/yandex/div/json/expressions/Expression;

.field public w:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivText$Range$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivText$Range$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivText$Range;->x:Lcom/yandex/div2/DivText$Range$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivText$Range;->y:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivText$Range;->z:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivText$Range;->A:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivText$Range$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivText$Range$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivText$Range;->B:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeBackground;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeMask;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivShadow;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 5

    move-object v0, p0

    move-object v1, p4

    move-object v2, p10

    move-object/from16 v3, p17

    const-string v4, "baselineOffset"

    invoke-static {p4, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fontSizeUnit"

    invoke-static {p10, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "start"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    iput-object v4, v0, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    move-object v4, p2

    iput-object v4, v0, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    move-object v4, p3

    iput-object v4, v0, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->d:Lcom/yandex/div/json/expressions/Expression;

    move-object v1, p5

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    move-object v1, p6

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    move-object v1, p7

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->g:Lcom/yandex/div/json/expressions/Expression;

    move-object v1, p8

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->h:Lcom/yandex/div/json/expressions/Expression;

    move-object v1, p9

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    iput-object v2, v0, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->k:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->p:Lcom/yandex/div2/DivTextRangeMask;

    iput-object v3, v0, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivText$Range;Loj3;Loj3;)Z
    .locals 8

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto/16 :goto_21

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAction;

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4, v3, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_21

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    if-nez v1, :cond_2c

    :cond_6
    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTextAlignmentVertical;

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    iget-object v3, p1, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_8

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivTextAlignmentVertical;

    goto :goto_2

    :cond_8
    move-object v3, v2

    :goto_2
    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivTextRangeBackground;->a(Lcom/yandex/div2/DivTextRangeBackground;Loj3;Loj3;)Z

    move-result v1

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    if-nez v1, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    move v1, v0

    :goto_3
    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-nez v1, :cond_b

    move v1, v3

    goto :goto_4

    :cond_b
    move v1, v0

    :goto_4
    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    if-eqz v1, :cond_c

    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivTextRangeBorder;->a(Lcom/yandex/div2/DivTextRangeBorder;Loj3;Loj3;)Z

    move-result v1

    goto :goto_5

    :cond_c
    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_5

    :cond_d
    move v1, v0

    :goto_5
    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_6

    :cond_e
    move-object v1, v2

    :goto_6
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_f

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_7

    :cond_f
    move-object v4, v2

    :goto_7
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_10
    move-object v1, v2

    :goto_8
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_11

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_9

    :cond_11
    move-object v4, v2

    :goto_9
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_a

    :cond_12
    move-object v1, v2

    :goto_a
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_13

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_b

    :cond_13
    move-object v4, v2

    :goto_b
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_14

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_c

    :cond_14
    move-object v1, v2

    :goto_c
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_15

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_d

    :cond_15
    move-object v4, v2

    :goto_d
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_e

    :cond_16
    move-object v1, v2

    :goto_e
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_17

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    goto :goto_f

    :cond_17
    move-object v4, v2

    :goto_f
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_18

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFontWeight;

    goto :goto_10

    :cond_18
    move-object v1, v2

    :goto_10
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_19

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFontWeight;

    goto :goto_11

    :cond_19
    move-object v4, v2

    :goto_11
    if-ne v1, v4, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_12

    :cond_1a
    move-object v1, v2

    :goto_12
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_1b

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_13

    :cond_1b
    move-object v4, v2

    :goto_13
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_14

    :cond_1c
    move-object v1, v2

    :goto_14
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_1d

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    goto :goto_15

    :cond_1d
    move-object v4, v2

    :goto_15
    invoke-static {v1, v4}, Ly45;->b(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_16

    :cond_1e
    move-object v1, v2

    :goto_16
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_1f

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_17

    :cond_1f
    move-object v4, v2

    :goto_17
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->p:Lcom/yandex/div2/DivTextRangeMask;

    if-eqz v1, :cond_20

    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->p:Lcom/yandex/div2/DivTextRangeMask;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivTextRangeMask;->a(Lcom/yandex/div2/DivTextRangeMask;Loj3;Loj3;)Z

    move-result v1

    goto :goto_18

    :cond_20
    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->p:Lcom/yandex/div2/DivTextRangeMask;

    if-nez v1, :cond_21

    move v1, v3

    goto :goto_18

    :cond_21
    move v1, v0

    :goto_18
    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_22

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivLineStyle;

    goto :goto_19

    :cond_22
    move-object v1, v2

    :goto_19
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_23

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivLineStyle;

    goto :goto_1a

    :cond_23
    move-object v4, v2

    :goto_1a
    if-ne v1, v4, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1b

    :cond_24
    move-object v1, v2

    :goto_1b
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_25

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_1c

    :cond_25
    move-object v4, v2

    :goto_1c
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_26

    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivShadow;->a(Lcom/yandex/div2/DivShadow;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1d

    :cond_26
    iget-object v1, p1, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    if-nez v1, :cond_27

    move v1, v3

    goto :goto_1d

    :cond_27
    move v1, v0

    :goto_1d
    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_28

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_1e

    :cond_28
    move-object v1, v2

    :goto_1e
    iget-object v4, p1, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_29

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_1f

    :cond_29
    move-object v4, v2

    :goto_1f
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_2a

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivLineStyle;

    goto :goto_20

    :cond_2a
    move-object p0, v2

    :goto_20
    iget-object p1, p1, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_2b

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/yandex/div2/DivLineStyle;

    :cond_2b
    if-ne p0, v2, :cond_2c

    move v0, v3

    :cond_2c
    :goto_21
    return v0
.end method

.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivText$Range;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivText$Range;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div2/DivTextRangeBackground;->hash()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div2/DivTextRangeBorder;->hash()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->p:Lcom/yandex/div2/DivTextRangeMask;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/yandex/div2/DivTextRangeMask;->hash()I

    move-result v1

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_11
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/yandex/div2/DivShadow;->hash()I

    move-result v1

    goto :goto_10

    :cond_12
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_13
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_14
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivText$Range;->w:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->s8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTextRangeJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTextRangeJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivText$Range;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
