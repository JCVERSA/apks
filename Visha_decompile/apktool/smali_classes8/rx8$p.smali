.class public final Lrx8$p;
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

    const-string p0, "0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string p0, "010000000000000000000000015AAB561B005413CCD4EE99D5"

    invoke-static {p0}, Lrx8;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance p0, Lt43$e;

    const/16 v1, 0xc1

    const/16 v2, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lt43$e;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lrx8;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 7

    const-string v0, "10B7B4D696E676875615175137C8A16FD0DA2211"

    invoke-static {v0}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v2

    const-string p0, "0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

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
