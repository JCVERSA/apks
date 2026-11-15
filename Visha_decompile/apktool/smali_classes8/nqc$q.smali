.class public final Lnqc$q;
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

    const-string p0, "ffffffffffffffffffffffff7a62d031c83f4294f640ec13"

    invoke-static {p0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    new-instance p0, Lt43$f;

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v0, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "22123dc2395a05caa7423daeccc94760a7d462256bd56916"

    invoke-static {v0}, Lnqc;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {p0}, Lnqc;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 7

    const-string v0, "c469684435deb378c4b65ca9591e2a5763059a2e"

    invoke-static {v0}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v2

    const-string p0, "027d29778100c65a1da1783716588dce2b8b4aee8e228f1896"

    invoke-static {v2, p0}, Lnqc;->c(Lt43;Ljava/lang/String;)Lsqc;

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
