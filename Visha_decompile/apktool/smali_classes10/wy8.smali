.class public Lwy8;
.super Lty8;
.source "SourceFile"


# instance fields
.field public final d:Lay8;

.field public final e:Lvu7;


# direct methods
.method public constructor <init>(Lvy8;[B)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lty8;-><init>(ZLvy8;)V

    invoke-virtual {p1}, Lvy8;->b()I

    move-result p1

    array-length v0, p2

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lay8;

    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lci;->q([BII)[B

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-static {p2, p1, v3}, Lci;->q([BII)[B

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lay8;-><init>([B[B)V

    iput-object v0, p0, Lwy8;->d:Lay8;

    new-instance v0, Lvu7;

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p2, v3, p1}, Lci;->q([BII)[B

    move-result-object v2

    invoke-static {p2, p1, v1}, Lci;->q([BII)[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lvu7;-><init>([B[B)V

    iput-object v0, p0, Lwy8;->e:Lvu7;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "private key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lvy8;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lty8;-><init>(ZLvy8;)V

    new-instance p1, Lay8;

    invoke-direct {p1, p2, p3}, Lay8;-><init>([B[B)V

    iput-object p1, p0, Lwy8;->d:Lay8;

    new-instance p1, Lvu7;

    invoke-direct {p1, p4, p5}, Lvu7;-><init>([B[B)V

    iput-object p1, p0, Lwy8;->e:Lvu7;

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object p0, p0, Lwy8;->e:Lvu7;

    iget-object v0, p0, Lvu7;->a:[B

    iget-object p0, p0, Lvu7;->b:[B

    invoke-static {v0, p0}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 3

    iget-object v0, p0, Lwy8;->d:Lay8;

    iget-object v1, v0, Lay8;->a:[B

    iget-object v0, v0, Lay8;->b:[B

    iget-object p0, p0, Lwy8;->e:Lvu7;

    iget-object v2, p0, Lvu7;->a:[B

    iget-object p0, p0, Lvu7;->b:[B

    filled-new-array {v1, v0, v2, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lci;->n([[B)[B

    move-result-object p0

    return-object p0
.end method
