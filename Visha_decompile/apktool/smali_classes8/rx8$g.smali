.class public final Lrx8$g;
.super Lrqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrqc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lt43;
    .locals 7

    const-string p0, "003088250CA6E7C7FE649CE85820F7"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "00E8BEE4D3E2260744188BE0E9C723"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string p0, "0100000000000000D9CCEC8A39E56F"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance p0, Lt43$e;

    const/16 v1, 0x71

    const/16 v2, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lt43$e;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lrx8;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 7

    const-string v0, "10E723AB14D696E6768756151756FEBF8FCB49A9"

    invoke-static {v0}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v2

    const-string p0, "04009D73616F35F4AB1407D73562C10F00A52830277958EE84D1315ED31886"

    invoke-static {v2, p0}, Lrx8;->c(Lt43;Ljava/lang/String;)Lsqc;

    move-result-object v3

    new-instance p0, Lqqc;

    invoke-virtual {v2}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lt43;->o()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method
