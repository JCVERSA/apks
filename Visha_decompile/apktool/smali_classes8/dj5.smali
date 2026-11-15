.class public Ldj5;
.super Ls1;
.source "SourceFile"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ls1;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ldj5;->d:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'encoded\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A(I)Lx0;
    .locals 0

    invoke-virtual {p0}, Ldj5;->H()V

    invoke-super {p0, p1}, Ls1;->A(I)Lx0;

    move-result-object p0

    return-object p0
.end method

.method public B()Ljava/util/Enumeration;
    .locals 1

    invoke-virtual {p0}, Ldj5;->I()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lbj5;

    invoke-direct {p0, v0}, Lbj5;-><init>([B)V

    return-object p0

    :cond_0
    invoke-super {p0}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public C()Ls0;
    .locals 0

    invoke-virtual {p0}, Ldj5;->v()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-virtual {p0}, Ls1;->C()Ls0;

    move-result-object p0

    return-object p0
.end method

.method public D()La1;
    .locals 0

    invoke-virtual {p0}, Ldj5;->v()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-virtual {p0}, Ls1;->D()La1;

    move-result-object p0

    return-object p0
.end method

.method public E()Lm1;
    .locals 0

    invoke-virtual {p0}, Ldj5;->v()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-virtual {p0}, Ls1;->E()Lm1;

    move-result-object p0

    return-object p0
.end method

.method public F()Lt1;
    .locals 0

    invoke-virtual {p0}, Ldj5;->v()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-virtual {p0}, Ls1;->F()Lt1;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized H()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldj5;->d:[B

    if-eqz v0, :cond_0

    new-instance v0, Lf1;

    iget-object v1, p0, Ldj5;->d:[B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf1;-><init>([BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lf1;->G()Ly0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ly0;->g()[Lx0;

    move-result-object v0

    iput-object v0, p0, Ls1;->b:[Lx0;

    const/4 v0, 0x0

    iput-object v0, p0, Ldj5;->d:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed ASN.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized I()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldj5;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Ldj5;->H()V

    invoke-super {p0}, Ls1;->hashCode()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ldj5;->H()V

    invoke-super {p0}, Ls1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public n(Lo1;Z)V
    .locals 1

    invoke-virtual {p0}, Ldj5;->I()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 p0, 0x30

    invoke-virtual {p1, p2, p0, v0}, Lo1;->o(ZI[B)V

    return-void

    :cond_0
    invoke-super {p0}, Ls1;->v()Lp1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lp1;->n(Lo1;Z)V

    return-void
.end method

.method public q(Z)I
    .locals 1

    invoke-virtual {p0}, Ldj5;->I()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length p0, v0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ls1;->v()Lp1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1;->q(Z)I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Ldj5;->H()V

    invoke-super {p0}, Ls1;->size()I

    move-result p0

    return p0
.end method

.method public u()Lp1;
    .locals 0

    invoke-virtual {p0}, Ldj5;->H()V

    invoke-super {p0}, Ls1;->u()Lp1;

    move-result-object p0

    return-object p0
.end method

.method public v()Lp1;
    .locals 0

    invoke-virtual {p0}, Ldj5;->H()V

    invoke-super {p0}, Ls1;->v()Lp1;

    move-result-object p0

    return-object p0
.end method
