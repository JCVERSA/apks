.class public Lorg/bouncycastle/pqc/crypto/rainbow/c;
.super Lmn8;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:[[S

.field public final g:[[S

.field public final h:[[S

.field public final i:[[S

.field public final j:[[[S

.field public final k:[[[S

.field public final l:[[[S

.field public final m:[[[S

.field public final n:[[[S

.field public final o:[[[S

.field public final p:[[[S

.field public final q:[B

.field public r:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1}, Lmn8;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/b;)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->j()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b()I

    move-result v3

    invoke-static {v2, v6, v3}, Lci;->q([BII)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->q:[B

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->c()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2, v4, v5}, Lci;->q([BII)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->e:[B

    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/a;

    invoke-direct {v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/a;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B[B)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d()Lorg/bouncycastle/pqc/crypto/rainbow/c;

    move-result-object v1

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->r:[B

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->r:[B

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->f:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->f:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->g:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->g:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->h:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->h:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->i:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->i:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->j:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->j:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->k:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->k:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->l:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->l:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->m:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->m:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->n:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->n:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->o:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->o:[[[S

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;->p:[[[S

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->p:[[[S

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->i()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->g()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->h()I

    move-result v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v7, v9, v3

    aput v5, v9, v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->f:[[S

    new-array v11, v8, [I

    aput v5, v11, v3

    aput v4, v11, v6

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[S

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->g:[[S

    new-array v12, v8, [I

    aput v7, v12, v3

    aput v4, v12, v6

    invoke-static {v10, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[S

    iput-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->i:[[S

    new-array v13, v8, [I

    aput v7, v13, v3

    aput v5, v13, v6

    invoke-static {v10, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[S

    iput-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->h:[[S

    const/4 v14, 0x3

    new-array v15, v14, [I

    aput v4, v15, v8

    aput v4, v15, v3

    aput v5, v15, v6

    invoke-static {v10, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[S

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->j:[[[S

    new-array v6, v14, [I

    aput v5, v6, v8

    aput v4, v6, v3

    const/4 v3, 0x0

    aput v5, v6, v3

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[S

    iput-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->k:[[[S

    new-array v3, v14, [I

    aput v4, v3, v8

    const/16 v16, 0x1

    aput v4, v3, v16

    const/4 v8, 0x0

    aput v7, v3, v8

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->l:[[[S

    new-array v8, v14, [I

    const/16 v17, 0x2

    aput v5, v8, v17

    aput v4, v8, v16

    const/4 v14, 0x0

    aput v7, v8, v14

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[S

    iput-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->m:[[[S

    const/4 v14, 0x3

    new-array v1, v14, [I

    aput v7, v1, v17

    aput v4, v1, v16

    const/4 v4, 0x0

    aput v7, v1, v4

    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->n:[[[S

    new-array v4, v14, [I

    aput v5, v4, v17

    aput v5, v4, v16

    const/4 v14, 0x0

    aput v7, v4, v14

    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->o:[[[S

    const/4 v14, 0x3

    new-array v14, v14, [I

    aput v7, v14, v17

    aput v5, v14, v16

    const/4 v5, 0x0

    aput v7, v14, v5

    invoke-static {v10, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    iput-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->p:[[[S

    const/4 v10, 0x0

    iput-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->q:[B

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->c()I

    move-result v10

    invoke-static {v2, v5, v10}, Lci;->q([BII)[B

    move-result-object v10

    iput-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->e:[B

    array-length v5, v10

    invoke-static {v9, v2, v5}, Lon8;->h([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v11, v2, v5}, Lon8;->h([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v12, v2, v5}, Lon8;->h([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v13, v2, v5}, Lon8;->h([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, 0x1

    invoke-static {v15, v2, v5, v9}, Lon8;->i([[[S[BIZ)I

    move-result v10

    add-int/2addr v5, v10

    const/4 v10, 0x0

    invoke-static {v6, v2, v5, v10}, Lon8;->i([[[S[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3, v2, v5, v9}, Lon8;->i([[[S[BIZ)I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v8, v2, v5, v10}, Lon8;->i([[[S[BIZ)I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v1, v2, v5, v10}, Lon8;->i([[[S[BIZ)I

    move-result v1

    add-int/2addr v5, v1

    invoke-static {v4, v2, v5, v9}, Lon8;->i([[[S[BIZ)I

    move-result v1

    add-int/2addr v5, v1

    invoke-static {v7, v2, v5, v10}, Lon8;->i([[[S[BIZ)I

    move-result v1

    add-int/2addr v5, v1

    array-length v1, v2

    invoke-static {v2, v5, v1}, Lci;->q([BII)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->r:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmn8;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->q:[B

    iput-object p14, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->r:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->e:[B

    invoke-static {p3}, Lon8;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->f:[[S

    invoke-static {p4}, Lon8;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->g:[[S

    invoke-static {p5}, Lon8;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->h:[[S

    invoke-static {p6}, Lon8;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->i:[[S

    invoke-static {p7}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->j:[[[S

    invoke-static {p8}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->k:[[[S

    invoke-static {p9}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->l:[[[S

    invoke-static {p10}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->m:[[[S

    invoke-static {p11}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->n:[[[S

    invoke-static {p12}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->o:[[[S

    invoke-static {p13}, Lon8;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->p:[[[S

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 4

    invoke-virtual {p0}, Lmn8;->b()Lorg/bouncycastle/pqc/crypto/rainbow/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->j()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->q:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->e:[B

    invoke-static {v0, p0}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->e:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->f:[[S

    invoke-static {v1}, Lon8;->e([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->g:[[S

    invoke-static {v1}, Lon8;->e([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->i:[[S

    invoke-static {v1}, Lon8;->e([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->h:[[S

    invoke-static {v1}, Lon8;->e([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->j:[[[S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lon8;->f([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->k:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lon8;->f([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->l:[[[S

    invoke-static {v1, v2}, Lon8;->f([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->m:[[[S

    invoke-static {v1, v3}, Lon8;->f([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->n:[[[S

    invoke-static {v1, v3}, Lon8;->f([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->o:[[[S

    invoke-static {v1, v2}, Lon8;->f([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lci;->k([B[B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->p:[[[S

    invoke-static {p0, v3}, Lon8;->f([[[SZ)[B

    move-result-object p0

    invoke-static {v0, p0}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->r:[B

    return-object p0
.end method

.method public getEncoded()[B
    .locals 2

    invoke-virtual {p0}, Lmn8;->b()Lorg/bouncycastle/pqc/crypto/rainbow/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->j()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->q:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->e:[B

    invoke-static {v0, p0}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/c;->c()[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;->r:[B

    invoke-static {v0, p0}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0
.end method
