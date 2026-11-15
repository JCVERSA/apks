.class public Lcc2;
.super Lyb2;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lac2;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lyb2;-><init>(ZLac2;)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lci;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcc2;->d:[B

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcc2;->e:[B

    return-void
.end method

.method public constructor <init>(Lac2;[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lyb2;-><init>(ZLac2;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lcc2;->d:[B

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lcc2;->e:[B

    return-void
.end method

.method public static c([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()[B
    .locals 0

    iget-object p0, p0, Lcc2;->e:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcc2;->d:[B

    iget-object p0, p0, Lcc2;->e:[B

    invoke-static {v0, p0}, Lcc2;->c([B[B)[B

    move-result-object p0

    return-object p0
.end method
