.class public Ldi5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public final b:[B

.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldi5;->a:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iput-object p2, p0, Ldi5;->b:[B

    iput p3, p0, Ldi5;->c:I

    iput-object p4, p0, Ldi5;->d:[B

    return-void
.end method


# virtual methods
.method public a()Lia9;
    .locals 4

    new-instance v0, Lia9;

    iget-object v1, p0, Ldi5;->b:[B

    iget-object v2, p0, Ldi5;->d:[B

    iget-object v3, p0, Ldi5;->a:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-static {v3}, Ltb2;->c(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lsb2;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lia9;-><init>([B[BLsb2;)V

    iget p0, p0, Ldi5;->c:I

    invoke-virtual {v0, p0}, Lia9;->e(I)V

    return-object v0
.end method

.method public b()[B
    .locals 0

    iget-object p0, p0, Ldi5;->b:[B

    return-object p0
.end method

.method public c()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 0

    iget-object p0, p0, Ldi5;->a:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Ldi5;->c:I

    return p0
.end method

.method public e(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;[[B)Lgi5;
    .locals 7

    iget-object v0, p0, Ldi5;->a:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->d()I

    move-result v0

    new-array v5, v0, [B

    invoke-virtual {p0}, Ldi5;->a()Lia9;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lia9;->d(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lia9;->a([BZ)V

    iget-object v0, p0, Ldi5;->a:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-static {v0}, Ltb2;->c(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lsb2;

    move-result-object v4

    invoke-virtual {p0}, Ldi5;->b()[B

    move-result-object v0

    invoke-static {v0, v4}, Lfn5;->a([BLsb2;)V

    invoke-virtual {p0}, Ldi5;->d()I

    move-result v0

    invoke-static {v0, v4}, Lfn5;->c(ILsb2;)V

    const/16 v0, -0x7e7f

    invoke-static {v0, v4}, Lfn5;->b(SLsb2;)V

    invoke-static {v5, v4}, Lfn5;->a([BLsb2;)V

    new-instance v0, Lgi5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgi5;-><init>(Ldi5;Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lsb2;[B[[B)V

    return-object v0
.end method
