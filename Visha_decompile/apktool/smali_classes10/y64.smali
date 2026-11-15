.class public Ly64;
.super Lt64;
.source "SourceFile"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>(Lw64;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lt64;-><init>(ZLw64;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Ly64;->d:[B

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 0

    iget-object p0, p0, Ly64;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    invoke-virtual {p0}, Ly64;->c()[B

    move-result-object p0

    return-object p0
.end method
