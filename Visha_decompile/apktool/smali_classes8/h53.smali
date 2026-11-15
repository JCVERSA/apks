.class public Lh53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public a:Lt43;

.field public b:[B

.field public c:Li53;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lt43;Li53;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh53;->a:Lt43;

    invoke-virtual {p2}, Li53;->y()Li53;

    move-result-object p1

    iput-object p1, p0, Lh53;->c:Li53;

    iput-object p3, p0, Lh53;->d:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lh53;->e:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lh53;->b:[B

    return-void
.end method

.method public constructor <init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh53;->a:Lt43;

    invoke-virtual {p2}, Li53;->y()Li53;

    move-result-object p1

    iput-object p1, p0, Lh53;->c:Li53;

    iput-object p3, p0, Lh53;->d:Ljava/math/BigInteger;

    iput-object p4, p0, Lh53;->e:Ljava/math/BigInteger;

    iput-object p5, p0, Lh53;->b:[B

    return-void
.end method


# virtual methods
.method public a()Lt43;
    .locals 0

    iget-object p0, p0, Lh53;->a:Lt43;

    return-object p0
.end method

.method public b()Li53;
    .locals 0

    iget-object p0, p0, Lh53;->c:Li53;

    return-object p0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lh53;->e:Ljava/math/BigInteger;

    return-object p0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lh53;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public e()[B
    .locals 0

    iget-object p0, p0, Lh53;->b:[B

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lh53;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lh53;

    invoke-virtual {p0}, Lh53;->a()Lt43;

    move-result-object v0

    invoke-virtual {p1}, Lh53;->a()Lt43;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt43;->k(Lt43;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh53;->b()Li53;

    move-result-object p0

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object p1

    invoke-virtual {p0, p1}, Li53;->e(Li53;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lh53;->a()Lt43;

    move-result-object v0

    invoke-virtual {v0}, Lt43;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lh53;->b()Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
