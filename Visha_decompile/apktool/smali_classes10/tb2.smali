.class public abstract Ltb2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltb2$a;
    }
.end annotation


# direct methods
.method public static a(Ll1;)Lsb2;
    .locals 3

    sget-object v0, Lcx6;->c:Ll1;

    invoke-virtual {p0, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lux8;

    invoke-direct {p0}, Lux8;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcx6;->t:Ll1;

    invoke-virtual {p0, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lyx8;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lyx8;-><init>(I)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ll1;I)Lsb2;
    .locals 2

    invoke-static {p0}, Ltb2;->a(Ll1;)Lsb2;

    move-result-object v0

    sget-object v1, Lcx6;->t:Ll1;

    invoke-virtual {v1, p0}, Lp1;->s(Lp1;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Lsb2;->g()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Ltb2$a;

    invoke-direct {p0, v0, p1}, Ltb2$a;-><init>(Lsb2;I)V

    return-object p0
.end method

.method public static c(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lsb2;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->b()Ll1;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->d()I

    move-result p0

    invoke-static {v0, p0}, Ltb2;->b(Ll1;I)Lsb2;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;)Lsb2;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->b()Ll1;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->d()I

    move-result p0

    invoke-static {v0, p0}, Ltb2;->b(Ll1;I)Lsb2;

    move-result-object p0

    return-object p0
.end method
