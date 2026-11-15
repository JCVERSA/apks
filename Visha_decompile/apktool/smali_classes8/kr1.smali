.class public abstract Lkr1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ll1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lwqc;->Y5:Ll1;

    sget-object v1, Ln47;->j:Ll1;

    sget-object v2, Lwqc;->Z5:Ll1;

    filled-new-array {v0, v1, v2}, [Ll1;

    move-result-object v0

    sput-object v0, Lkr1;->a:[Ll1;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lrv3;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lci;->m([B[B[B[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lrv3;-><init>([B)V

    invoke-virtual {v0}, Lrv3;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/security/interfaces/DSAParams;)Lhr1;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lhr1;

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lhr1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
