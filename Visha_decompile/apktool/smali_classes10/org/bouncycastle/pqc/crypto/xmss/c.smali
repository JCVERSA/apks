.class public final Lorg/bouncycastle/pqc/crypto/xmss/c;
.super Lorg/bouncycastle/pqc/crypto/xmss/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/c$b;
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/e;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->i(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->e:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->j(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->f:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->k(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/c$b;Lorg/bouncycastle/pqc/crypto/xmss/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/c;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)V

    return-void
.end method


# virtual methods
.method public d()[B
    .locals 3

    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/xmss/e;->d()[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcv7;->c(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->f:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcv7;->c(I[BI)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->g:I

    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcv7;->c(I[BI)V

    return-object v0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->f:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->g:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c;->e:I

    return p0
.end method
