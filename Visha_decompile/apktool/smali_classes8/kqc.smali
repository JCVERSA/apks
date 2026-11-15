.class public abstract Lkqc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lup1;->c:Lup1;

    sput-object v0, Lkqc;->a:Lh1;

    return-void
.end method

.method public static a(Ll1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lyu7;->u2:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MD5"

    return-object p0

    :cond_0
    sget-object v0, Ln47;->i:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA1"

    return-object p0

    :cond_1
    sget-object v0, Lcx6;->f:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SHA224"

    return-object p0

    :cond_2
    sget-object v0, Lcx6;->c:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SHA256"

    return-object p0

    :cond_3
    sget-object v0, Lcx6;->d:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "SHA384"

    return-object p0

    :cond_4
    sget-object v0, Lcx6;->e:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "SHA512"

    return-object p0

    :cond_5
    sget-object v0, Lnea;->c:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "RIPEMD128"

    return-object p0

    :cond_6
    sget-object v0, Lnea;->b:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "RIPEMD160"

    return-object p0

    :cond_7
    sget-object v0, Lnea;->d:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "RIPEMD256"

    return-object p0

    :cond_8
    sget-object v0, Lwl1;->b:Ll1;

    invoke-virtual {v0, p0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "GOST3411"

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Loa;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Loa;->p()Lx0;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lkqc;->a:Lh1;

    invoke-virtual {v1, v0}, Lp1;->r(Lx0;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object v1

    sget-object v2, Lyu7;->P1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lgn8;->n(Ljava/lang/Object;)Lgn8;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgn8;->m()Loa;

    move-result-object p0

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lkqc;->a(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "withRSAandMGF1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object v1

    sget-object v2, Lwqc;->n5:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object p0

    invoke-static {p0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object p0

    invoke-static {p0}, Lkqc;->a(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "withECDSA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/security/Signature;Lx0;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lkqc;->a:Lh1;

    invoke-virtual {v0, p1}, Lp1;->r(Lx0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    invoke-virtual {p1}, Lj1;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MGF1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_1
    const-class p1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception extracting parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException decoding parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
