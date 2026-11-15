.class public final Lcom/yandex/div2/DivTabs$TabTitleStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabTitleStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;,
        Lcom/yandex/div2/DivTabs$TabTitleStyle$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/yandex/div/json/expressions/Expression;

.field public static final B:Lcom/yandex/div/json/expressions/Expression;

.field public static final C:Lcom/yandex/div/json/expressions/Expression;

.field public static final D:Lcom/yandex/div/json/expressions/Expression;

.field public static final E:Lcom/yandex/div/json/expressions/Expression;

.field public static final F:Lcom/yandex/div/json/expressions/Expression;

.field public static final G:Lcom/yandex/div2/DivEdgeInsets;

.field public static final H:Ls74;

.field public static final v:Lcom/yandex/div2/DivTabs$TabTitleStyle$a;

.field public static final w:Lcom/yandex/div/json/expressions/Expression;

.field public static final x:Lcom/yandex/div/json/expressions/Expression;

.field public static final y:Lcom/yandex/div/json/expressions/Expression;

.field public static final z:Lcom/yandex/div/json/expressions/Expression;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Lcom/yandex/div2/DivCornersRadius;

.field public final i:Lcom/yandex/div/json/expressions/Expression;

.field public final j:Lcom/yandex/div/json/expressions/Expression;

.field public final k:Lcom/yandex/div/json/expressions/Expression;

.field public final l:Lcom/yandex/div/json/expressions/Expression;

.field public final m:Lcom/yandex/div/json/expressions/Expression;

.field public final n:Lcom/yandex/div/json/expressions/Expression;

.field public final o:Lcom/yandex/div/json/expressions/Expression;

.field public final p:Lcom/yandex/div/json/expressions/Expression;

.field public final q:Lcom/yandex/div/json/expressions/Expression;

.field public final r:Lcom/yandex/div/json/expressions/Expression;

.field public final s:Lcom/yandex/div/json/expressions/Expression;

.field public final t:Lcom/yandex/div2/DivEdgeInsets;

.field public u:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/yandex/div2/DivTabs$TabTitleStyle$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTabs$TabTitleStyle$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->v:Lcom/yandex/div2/DivTabs$TabTitleStyle$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const/16 v1, -0x23a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->w:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->x:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->y:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->SLIDE:Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->z:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->A:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->B:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivFontWeight;->REGULAR:Lcom/yandex/div2/DivFontWeight;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->C:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->D:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->E:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->F:Lcom/yandex/div/json/expressions/Expression;

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

    sput-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->G:Lcom/yandex/div2/DivEdgeInsets;

    sget-object v0, Lcom/yandex/div2/DivTabs$TabTitleStyle$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTabs$TabTitleStyle$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->H:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p16

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p20

    const-string v12, "activeBackgroundColor"

    invoke-static {p1, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "activeTextColor"

    invoke-static {v2, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "animationDuration"

    invoke-static {v3, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "animationType"

    invoke-static {v4, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "fontSize"

    invoke-static {v5, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "fontSizeUnit"

    invoke-static {v6, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "fontWeight"

    invoke-static {v7, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "inactiveTextColor"

    invoke-static {v8, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "itemSpacing"

    invoke-static {v9, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "letterSpacing"

    invoke-static {v10, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "paddings"

    invoke-static {v11, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p3

    .line 4
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    .line 5
    iput-object v2, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    .line 6
    iput-object v3, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    .line 7
    iput-object v4, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p7

    .line 8
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p8

    .line 9
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    move-object/from16 v1, p9

    .line 10
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->i:Lcom/yandex/div/json/expressions/Expression;

    .line 11
    iput-object v5, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    .line 12
    iput-object v6, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    .line 13
    iput-object v7, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->n:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->o:Lcom/yandex/div/json/expressions/Expression;

    .line 17
    iput-object v8, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    .line 18
    iput-object v9, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    .line 19
    iput-object v10, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->r:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    .line 21
    iput-object v11, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->w:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 23
    sget-object v5, Lcom/yandex/div2/DivTabs$TabTitleStyle;->x:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 24
    sget-object v6, Lcom/yandex/div2/DivTabs$TabTitleStyle;->y:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 25
    sget-object v7, Lcom/yandex/div2/DivTabs$TabTitleStyle;->z:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 26
    sget-object v11, Lcom/yandex/div2/DivTabs$TabTitleStyle;->A:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 27
    sget-object v12, Lcom/yandex/div2/DivTabs$TabTitleStyle;->B:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 28
    sget-object v13, Lcom/yandex/div2/DivTabs$TabTitleStyle;->C:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 29
    sget-object v16, Lcom/yandex/div2/DivTabs$TabTitleStyle;->D:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    .line 30
    sget-object v17, Lcom/yandex/div2/DivTabs$TabTitleStyle;->E:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    .line 31
    sget-object v18, Lcom/yandex/div2/DivTabs$TabTitleStyle;->F:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_13

    .line 32
    sget-object v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->G:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_13

    :cond_13
    move-object/from16 v0, p20

    :goto_13
    move-object/from16 p1, v1

    move-object/from16 p2, v2

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

    move-object/from16 p14, v15

    move-object/from16 p15, v3

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v0

    .line 33
    invoke-direct/range {p0 .. p20}, Lcom/yandex/div2/DivTabs$TabTitleStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Loj3;)Z
    .locals 8

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFontWeight;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    iget-object v3, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivFontWeight;

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    iget-object v3, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_6

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_5

    :cond_6
    move-object v3, v2

    :goto_5
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivCornersRadius;->a(Lcom/yandex/div2/DivCornersRadius;Loj3;Loj3;)Z

    move-result v1

    goto :goto_6

    :cond_7
    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-nez v1, :cond_8

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v0

    :goto_6
    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v1, v2

    :goto_7
    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_a

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_8

    :cond_a
    move-object v4, v2

    :goto_8
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_9

    :cond_b
    move-object v1, v2

    :goto_9
    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_c

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_a

    :cond_c
    move-object v4, v2

    :goto_a
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_b

    :cond_d
    move-object v1, v2

    :goto_b
    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_e

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    goto :goto_c

    :cond_e
    move-object v4, v2

    :goto_c
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFontWeight;

    goto :goto_d

    :cond_f
    move-object v1, v2

    :goto_d
    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_10

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFontWeight;

    goto :goto_e

    :cond_10
    move-object v4, v2

    :goto_e
    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->r:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->r:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-nez v1, :cond_11

    move v1, v3

    goto :goto_f

    :cond_11
    move v1, v0

    :goto_f
    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_10

    :cond_12
    move-object v1, v2

    :goto_10
    iget-object v4, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_13

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_13
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p0, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    iget-object p1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v0, v3

    :cond_14
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div2/DivCornersRadius;->hash()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->r:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->u:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->U7()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivTabs$TabTitleStyle;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
