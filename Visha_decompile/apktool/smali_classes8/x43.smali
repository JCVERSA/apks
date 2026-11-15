.class public abstract Lx43;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ld53;
    .locals 9

    invoke-static {p0}, Ly43;->i(Ljava/lang/String;)Lqqc;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ll1;

    invoke-direct {v0, p0}, Ll1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly43;->k(Ll1;)Lqqc;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ld53;

    invoke-virtual {v0}, Lqqc;->m()Lt43;

    move-result-object v4

    invoke-virtual {v0}, Lqqc;->n()Li53;

    move-result-object v5

    invoke-virtual {v0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lqqc;->r()[B

    move-result-object v8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Ld53;-><init>(Ljava/lang/String;Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
