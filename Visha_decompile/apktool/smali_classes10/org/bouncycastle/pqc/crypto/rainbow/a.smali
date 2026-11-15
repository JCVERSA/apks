.class public Lorg/bouncycastle/pqc/crypto/rainbow/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:[[[S

.field public B:[[[S

.field public a:Ljava/security/SecureRandom;

.field public b:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

.field public c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public d:Lae1;

.field public e:I

.field public f:I

.field public g:I

.field public h:[B

.field public i:[B

.field public j:[[S

.field public k:[[S

.field public l:[[S

.field public m:[[S

.field public n:[[S

.field public o:[[[S

.field public p:[[[S

.field public q:[[[S

.field public r:[[[S

.field public s:[[[S

.field public t:[[[S

.field public u:[[[S

.field public v:[[[S

.field public w:[[[S

.field public x:[[[S

.field public y:[[[S

.field public z:[[[S


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lae1;

    invoke-direct {v0}, Lae1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->a:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->j()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->b:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->i:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->h:[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->i()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->g()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->h()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->v:[[[S

    invoke-static {v0}, Lon8;->b([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->o:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->p:[[[S

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->p:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->v:[[[S

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lae1;->b([[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->p:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v2, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    invoke-virtual {v3, v4, v5}, Lae1;->c([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->p:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v2, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->w:[[[S

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lae1;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    new-array v2, v1, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->r:[[[S

    new-array v2, v1, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->s:[[[S

    new-array v2, v1, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->t:[[[S

    new-array v1, v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->u:[[[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->x:[[[S

    invoke-static {v1}, Lon8;->b([[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->q:[[[S

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->x:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lae1;->b([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->r:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    invoke-virtual {v3, v1, v4}, Lae1;->c([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->r:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->y:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lae1;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->s:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->n:[[S

    invoke-virtual {v3, v1, v4}, Lae1;->c([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->y:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->m:[[S

    invoke-virtual {v1, v2, v3}, Lae1;->c([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->s:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lae1;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->s:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->z:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lae1;->a([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->x:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    invoke-virtual {v1, v2, v3}, Lae1;->c([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->y:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lae1;->a([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    invoke-virtual {v2, v3}, Lae1;->f([[S)[[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->t:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    invoke-virtual {v4, v2, v1}, Lae1;->c([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->t:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v1, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->A:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lae1;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->t:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lae1;->e([[S)[[S

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->u:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->s:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v2, v4}, Lae1;->c([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->y:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lae1;->f([[S)[[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->n:[[S

    invoke-virtual {v1, v2, v3}, Lae1;->c([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->u:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lae1;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->A:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lae1;->b([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->m:[[S

    invoke-virtual {v2, v1, v3}, Lae1;->c([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->u:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lae1;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->u:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->B:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lae1;->a([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->m:[[S

    invoke-virtual {v0, v1, v2}, Lae1;->c([[S[[S)[[S

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->l:[[S

    invoke-virtual {v1, v0, v2}, Lae1;->a([[S[[S)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->n:[[S

    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->h:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->a()Lsb2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLsb2;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->i:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->a()Lsb2;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLsb2;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f(Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/a;->b()V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e(Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->j:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->x:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->v:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lae1;->d([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->v:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->d:Lae1;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->j:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->y:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->w:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lae1;->d([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->w:[[[S

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/a;->a()V

    return-void
.end method

.method public d()Lorg/bouncycastle/pqc/crypto/rainbow/c;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->h:[B

    invoke-static {v1}, Lci;->f([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->h:[B

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->i:[B

    invoke-static {v1}, Lci;->f([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->i:[B

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/c;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->h:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->j:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->m:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->n:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->o:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->p:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->q:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->r:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->s:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->t:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->u:[[[S

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/c;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    return-object v1
.end method

.method public final e(Ljava/security/SecureRandom;)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v1, v2}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->v:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v0, v3}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->w:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    invoke-static {p1, v0, v1, v1, v2}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->x:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    invoke-static {p1, v0, v1, v4, v3}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->y:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    invoke-static {p1, v0, v1, v0, v3}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->z:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    invoke-static {p1, v0, v1, v1, v2}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->A:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    invoke-static {p1, v0, v1, v0, v3}, Lon8;->c(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->B:[[[S

    return-void
.end method

.method public final f(Ljava/security/SecureRandom;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    invoke-static {p1, v0, v1}, Lon8;->d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->j:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    invoke-static {p1, v0, v1}, Lon8;->d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->k:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->e:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    invoke-static {p1, v0, v1}, Lon8;->d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->l:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->f:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->g:I

    invoke-static {p1, v0, v1}, Lon8;->d(Ljava/security/SecureRandom;II)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/a;->m:[[S

    return-void
.end method
