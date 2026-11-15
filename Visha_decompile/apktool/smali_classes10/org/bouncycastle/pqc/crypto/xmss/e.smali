.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/e$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->a(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->a:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->b(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->b:J

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->c(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->c:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->d(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->a:I

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->b:J

    return-wide v0
.end method

.method public d()[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->a:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcv7;->c(I[BI)V

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->b:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcv7;->i(J[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->c:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lcv7;->c(I[BI)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->d:I

    const/16 v1, 0x1c

    invoke-static {p0, v0, v1}, Lcv7;->c(I[BI)V

    return-object v0
.end method
