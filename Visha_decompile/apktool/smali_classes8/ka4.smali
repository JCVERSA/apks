.class public Lka4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lma4;


# instance fields
.field public a:Lqa4;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lka4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ll1;

    invoke-direct {v0, p1}, Ll1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lia4;->a(Ll1;)Lja4;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lia4;->b(Ljava/lang/String;)Ll1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lia4;->a(Ll1;)Lja4;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lqa4;

    invoke-virtual {v0}, Lja4;->n()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lja4;->o()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lja4;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lqa4;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lka4;->a:Lqa4;

    iput-object p1, p0, Lka4;->b:Ljava/lang/String;

    iput-object p2, p0, Lka4;->c:Ljava/lang/String;

    iput-object p3, p0, Lka4;->d:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no key parameter set for passed in name/OID."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lqa4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lka4;->a:Lqa4;

    sget-object p1, Lwl1;->p:Ll1;

    invoke-virtual {p1}, Ll1;->B()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lka4;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lka4;->d:Ljava/lang/String;

    return-void
.end method

.method public static e(Lpa4;)Lka4;
    .locals 3

    invoke-virtual {p0}, Lpa4;->n()Ll1;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lka4;

    invoke-virtual {p0}, Lpa4;->p()Ll1;

    move-result-object v1

    invoke-virtual {v1}, Ll1;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpa4;->m()Ll1;

    move-result-object v2

    invoke-virtual {v2}, Ll1;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpa4;->n()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lka4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lpa4;->m()Ll1;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lka4;

    invoke-virtual {p0}, Lpa4;->p()Ll1;

    move-result-object v1

    invoke-virtual {v1}, Ll1;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpa4;->m()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lka4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lka4;

    invoke-virtual {p0}, Lpa4;->p()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lka4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lqa4;
    .locals 0

    iget-object p0, p0, Lka4;->a:Lqa4;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lka4;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lka4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lka4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lka4;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lka4;

    iget-object v0, p0, Lka4;->a:Lqa4;

    iget-object v2, p1, Lka4;->a:Lqa4;

    invoke-virtual {v0, v2}, Lqa4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lka4;->c:Ljava/lang/String;

    iget-object v2, p1, Lka4;->c:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lka4;->d:Ljava/lang/String;

    iget-object p1, p1, Lka4;->d:Ljava/lang/String;

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lka4;->a:Lqa4;

    invoke-virtual {v0}, Lqa4;->hashCode()I

    move-result v0

    iget-object v1, p0, Lka4;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lka4;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method
