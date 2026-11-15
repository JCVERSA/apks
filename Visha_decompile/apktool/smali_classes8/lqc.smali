.class public Llqc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnmb;

.field public b:Lik3;


# direct methods
.method public constructor <init>(Lcqc;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lcqc;Ls1a;)V
    .locals 7

    .line 2
    new-instance v3, Lmna;

    invoke-direct {v3, p3, p5}, Lmna;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lmna;

    invoke-direct {v4, p4, p5}, Lmna;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Llqc;-><init>(Lcqc;Ljava/math/BigInteger;Lmna;Lmna;Lcqc;Ls1a;)V

    return-void
.end method

.method public constructor <init>(Lcqc;Ljava/math/BigInteger;Lmna;Lmna;Lcqc;Ls1a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnmb;

    invoke-direct {v0}, Lnmb;-><init>()V

    iput-object v0, p0, Llqc;->a:Lnmb;

    new-instance v1, Lg1;

    invoke-direct {v1, p2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lnmb;->f(Lg1;)V

    iget-object p2, p0, Llqc;->a:Lnmb;

    invoke-virtual {p2, p1}, Lnmb;->e(Lcqc;)V

    iget-object p1, p0, Llqc;->a:Lnmb;

    invoke-virtual {p1, p3}, Lnmb;->h(Lmna;)V

    iget-object p1, p0, Llqc;->a:Lnmb;

    invoke-virtual {p1, p4}, Lnmb;->c(Lmna;)V

    iget-object p1, p0, Llqc;->a:Lnmb;

    invoke-virtual {p1, p5}, Lnmb;->i(Lcqc;)V

    iget-object p1, p0, Llqc;->a:Lnmb;

    invoke-virtual {p1, p6}, Lnmb;->j(Ls1a;)V

    new-instance p1, Lik3;

    invoke-direct {p1}, Lik3;-><init>()V

    iput-object p1, p0, Llqc;->b:Lik3;

    return-void
.end method

.method public static b(Lch1;Lj1;)[B
    .locals 2

    invoke-interface {p0}, Lch1;->a()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Lj1;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lch1;->c()[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Lnca;Loa;[B)Lms0;
    .locals 1

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    invoke-virtual {v0, p1}, Ly0;->a(Lx0;)V

    new-instance p0, Lnp1;

    invoke-direct {p0, p2}, Lnp1;-><init>([B)V

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    invoke-static {p0}, Lms0;->n(Ljava/lang/Object;)Lms0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lch1;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 6

    iget-object v0, p0, Llqc;->a:Lnmb;

    invoke-interface {p1}, Lch1;->b()Loa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnmb;->g(Loa;)V

    iget-object v0, p0, Llqc;->b:Lik3;

    invoke-virtual {v0}, Lik3;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llqc;->b:Lik3;

    sget-object v1, Lbk3;->N:Ll1;

    invoke-virtual {v0, v1}, Lik3;->d(Ll1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llqc;->b:Lik3;

    invoke-virtual {v0, v1}, Lik3;->c(Ll1;)Lbk3;

    move-result-object v0

    invoke-virtual {v0}, Lbk3;->q()Lx0;

    move-result-object v2

    invoke-static {v2}, Lj82;->n(Ljava/lang/Object;)Lj82;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Llqc;->b:Lik3;

    invoke-virtual {v0}, Lbk3;->r()Z

    move-result v0

    iget-object v4, p0, Llqc;->a:Lnmb;

    invoke-virtual {v4}, Lnmb;->a()Lnca;

    move-result-object v4

    iget-object v5, p0, Llqc;->b:Lik3;

    invoke-virtual {v5}, Lik3;->b()Lgk3;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lj82;->o(Lnca;Lgk3;)Lj82;

    move-result-object v2

    invoke-virtual {v3, v1, v0, v2}, Lik3;->f(Ll1;ZLx0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to replace deltaCertificateDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Llqc;->a:Lnmb;

    iget-object v1, p0, Llqc;->b:Lik3;

    invoke-virtual {v1}, Lik3;->b()Lgk3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnmb;->d(Lgk3;)V

    :cond_1
    :try_start_1
    iget-object p0, p0, Llqc;->a:Lnmb;

    invoke-virtual {p0}, Lnmb;->a()Lnca;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p1}, Lch1;->b()Loa;

    move-result-object v1

    invoke-static {p1, p0}, Llqc;->b(Lch1;Lj1;)[B

    move-result-object p1

    invoke-static {p0, v1, p1}, Llqc;->c(Lnca;Loa;[B)Lms0;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lms0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    const-string p1, "cannot produce certificate signature"

    invoke-static {p1, p0}, Lqe3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method
