.class public final Lnqc$w;
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
    .locals 9

    const-string p0, "03FFFFFFFFFFFFFFFFFFFDF64DE1151ADBB78F10A7"

    invoke-static {p0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance p0, Lt43$e;

    const-string v0, "0108B39E77C4B108BED981ED0E890E117C511CF072"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v0, "0667ACEB38AF4E488C407433FFAE4F1C811638DF20"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lt43$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lnqc;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v1

    const-string p0, "030024266E4EB5106D0A964D92C4860E2671DB9B6CC5"

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
