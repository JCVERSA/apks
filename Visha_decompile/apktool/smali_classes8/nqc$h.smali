.class public final Lnqc$h;
.super Lrqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnqc;
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

    const-string p0, "1555555555555555555555555555553C6F2885259C31E3FCDF154624522D"

    invoke-static {p0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance p0, Lt43$e;

    const-string v0, "4230017757A767FAE42398569B746325D45313AF0766266479B75654E65F"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "5037EA654196CFF0CD82B2C14A2FCF2E3FF8775285B545722F03EACDB74B"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v1, 0xef

    const/16 v2, 0x24

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lt43$e;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lnqc;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v1

    const-string p0, "0228F9D04E900069C8DC47A08534FE76D2B900B7D7EF31F5709F200C4CA205"

    invoke-static {v1, p0}, Lnqc;->c(Lt43;Ljava/lang/String;)Lsqc;

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
