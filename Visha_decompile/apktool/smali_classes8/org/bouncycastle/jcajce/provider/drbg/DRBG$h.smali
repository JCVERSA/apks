.class public Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

.field public final d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;

.field public final e:I

.field public final f:[B


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcv7;->j(J)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->f:[B

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->e()Lbb3;

    move-result-object v2

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->e:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;

    const/16 v3, 0x100

    invoke-direct {p1, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbb3;I)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;

    new-instance v0, Lly8;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$a;

    invoke-direct {v2, p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$a;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;)V

    invoke-direct {v0, v2}, Lly8;-><init>(Lbb3;)V

    const-string v2, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v2}, Lu0a;->e(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lly8;->e([B)Lly8;

    move-result-object v0

    new-instance v2, Lel4;

    new-instance v3, Lxx8;

    invoke-direct {v3}, Lxx8;-><init>()V

    invoke-direct {v2, v3}, Lel4;-><init>(Lsb2;)V

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;->b()[B

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lly8;->b(Lkx5;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->c:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    return-void
.end method

.method public static synthetic d(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;

    return-object p0
.end method


# virtual methods
.method public b()[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->e:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->c:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->f:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->reseed([B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h$b;->d()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->c:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;->e:I

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method
