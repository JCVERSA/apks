.class public Lrx6;
.super Lox6;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B


# direct methods
.method public constructor <init>(Lqx6;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lox6;-><init>(ZLqx6;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lrx6;->d:[B

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lrx6;->e:[B

    invoke-static {p4}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lrx6;->f:[B

    invoke-static {p5}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lrx6;->g:[B

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 0

    iget-object p0, p0, Lrx6;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lrx6;->g:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public e()[B
    .locals 0

    iget-object p0, p0, Lrx6;->e:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public f()[B
    .locals 0

    iget-object p0, p0, Lrx6;->f:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 5

    invoke-virtual {p0}, Lox6;->b()Lqx6;

    move-result-object v0

    invoke-virtual {v0}, Lqx6;->b()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lrx6;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lrx6;->e:[B

    iget-object v2, p0, Lrx6;->d:[B

    array-length v2, v2

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lrx6;->f:[B

    iget-object v2, p0, Lrx6;->d:[B

    array-length v2, v2

    iget-object v4, p0, Lrx6;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lrx6;->g:[B

    iget-object v2, p0, Lrx6;->d:[B

    array-length v2, v2

    iget-object v4, p0, Lrx6;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    iget-object p0, p0, Lrx6;->f:[B

    array-length p0, p0

    add-int/2addr v2, p0

    array-length p0, v1

    invoke-static {v1, v3, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
