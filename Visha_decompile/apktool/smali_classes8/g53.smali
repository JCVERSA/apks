.class public Lg53;
.super Lu43;
.source "SourceFile"


# instance fields
.field public m:Ll1;


# direct methods
.method public constructor <init>(Ll1;Lqqc;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lu43;-><init>(Lqqc;)V

    iput-object p1, p0, Lg53;->m:Ll1;

    return-void
.end method

.method public constructor <init>(Ll1;Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Lg53;->m:Ll1;

    return-void
.end method


# virtual methods
.method public i()Ll1;
    .locals 0

    iget-object p0, p0, Lg53;->m:Ll1;

    return-object p0
.end method
