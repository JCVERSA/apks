.class public final Lrx8$c0;
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
    .locals 15

    const-string p0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ls43;->a:Ljava/math/BigInteger;

    const-wide/16 v3, 0x7

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "0100000000000000000001B8FA16DFAB9ACA16B6B3"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    new-instance p0, Laa4;

    new-instance v0, Ljava/math/BigInteger;

    const-string v6, "9ba48cba5ebcb9b6bd33b92830b2a2e0e192f10a"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v8, "c39c6c3b3a36d7701b9c71a1f5804ae5d0003f4"

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ln19;

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "9162fbe73984472a0a9e"

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "-96341f1138933bc2f505"

    invoke-direct {v11, v12, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v9, v11}, [Ljava/math/BigInteger;

    move-result-object v11

    new-instance v9, Ljava/math/BigInteger;

    const-string v12, "127971af8721782ecffa3"

    invoke-direct {v9, v12, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v9, v12}, [Ljava/math/BigInteger;

    move-result-object v12

    new-instance v13, Ljava/math/BigInteger;

    const-string v9, "9162fbe73984472a0a9d0590"

    invoke-direct {v13, v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v9, "96341f1138933bc2f503fd44"

    invoke-direct {v14, v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0xb0

    move-object v9, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v7

    invoke-direct/range {v9 .. v14}, Ln19;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {p0, v0, v6, v8}, Laa4;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ln19;)V

    new-instance v7, Lt43$f;

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v7, p0}, Lrx8;->d(Lt43;Laa4;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v1

    const-string p0, "043B4C382CE37AA192A4019E763036F4F5DD4D7EBB938CF935318FDCED6BC28286531733C3F03C4FEE"

    invoke-static {v1, p0}, Lrx8;->c(Lt43;Ljava/lang/String;)Lsqc;

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
