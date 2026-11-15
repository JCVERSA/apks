.class public Ljavassist/compiler/ast/DoubleConst;
.super Ljavassist/compiler/ast/ASTree;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected type:I

.field protected value:D


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iput p3, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    return-void
.end method

.method private static compute(IDDI)Ljavassist/compiler/ast/DoubleConst;
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-double/2addr p1, p3

    goto :goto_0

    :cond_1
    mul-double/2addr p1, p3

    goto :goto_0

    :cond_2
    div-double/2addr p1, p3

    goto :goto_0

    :cond_3
    sub-double/2addr p1, p3

    goto :goto_0

    :cond_4
    rem-double/2addr p1, p3

    .line 5
    :goto_0
    new-instance p0, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {p0, p1, p2, p5}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object p0
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 8

    .line 1
    iget v0, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    const/16 v1, 0x195

    if-eq v0, v1, :cond_1

    iget v0, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x194

    :cond_1
    :goto_0
    move v7, v1

    .line 2
    iget-wide v3, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iget-wide v5, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    move v2, p1

    invoke-static/range {v2 .. v7}, Ljavassist/compiler/ast/DoubleConst;->compute(IDDI)Ljavassist/compiler/ast/DoubleConst;

    move-result-object p0

    return-object p0
.end method

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 6

    .line 3
    iget-wide v1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iget-wide v3, p2, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v3, v3

    iget v5, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Ljavassist/compiler/ast/DoubleConst;->compute(IDDI)Ljavassist/compiler/ast/DoubleConst;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lvfc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 1
    instance-of v0, p2, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljavassist/compiler/ast/IntConst;

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/DoubleConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p2, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/DoubleConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get()D
    .locals 2

    iget-wide v0, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    return p0
.end method

.method public set(D)V
    .locals 0

    iput-wide p1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
