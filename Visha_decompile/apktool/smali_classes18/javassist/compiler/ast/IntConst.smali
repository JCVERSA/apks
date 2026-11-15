.class public Ljavassist/compiler/ast/IntConst;
.super Ljavassist/compiler/ast/ASTree;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected type:I

.field protected value:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    iput p3, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return-void
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 4

    .line 8
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v0, v0

    .line 9
    iget-wide v2, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    const/16 p0, 0x25

    if-eq p1, p0, :cond_4

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_3

    const/16 p0, 0x2f

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-double/2addr v0, v2

    goto :goto_0

    :cond_1
    mul-double/2addr v0, v2

    goto :goto_0

    :cond_2
    div-double/2addr v0, v2

    goto :goto_0

    :cond_3
    sub-double/2addr v0, v2

    goto :goto_0

    :cond_4
    rem-double/2addr v0, v2

    .line 10
    :goto_0
    new-instance p0, Ljavassist/compiler/ast/DoubleConst;

    iget p1, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    invoke-direct {p0, v0, v1, p1}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object p0
.end method

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;
    .locals 7

    .line 1
    iget v0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    .line 2
    iget v1, p2, Ljavassist/compiler/ast/IntConst;->type:I

    const/16 v2, 0x193

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x192

    .line 3
    :cond_2
    :goto_0
    iget-wide v3, p0, Ljavassist/compiler/ast/IntConst;->value:J

    .line 4
    iget-wide v5, p2, Ljavassist/compiler/ast/IntConst;->value:J

    const/16 p0, 0x25

    if-eq p1, p0, :cond_d

    const/16 p0, 0x26

    if-eq p1, p0, :cond_c

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_b

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_a

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_9

    const/16 p0, 0x2f

    if-eq p1, p0, :cond_8

    const/16 p0, 0x5e

    if-eq p1, p0, :cond_7

    const/16 p0, 0x7c

    if-eq p1, p0, :cond_6

    const/16 p0, 0x16c

    if-eq p1, p0, :cond_5

    const/16 p0, 0x16e

    if-eq p1, p0, :cond_4

    const/16 p0, 0x172

    if-eq p1, p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    long-to-int p0, v5

    ushr-long p0, v3, p0

    goto :goto_2

    :cond_4
    long-to-int p0, v5

    shr-long p0, v3, p0

    goto :goto_2

    :cond_5
    long-to-int p0, v5

    shl-long p0, v3, p0

    goto :goto_2

    :cond_6
    or-long p0, v3, v5

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_7
    xor-long p0, v3, v5

    goto :goto_1

    .line 5
    :cond_8
    div-long p0, v3, v5

    goto :goto_1

    :cond_9
    sub-long p0, v3, v5

    goto :goto_1

    :cond_a
    add-long p0, v3, v5

    goto :goto_1

    :cond_b
    mul-long p0, v3, v5

    goto :goto_1

    :cond_c
    and-long p0, v3, v5

    goto :goto_1

    .line 6
    :cond_d
    rem-long p0, v3, v5

    goto :goto_1

    .line 7
    :goto_2
    new-instance p2, Ljavassist/compiler/ast/IntConst;

    invoke-direct {p2, p0, p1, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object p2
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

    instance-of v0, p2, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    check-cast p2, Ljavassist/compiler/ast/IntConst;

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_1

    check-cast p2, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get()J
    .locals 2

    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return p0
.end method

.method public set(J)V
    .locals 0

    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
