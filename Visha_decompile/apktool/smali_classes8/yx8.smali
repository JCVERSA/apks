.class public Lyx8;
.super Lmf5;
.source "SourceFile"

# interfaces
.implements Lcsc;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lyx8;->r(I)I

    move-result p1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lmf5;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public static r(I)I
    .locals 3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'bitStrength\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not supported for SHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a([BI)I
    .locals 1

    invoke-virtual {p0}, Lyx8;->g()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lyx8;->f([BII)I

    move-result p0

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmf5;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lyx8;->s([BII)I

    move-result p1

    invoke-virtual {p0}, Lmf5;->reset()V

    return p1
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lmf5;->f:I

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public m()Lxl1;
    .locals 1

    iget-object v0, p0, Lmf5;->a:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0}, Lylb;->b(Lsb2;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lxl1;

    move-result-object p0

    return-object p0
.end method

.method public s([BII)I
    .locals 4

    iget-boolean v0, p0, Lmf5;->g:Z

    if-nez v0, :cond_0

    const/16 v0, 0xf

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lmf5;->l(II)V

    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lmf5;->q([BIJ)V

    return p3
.end method
