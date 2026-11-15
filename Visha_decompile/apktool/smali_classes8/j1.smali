.class public abstract Lj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0;
.implements Ly93;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lx0;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lx0;

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1;->s(Lp1;)Z

    move-result p0

    return p0
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lp1;->p(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    invoke-virtual {p0}, Lp1;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract j()Lp1;
.end method

.method public k(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lp1;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lp1;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
