.class public final Ly43$f;
.super Lrqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly43;
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

    const-string p0, "8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006F"

    invoke-static {p0}, Ly43;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string p0, "800000000000000000000000000000000000000000000000000000000000000149A1EC142565A545ACFDB77BD9D40CFA8B996712101BEA0EC6346C54374F25BD"

    invoke-static {p0}, Ly43;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    new-instance p0, Lt43$f;

    const-string v0, "8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006C"

    invoke-static {v0}, Ly43;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "687D1B459DC841457E3E06CF6F5E2517B97C7D614AF138BCBF85DC806C4B289F3E965D2DB1416D217F8B276FAD1AB69C50F78BEE1FA3106EFB8CCBC7C5140116"

    invoke-static {v0}, Ly43;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Ls43;->b:Ljava/math/BigInteger;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {p0}, Ly43;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v1

    sget-object p0, Ls43;->c:Ljava/math/BigInteger;

    const-string v0, "1A8F7EDA389B094C2C071E3647A8940F3C123B697578C213BE6DD9E6C8EC7335DCB228FD1EDF4A39152CBCAAF8C0398828041055F94CEEEC7E21340780FE41BD"

    invoke-static {v0}, Ly43;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v1, p0, v0}, Ly43;->c(Lt43;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lsqc;

    move-result-object v2

    new-instance p0, Lqqc;

    invoke-virtual {v1}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lt43;->o()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method
