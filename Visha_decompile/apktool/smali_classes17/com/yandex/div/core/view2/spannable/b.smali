.class public final Lcom/yandex/div/core/view2/spannable/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/spannable/b$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/yandex/div/core/view2/spannable/b$a;

.field public static final v:Lcom/yandex/div2/DivSizeUnit;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lcom/yandex/div2/DivTextAlignmentVertical;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/Integer;

.field public final i:Lcom/yandex/div2/DivSizeUnit;

.field public final j:Lcom/yandex/div2/DivFontWeight;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Double;

.field public final m:Ljava/lang/Integer;

.field public final n:Lcom/yandex/div2/DivLineStyle;

.field public final o:Ljava/lang/Integer;

.field public final p:Lof9;

.field public final q:Ljava/lang/Integer;

.field public final r:Ljava/lang/Integer;

.field public final s:Ljava/lang/Integer;

.field public final t:Lcom/yandex/div2/DivLineStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/spannable/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/spannable/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/spannable/b;->u:Lcom/yandex/div/core/view2/spannable/b$a;

    sget-object v0, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    sput-object v0, Lcom/yandex/div/core/view2/spannable/b;->v:Lcom/yandex/div2/DivSizeUnit;

    return-void
.end method

.method public constructor <init>(IILcom/yandex/div2/DivTextAlignmentVertical;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/yandex/div2/DivSizeUnit;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Lcom/yandex/div2/DivLineStyle;Ljava/lang/Integer;Lof9;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/yandex/div2/DivLineStyle;)V
    .locals 3

    move-object v0, p0

    move-object v1, p8

    const-string v2, "fontSizeUnit"

    invoke-static {p8, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    iput v2, v0, Lcom/yandex/div/core/view2/spannable/b;->b:I

    move v2, p2

    iput v2, v0, Lcom/yandex/div/core/view2/spannable/b;->c:I

    move-object v2, p3

    iput-object v2, v0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    move v2, p4

    iput v2, v0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    move-object v2, p5

    iput-object v2, v0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    move-object v2, p6

    iput-object v2, v0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    move-object v2, p7

    iput-object v2, v0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    move-object v1, p9

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    move-object v1, p10

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    move-object v1, p11

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    move-object v1, p12

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/div2/DivSizeUnit;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/spannable/b;->v:Lcom/yandex/div2/DivSizeUnit;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/yandex/div/core/view2/spannable/b;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/yandex/div/core/view2/spannable/b;->b:I

    iget p1, p1, Lcom/yandex/div/core/view2/spannable/b;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/spannable/b;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/spannable/b;->b(Lcom/yandex/div/core/view2/spannable/b;)I

    move-result p0

    return p0
.end method

.method public final d()Lcom/yandex/div2/DivTextAlignmentVertical;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/core/view2/spannable/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/core/view2/spannable/b;

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->b:I

    iget v3, p1, Lcom/yandex/div/core/view2/spannable/b;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->c:I

    iget v3, p1, Lcom/yandex/div/core/view2/spannable/b;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    iget v3, p1, Lcom/yandex/div/core/view2/spannable/b;->e:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    iget-object p1, p1, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    if-eq p0, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/spannable/b;->c:I

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/yandex/div/core/view2/spannable/b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lof9;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    if-nez p0, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public final j()Lcom/yandex/div2/DivFontWeight;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    return-object p0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final l()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    return-object p0
.end method

.method public final m()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/spannable/b;->b:I

    return p0
.end method

.method public final o()Lcom/yandex/div2/DivLineStyle;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    return-object p0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public final q()Lof9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    return-object p0
.end method

.method public final r()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method public final s()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    return-object p0
.end method

.method public final t()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanData(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alignmentVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baselineOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFeatureSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSizeUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeightValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textShadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topOffsetStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topOffsetEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lcom/yandex/div2/DivLineStyle;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    return-object p0
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    sget-object v1, Lcom/yandex/div/core/view2/spannable/b;->v:Lcom/yandex/div2/DivSizeUnit;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(Lcom/yandex/div/core/view2/spannable/b;II)Lcom/yandex/div/core/view2/spannable/b;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "span"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div/core/view2/spannable/b;

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->d:Lcom/yandex/div2/DivTextAlignmentVertical;

    :cond_0
    move-object v6, v3

    iget v3, v1, Lcom/yandex/div/core/view2/spannable/b;->e:I

    if-nez v3, :cond_1

    iget v3, v0, Lcom/yandex/div/core/view2/spannable/b;->e:I

    :cond_1
    move v7, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->f:Ljava/lang/String;

    :cond_2
    move-object v8, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->g:Ljava/lang/String;

    :cond_3
    move-object v9, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->h:Ljava/lang/Integer;

    :cond_4
    move-object v10, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    sget-object v4, Lcom/yandex/div/core/view2/spannable/b;->v:Lcom/yandex/div2/DivSizeUnit;

    if-ne v3, v4, :cond_5

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->i:Lcom/yandex/div2/DivSizeUnit;

    :cond_5
    move-object v11, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->j:Lcom/yandex/div2/DivFontWeight;

    :cond_6
    move-object v12, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->k:Ljava/lang/Integer;

    :cond_7
    move-object v13, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->l:Ljava/lang/Double;

    :cond_8
    move-object v14, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->m:Ljava/lang/Integer;

    :cond_9
    move-object v15, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->n:Lcom/yandex/div2/DivLineStyle;

    :cond_a
    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->o:Ljava/lang/Integer;

    :cond_b
    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->p:Lof9;

    :cond_c
    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    if-nez v3, :cond_d

    iget-object v4, v0, Lcom/yandex/div/core/view2/spannable/b;->q:Ljava/lang/Integer;

    move-object/from16 v19, v4

    goto :goto_0

    :cond_d
    move-object/from16 v19, v3

    :goto_0
    if-eqz v3, :cond_e

    iget-object v4, v1, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    :goto_1
    move-object/from16 v20, v4

    goto :goto_2

    :cond_e
    iget-object v4, v0, Lcom/yandex/div/core/view2/spannable/b;->r:Ljava/lang/Integer;

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_f

    iget-object v3, v1, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    :goto_3
    move-object/from16 v21, v3

    goto :goto_4

    :cond_f
    iget-object v3, v0, Lcom/yandex/div/core/view2/spannable/b;->s:Ljava/lang/Integer;

    goto :goto_3

    :goto_4
    iget-object v1, v1, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    if-nez v1, :cond_10

    iget-object v0, v0, Lcom/yandex/div/core/view2/spannable/b;->t:Lcom/yandex/div2/DivLineStyle;

    move-object/from16 v22, v0

    goto :goto_5

    :cond_10
    move-object/from16 v22, v1

    :goto_5
    move-object v3, v2

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v3 .. v22}, Lcom/yandex/div/core/view2/spannable/b;-><init>(IILcom/yandex/div2/DivTextAlignmentVertical;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/yandex/div2/DivSizeUnit;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Lcom/yandex/div2/DivLineStyle;Ljava/lang/Integer;Lof9;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/yandex/div2/DivLineStyle;)V

    return-object v2
.end method
