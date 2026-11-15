.class public Lsh5;
.super Lph5;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B


# direct methods
.method public constructor <init>(Lrh5;[B)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lph5;-><init>(ZLrh5;)V

    invoke-virtual {p1}, Lrh5;->a()Lmh5;

    move-result-object p1

    invoke-virtual {p1}, Lmh5;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lci;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lsh5;->d:[B

    invoke-virtual {p1}, Lmh5;->d()I

    move-result v0

    invoke-virtual {p1}, Lmh5;->c()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x20

    invoke-static {p2, v0, v1}, Lci;->q([BII)[B

    move-result-object v1

    iput-object v1, p0, Lsh5;->g:[B

    invoke-virtual {p1}, Lmh5;->c()I

    move-result p1

    add-int/lit8 p1, p1, -0x20

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x20

    invoke-static {p2, v0, p1}, Lci;->q([BII)[B

    move-result-object v1

    iput-object v1, p0, Lsh5;->h:[B

    add-int/lit8 v1, v0, 0x40

    invoke-static {p2, p1, v1}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lsh5;->e:[B

    add-int/lit8 v0, v0, 0x60

    invoke-static {p2, v1, v0}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lsh5;->f:[B

    return-void
.end method


# virtual methods
.method public c()Luh5;
    .locals 3

    new-instance v0, Luh5;

    invoke-virtual {p0}, Lph5;->b()Lrh5;

    move-result-object v1

    iget-object v2, p0, Lsh5;->g:[B

    iget-object p0, p0, Lsh5;->h:[B

    invoke-direct {v0, v1, v2, p0}, Luh5;-><init>(Lrh5;[B[B)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lsh5;->d:[B

    iget-object v1, p0, Lsh5;->g:[B

    iget-object v2, p0, Lsh5;->h:[B

    iget-object v3, p0, Lsh5;->e:[B

    iget-object p0, p0, Lsh5;->f:[B

    filled-new-array {v0, v1, v2, v3, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lci;->n([[B)[B

    move-result-object p0

    return-object p0
.end method
