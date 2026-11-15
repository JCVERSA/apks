.class public abstract Lhn8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ll1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lyu7;->F1:Ll1;

    sget-object v1, Liqc;->m:Ll1;

    sget-object v2, Lyu7;->M1:Ll1;

    sget-object v3, Lyu7;->P1:Ll1;

    filled-new-array {v0, v1, v2, v3}, [Ll1;

    move-result-object v0

    sput-object v0, Lhn8;->a:[Ll1;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lrv3;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lrv3;-><init>([BI)V

    invoke-virtual {v0}, Lrv3;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lrv3;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lrv3;-><init>([B)V

    invoke-virtual {v0}, Lrv3;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
