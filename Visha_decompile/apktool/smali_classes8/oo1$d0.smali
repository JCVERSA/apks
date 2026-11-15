.class public final Loo1$d0;
.super Lrqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loo1;
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
    .locals 0

    new-instance p0, Lv69;

    invoke-direct {p0}, Lv69;-><init>()V

    invoke-static {p0}, Loo1;->a(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 7

    const-string v0, "3045AE6FC8422F64ED579528D38120EAE12196D5"

    invoke-static {v0}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v2

    const-string p0, "04188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF101207192B95FFC8DA78631011ED6B24CDD573F977A11E794811"

    invoke-static {v2, p0}, Loo1;->b(Lt43;Ljava/lang/String;)Lsqc;

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
