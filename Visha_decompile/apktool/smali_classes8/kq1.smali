.class public Lkq1;
.super Ljavax/crypto/spec/DHParameterSpec;
.source "SourceFile"


# instance fields
.field public final a:Ljava/math/BigInteger;

.field public final b:Ljava/math/BigInteger;

.field public final c:I

.field public d:Lrq1;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lkq1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3, p6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lkq1;->a:Ljava/math/BigInteger;

    iput-object p4, p0, Lkq1;->b:Ljava/math/BigInteger;

    iput p5, p0, Lkq1;->c:I

    return-void
.end method

.method public constructor <init>(Lnq1;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lnq1;->f()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lnq1;->g()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lnq1;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lnq1;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lnq1;->e()I

    move-result v5

    invoke-virtual {p1}, Lnq1;->d()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkq1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    invoke-virtual {p1}, Lnq1;->h()Lrq1;

    move-result-object p1

    iput-object p1, p0, Lkq1;->d:Lrq1;

    return-void
.end method


# virtual methods
.method public a()Lnq1;
    .locals 9

    new-instance v8, Lnq1;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lkq1;->a:Ljava/math/BigInteger;

    iget v4, p0, Lkq1;->c:I

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Lkq1;->b:Ljava/math/BigInteger;

    iget-object v7, p0, Lkq1;->d:Lrq1;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnq1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lrq1;)V

    return-object v8
.end method

.method public b()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lkq1;->a:Ljava/math/BigInteger;

    return-object p0
.end method
