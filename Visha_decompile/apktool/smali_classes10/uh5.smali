.class public Luh5;
.super Lph5;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lrh5;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lph5;-><init>(ZLrh5;)V

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    invoke-static {p2, v0, p1}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Luh5;->d:[B

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Luh5;->e:[B

    return-void
.end method

.method public constructor <init>(Lrh5;[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lph5;-><init>(ZLrh5;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Luh5;->d:[B

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Luh5;->e:[B

    return-void
.end method

.method public static c([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Luh5;->d:[B

    iget-object p0, p0, Luh5;->e:[B

    invoke-static {v0, p0}, Luh5;->c([B[B)[B

    move-result-object p0

    return-object p0
.end method
