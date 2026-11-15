.class public final Lorg/bouncycastle/pqc/crypto/xmss/g;
.super Lyqc;
.source "SourceFile"

# interfaces
.implements Ly93;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/g$b;
    }
.end annotation


# instance fields
.field public final d:Ljrc;

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B

.field public volatile i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->a(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)Ljrc;

    move-result-object v0

    invoke-virtual {v0}, Ljrc;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lyqc;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->a(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)Ljrc;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->d:Ljrc;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljrc;->h()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->b(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljrc;->b()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcv7;->a([BI)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lnrc;->l(IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v2, v1, v0}, Lnrc;->g([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->e:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lnrc;->g([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->f:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lnrc;->g([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->g:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lnrc;->g([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->h:[B

    add-int/2addr v1, v0

    array-length v0, v2

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lnrc;->g([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0, v1}, Lnrc;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->a(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)Ljrc;

    move-result-object p1

    invoke-virtual {p1}, Ljrc;->g()Ll1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->withWOTSDigest(Ll1;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "serialized BDS has wrong index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->c(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v2, v5

    if-ne v2, v0, :cond_3

    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->e:[B

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->e:[B

    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->d(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)[B

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v4, v2

    if-ne v4, v0, :cond_5

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->f:[B

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->f:[B

    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->e(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)[B

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v2, v4

    if-ne v2, v0, :cond_7

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->g:[B

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->g:[B

    :goto_4
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->f(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v6, v2

    if-ne v6, v0, :cond_9

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->h:[B

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of root needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->h:[B

    :goto_5
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->g(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_6
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    goto :goto_7

    :cond_b
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->h(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I

    move-result v0

    invoke-virtual {v3}, Ljrc;->b()I

    move-result v2

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_c

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/e;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/c;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->h(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Ljrc;[B[BLorg/bouncycastle/pqc/crypto/xmss/c;I)V

    goto :goto_6

    :cond_c
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v3}, Ljrc;->b()I

    move-result v2

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->h(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I

    move-result v1

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Ljrc;II)V

    goto :goto_6

    :goto_7
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->i(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I

    move-result v0

    if-ltz v0, :cond_e

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->i(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I

    move-result p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result p0

    if-ne p1, p0, :cond_d

    goto :goto_8

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxIndex set but not reflected in state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_8
    return-void

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/g$b;Lorg/bouncycastle/pqc/crypto/xmss/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/g;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)V

    return-void
.end method


# virtual methods
.method public c(I)Lorg/bouncycastle/pqc/crypto/xmss/g;
    .locals 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    monitor-enter p0

    int-to-long v1, p1

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->d:Ljrc;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>(Ljrc;)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->e:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->q([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->f:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->g:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->h:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result v5

    add-int/2addr v5, p1

    sub-int/2addr v5, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->d:Ljrc;

    invoke-virtual {v0}, Ljrc;->g()Ll1;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->withMaxIndex(ILl1;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->k(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->j()Lorg/bouncycastle/pqc/crypto/xmss/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->d:Ljrc;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->d()I

    move-result v4

    add-int/2addr v4, p1

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Ljrc;II)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/e;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/c;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, p1, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->g:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->e:[B

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getNextState([B[BLorg/bouncycastle/pqc/crypto/xmss/c;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot ask for a shard with 0 keys"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result p0

    return p0
.end method

.method public e()Ljrc;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->d:Ljrc;

    return-object p0
.end method

.method public f()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->d()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->d:Ljrc;

    invoke-virtual {v0}, Ljrc;->h()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcv7;->c(I[BI)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->e:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lnrc;->e([B[BI)V

    add-int/2addr v3, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->f:[B

    invoke-static {v1, v2, v3}, Lnrc;->e([B[BI)V

    add-int/2addr v3, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->g:[B

    invoke-static {v1, v2, v3}, Lnrc;->e([B[BI)V

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->h:[B

    invoke-static {v1, v0, v3}, Lnrc;->e([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0}, Lnrc;->p(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lci;->k([B[B)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->g()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
