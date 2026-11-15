.class public final Lorg/mozilla/classfile/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/mozilla/classfile/ClassFileWriter;

.field public b:Lorg/mozilla/javascript/UintMap;

.field public c:Lorg/mozilla/javascript/ObjToIntMap;

.field public d:Lorg/mozilla/javascript/ObjToIntMap;

.field public e:Lorg/mozilla/javascript/ObjToIntMap;

.field public f:Lorg/mozilla/javascript/ObjToIntMap;

.field public g:Lorg/mozilla/javascript/ObjToIntMap;

.field public h:I

.field public i:I

.field public j:Lorg/mozilla/javascript/UintMap;

.field public k:Lorg/mozilla/javascript/UintMap;

.field public l:[B


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->b:Lorg/mozilla/javascript/UintMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->c:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->d:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->e:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->f:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->g:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->j:Lorg/mozilla/javascript/UintMap;

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    iput-object p1, p0, Lorg/mozilla/classfile/a;->a:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/a;->i:I

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/mozilla/classfile/a;->l:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)S
    .locals 7

    iget-object v0, p0, Lorg/mozilla/classfile/a;->f:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v1, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/mozilla/classfile/a;->f:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v4, p0, Lorg/mozilla/classfile/a;->f:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, p1, v3}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    move v6, v3

    move-object v3, v0

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/a;->n(Ljava/lang/String;)S

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v4, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/a;->h:I

    aput-byte v2, v1, v4

    invoke-static {v0, v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/a;->h:I

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object v1, p0, Lorg/mozilla/classfile/a;->f:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v3, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/a;->f:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/a;->u(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p0, v0

    return p0
.end method

.method public b(D)I
    .locals 3

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p2, p1, 0x2

    iput p2, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, p1, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return p1
.end method

.method public c(F)I
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    invoke-static {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object p1, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/a;->i:I

    return p1
.end method

.method public d(I)I
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object p1, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    invoke-virtual {p1, v0, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/a;->i:I

    int-to-short p0, p1

    return p0
.end method

.method public e(J)I
    .locals 4

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    invoke-static {p1, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p2, p1, 0x2

    iput p2, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->d(I)I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->d(I)I

    move-result p0

    return p0

    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->c(F)I

    move-result p0

    return p0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/a;->e(J)I

    move-result p0

    return p0

    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/a;->b(D)I

    move-result p0

    return p0

    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->g(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    instance-of v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->k(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S

    move-result p0

    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->d(I)I

    move-result p0

    return p0
.end method

.method public g(Ljava/lang/String;)I
    .locals 5

    const v0, 0xffff

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->n(Ljava/lang/String;)S

    move-result p1

    and-int/2addr p1, v0

    iget-object v0, p0, Lorg/mozilla/classfile/a;->b:Lorg/mozilla/javascript/UintMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/a;->i:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v3, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/a;->h:I

    aput-byte v2, v1, v3

    invoke-static {p1, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object v1, p0, Lorg/mozilla/classfile/a;->b:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_0
    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    new-instance v0, Laq3;

    invoke-direct {v0, p1, p2, p3}, Laq3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/classfile/a;->d:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/a;->m(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->a(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    aput-byte v3, p3, v1

    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object p3, p0, Lorg/mozilla/classfile/a;->l:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget v1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object p1, p0, Lorg/mozilla/classfile/a;->d:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/a;->u(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p0, v1

    return p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 6

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/a;->m(Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->a(Ljava/lang/String;)S

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v2, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v3, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/a;->h:I

    const/16 v5, 0xb

    aput-byte v5, v2, v3

    invoke-static {v1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object v2, p0, Lorg/mozilla/classfile/a;->l:[B

    invoke-static {v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/a;->h:I

    new-instance v0, Laq3;

    invoke-direct {v0, p1, p2, p3}, Laq3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/a;->u(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    iget p2, p0, Lorg/mozilla/classfile/a;->i:I

    invoke-virtual {p1, p2, v5}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/a;->i:I

    int-to-short p0, p1

    return p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;I)S
    .locals 5

    new-instance v0, Lnf1;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p3, p1, p2}, Lnf1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/classfile/a;->g:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/a;->m(Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v2, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v3, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/a;->h:I

    aput-byte v1, v2, v3

    invoke-static {p3, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object v2, p0, Lorg/mozilla/classfile/a;->l:[B

    invoke-static {p1, v2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget v2, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object p1, p0, Lorg/mozilla/classfile/a;->g:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2, p2}, Lorg/mozilla/classfile/a;->u(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v2, v1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_0
    int-to-short p0, v2

    return p0
.end method

.method public k(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S
    .locals 6

    iget-object v0, p0, Lorg/mozilla/classfile/a;->g:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-byte v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v2, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/a;->h:I

    const/16 v4, 0xf

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    iget-byte v5, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    aput-byte v5, v1, v3

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/a;->h:I

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object v1, p0, Lorg/mozilla/classfile/a;->g:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v0, v4}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_2
    int-to-short p0, v0

    return p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    new-instance v0, Laq3;

    invoke-direct {v0, p1, p2, p3}, Laq3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/classfile/a;->e:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/a;->m(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->a(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    aput-byte v3, p3, v1

    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object p3, p0, Lorg/mozilla/classfile/a;->l:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget v1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object p1, p0, Lorg/mozilla/classfile/a;->e:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/a;->u(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p0, v1

    return p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/a;->n(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/a;->n(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/a;->o(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/a;->h:I

    const/16 v3, 0xc

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    invoke-static {p2, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object p1, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    iget p2, p0, Lorg/mozilla/classfile/a;->i:I

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/a;->i:I

    int-to-short p0, p1

    return p0
.end method

.method public n(Ljava/lang/String;)S
    .locals 13

    iget-object v0, p0, Lorg/mozilla/classfile/a;->c:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v3, 0xffff

    if-le v1, v3, :cond_0

    :goto_0
    move v6, v2

    goto/16 :goto_3

    :cond_0
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/a;->o(I)V

    iget v4, p0, Lorg/mozilla/classfile/a;->h:I

    iget-object v5, p0, Lorg/mozilla/classfile/a;->l:[B

    aput-byte v2, v5, v4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/mozilla/classfile/a;->a:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->getCharBuffer(I)[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    move v7, v6

    :goto_1
    if-eq v7, v1, :cond_3

    aget-char v8, v5, v7

    if-eqz v8, :cond_1

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_1

    iget-object v9, p0, Lorg/mozilla/classfile/a;->l:[B

    add-int/lit8 v10, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    move v4, v10

    goto :goto_2

    :cond_1
    const/16 v9, 0x7ff

    if-le v8, v9, :cond_2

    iget-object v9, p0, Lorg/mozilla/classfile/a;->l:[B

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v8, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lorg/mozilla/classfile/a;->l:[B

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v8, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 v5, v1, 0x3

    sub-int v5, v4, v5

    if-le v5, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v1, v1, 0x2

    int-to-byte v3, v5

    aput-byte v3, v0, v1

    iput v4, p0, Lorg/mozilla/classfile/a;->h:I

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/a;->i:I

    iget-object v1, p0, Lorg/mozilla/classfile/a;->c:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :goto_3
    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too big string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/a;->u(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p0, v0

    return p0
.end method

.method public final o(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/a;->h:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/mozilla/classfile/a;->l:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, p1

    if-le v3, v1, :cond_0

    add-int v1, v0, p1

    :cond_0
    new-array p1, v1, [B

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mozilla/classfile/a;->l:[B

    :cond_1
    return-void
.end method

.method public p(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/a;->j:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/UintMap;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public q(I)B
    .locals 1

    iget-object p0, p0, Lorg/mozilla/classfile/a;->k:Lorg/mozilla/javascript/UintMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public r(Ljava/lang/String;II)I
    .locals 2

    sub-int p0, p3, p2

    mul-int/lit8 p0, p0, 0x3

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    return p3

    :cond_0
    :goto_0
    if-eq p2, p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7ff

    if-ge p0, v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x3

    :goto_1
    if-gez v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return p3
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    const v3, 0xffff

    if-gt v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-le v0, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/classfile/a;->r(Ljava/lang/String;II)I

    move-result p0

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2
.end method

.method public u(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/a;->j:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/UintMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public v([BI)I
    .locals 3

    iget v0, p0, Lorg/mozilla/classfile/a;->i:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/a;->l:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mozilla/classfile/a;->h:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lorg/mozilla/classfile/a;->h:I

    add-int/2addr p2, p0

    return p2
.end method
