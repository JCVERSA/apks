.class public Lgi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb2;


# instance fields
.field public final a:[B

.field public final b:Ldi5;

.field public final c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public final d:[[B

.field public final e:Ljava/lang/Object;

.field public volatile f:Lsb2;


# direct methods
.method public constructor <init>(Ldi5;Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lsb2;[B[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgi5;->b:Ldi5;

    iput-object p2, p0, Lgi5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iput-object p3, p0, Lgi5;->f:Lsb2;

    iput-object p4, p0, Lgi5;->a:[B

    iput-object p5, p0, Lgi5;->d:[[B

    const/4 p1, 0x0

    iput-object p1, p0, Lgi5;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 0

    iget-object p0, p0, Lgi5;->f:Lsb2;

    invoke-interface {p0, p1, p2}, Lsb2;->a([BI)I

    move-result p0

    return p0
.end method

.method public b(B)V
    .locals 0

    iget-object p0, p0, Lgi5;->f:Lsb2;

    invoke-interface {p0, p1}, Lsb2;->b(B)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgi5;->f:Lsb2;

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lgi5;->a:[B

    return-object p0
.end method

.method public e()[[B
    .locals 0

    iget-object p0, p0, Lgi5;->d:[[B

    return-object p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lgi5;->f:Lsb2;

    invoke-interface {p0}, Lsb2;->g()I

    move-result p0

    return p0
.end method

.method public i()Ldi5;
    .locals 0

    iget-object p0, p0, Lgi5;->b:Ldi5;

    return-object p0
.end method

.method public j()[B
    .locals 3

    const/16 v0, 0x22

    new-array v0, v0, [B

    iget-object v1, p0, Lgi5;->f:Lsb2;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lsb2;->a([BI)I

    const/4 v1, 0x0

    iput-object v1, p0, Lgi5;->f:Lsb2;

    return-object v0
.end method

.method public k()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .locals 0

    iget-object p0, p0, Lgi5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lgi5;->f:Lsb2;

    invoke-interface {p0}, Lsb2;->reset()V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lgi5;->f:Lsb2;

    invoke-interface {p0, p1, p2, p3}, Lsb2;->update([BII)V

    return-void
.end method
