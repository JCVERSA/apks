.class public Lorg/apache/commons/text/diff/StringsComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/diff/StringsComparator$Snake;
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/String;

.field private final right:Ljava/lang/String;

.field private final vDown:[I

.field private final vUp:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    return-void
.end method

.method private buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/apache/commons/text/diff/EditScript<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/diff/StringsComparator;->getMiddleSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p2, p4

    if-eq v1, v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p1, p3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v2

    sub-int v7, v1, v2

    move-object v3, p0

    move v4, p1

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result p1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result p3

    if-ge p1, p3, :cond_2

    new-instance p3, Lorg/apache/commons/text/diff/KeepCommand;

    iget-object v1, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p3, v1}, Lorg/apache/commons/text/diff/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p3}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/KeepCommand;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result p3

    sub-int v4, p1, p3

    move-object v1, p0

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V

    goto :goto_3

    :cond_3
    :goto_1
    move v0, p1

    move v1, p3

    :goto_2
    if-lt v0, p2, :cond_5

    if-ge v1, p4, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :cond_5
    :goto_4
    if-ge v0, p2, :cond_6

    if-ge v1, p4, :cond_6

    iget-object v2, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_6

    new-instance v2, Lorg/apache/commons/text/diff/KeepCommand;

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/text/diff/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/KeepCommand;)V

    add-int/lit8 v0, v0, 0x1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    sub-int v2, p2, p1

    sub-int v3, p4, p3

    if-le v2, v3, :cond_7

    new-instance v2, Lorg/apache/commons/text/diff/DeleteCommand;

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/text/diff/DeleteCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/DeleteCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    new-instance v2, Lorg/apache/commons/text/diff/InsertCommand;

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/text/diff/InsertCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/InsertCommand;)V

    goto :goto_5
.end method

.method private buildSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;
    .locals 4

    move v0, p1

    :goto_0
    sub-int v1, v0, p2

    if-ge v1, p4, :cond_0

    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/text/diff/StringsComparator$Snake;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/text/diff/StringsComparator$Snake;-><init>(III)V

    return-object p0
.end method

.method private getMiddleSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;
    .locals 11

    sub-int v0, p2, p1

    sub-int v1, p4, p3

    if-eqz v0, :cond_d

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v2, v0, v1

    add-int/2addr v1, v0

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_0
    div-int/lit8 v1, v1, 0x2

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v3, v1, 0x1

    aput p1, v0, v3

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v4, p2, 0x1

    aput v4, v0, v3

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_c

    neg-int v3, v0

    move v4, v3

    :goto_2
    if-gt v4, v0, :cond_6

    add-int v5, v4, v1

    if-eq v4, v3, :cond_3

    if-eq v4, v0, :cond_2

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v7, v5, -0x1

    aget v7, v6, v7

    add-int/lit8 v8, v5, 0x1

    aget v6, v6, v8

    if-ge v7, v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v7, v5, -0x1

    aget v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v5

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v7, v5, 0x1

    aget v7, v6, v7

    aput v7, v6, v5

    :goto_4
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    aget v6, v6, v5

    sub-int v7, v6, p1

    add-int/2addr v7, p3

    sub-int/2addr v7, v4

    :goto_5
    if-ge v6, p2, :cond_4

    if-ge v7, p4, :cond_4

    iget-object v8, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v6, v6, 0x1

    aput v6, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    rem-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    sub-int v6, v2, v0

    if-gt v6, v4, :cond_5

    add-int v6, v2, v0

    if-gt v4, v6, :cond_5

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    sub-int v7, v5, v2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    aget v5, v7, v5

    if-gt v6, v5, :cond_5

    add-int/2addr v4, p1

    sub-int/2addr v4, p3

    invoke-direct {p0, v6, v4, p2, p4}, Lorg/apache/commons/text/diff/StringsComparator;->buildSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_6
    sub-int v4, v2, v0

    move v5, v4

    :goto_6
    add-int v6, v2, v0

    if-gt v5, v6, :cond_b

    add-int v7, v5, v1

    sub-int/2addr v7, v2

    if-eq v5, v4, :cond_8

    if-eq v5, v6, :cond_7

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    add-int/lit8 v9, v7, -0x1

    aget v6, v6, v9

    if-gt v8, v6, :cond_7

    goto :goto_7

    :cond_7
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v8, v7, -0x1

    aget v8, v6, v8

    aput v8, v6, v7

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    add-int/lit8 v8, v8, -0x1

    aput v8, v6, v7

    :goto_8
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sub-int v8, v6, p1

    add-int/2addr v8, p3

    sub-int/2addr v8, v5

    :goto_9
    if-lt v6, p1, :cond_9

    if-lt v8, p3, :cond_9

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iget-object v10, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v10, v6, -0x1

    aput v6, v9, v7

    add-int/lit8 v8, v8, -0x1

    move v6, v10

    goto :goto_9

    :cond_9
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_a

    if-gt v3, v5, :cond_a

    if-gt v5, v0, :cond_a

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    aget v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/2addr v7, v2

    aget v7, v8, v7

    if-gt v6, v7, :cond_a

    add-int/2addr v5, p1

    sub-int/2addr v5, p3

    invoke-direct {p0, v6, v5, p2, p4}, Lorg/apache/commons/text/diff/StringsComparator;->buildSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object p0

    return-object p0

    :cond_a
    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal Error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getScript()Lorg/apache/commons/text/diff/EditScript;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/diff/EditScript<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/text/diff/EditScript;

    invoke-direct {v6}, Lorg/apache/commons/text/diff/EditScript;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V

    return-object v6
.end method
