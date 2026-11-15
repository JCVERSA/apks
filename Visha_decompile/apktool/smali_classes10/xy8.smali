.class public Lxy8;
.super Lty8;
.source "SourceFile"


# instance fields
.field public final d:Lvu7;


# direct methods
.method public constructor <init>(Lvy8;[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lty8;-><init>(ZLvy8;)V

    invoke-virtual {p1}, Lvy8;->b()I

    move-result p1

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lvu7;

    invoke-static {p2, v0, p1}, Lci;->q([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lci;->q([BII)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lvu7;-><init>([B[B)V

    iput-object v1, p0, Lxy8;->d:Lvu7;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object p0, p0, Lxy8;->d:Lvu7;

    iget-object v0, p0, Lvu7;->a:[B

    iget-object p0, p0, Lvu7;->b:[B

    invoke-static {v0, p0}, Lci;->k([B[B)[B

    move-result-object p0

    return-object p0
.end method
