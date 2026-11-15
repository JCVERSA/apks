.class public Lbc2;
.super Lyb2;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B

.field public final i:[B

.field public final j:[B


# direct methods
.method public constructor <init>(Lac2;[BLcc2;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lyb2;-><init>(ZLac2;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lac2;->a(Ljava/security/SecureRandom;)Lwb2;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p2, v1, v2}, Lci;->q([BII)[B

    move-result-object v1

    iput-object v1, p0, Lbc2;->d:[B

    const/16 v1, 0x40

    invoke-static {p2, v2, v1}, Lci;->q([BII)[B

    move-result-object v2

    iput-object v2, p0, Lbc2;->e:[B

    const/16 v2, 0x80

    invoke-static {p2, v1, v2}, Lci;->q([BII)[B

    move-result-object v1

    iput-object v1, p0, Lbc2;->f:[B

    invoke-virtual {p1}, Lwb2;->b()I

    move-result v1

    invoke-virtual {p1}, Lwb2;->c()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    invoke-static {p2, v2, v1}, Lci;->q([BII)[B

    move-result-object v2

    iput-object v2, p0, Lbc2;->g:[B

    invoke-virtual {p1}, Lwb2;->a()I

    move-result v2

    invoke-virtual {p1}, Lwb2;->c()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-static {p2, v1, v2}, Lci;->q([BII)[B

    move-result-object v1

    iput-object v1, p0, Lbc2;->h:[B

    invoke-virtual {p1}, Lwb2;->a()I

    move-result p1

    mul-int/lit16 p1, p1, 0x1a0

    add-int/2addr p1, v2

    invoke-static {p2, v2, p1}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->i:[B

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcc2;->d()[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->j:[B

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lbc2;->j:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(Lac2;[B[B[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lyb2;-><init>(ZLac2;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->d:[B

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->e:[B

    invoke-static {p4}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->f:[B

    invoke-static {p5}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->g:[B

    invoke-static {p6}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->h:[B

    invoke-static {p7}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->i:[B

    invoke-static {p8}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbc2;->j:[B

    return-void
.end method


# virtual methods
.method public c()Lcc2;
    .locals 3

    new-instance v0, Lcc2;

    invoke-virtual {p0}, Lyb2;->b()Lac2;

    move-result-object v1

    iget-object v2, p0, Lbc2;->d:[B

    iget-object p0, p0, Lbc2;->j:[B

    invoke-direct {v0, v1, v2, p0}, Lcc2;-><init>(Lac2;[B[B)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    iget-object v0, p0, Lbc2;->d:[B

    iget-object v1, p0, Lbc2;->e:[B

    iget-object v2, p0, Lbc2;->f:[B

    iget-object v3, p0, Lbc2;->g:[B

    iget-object v4, p0, Lbc2;->h:[B

    iget-object v5, p0, Lbc2;->i:[B

    filled-new-array/range {v0 .. v5}, [[B

    move-result-object p0

    invoke-static {p0}, Lci;->n([[B)[B

    move-result-object p0

    return-object p0
.end method
