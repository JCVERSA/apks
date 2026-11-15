.class public Lcom/pgl/ssdk/k;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private static a(Ljava/nio/ByteBuffer;)Lcom/pgl/ssdk/e;
    .locals 2
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pgl/ssdk/a;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/pgl/ssdk/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-static {p0}, Lcom/pgl/ssdk/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    invoke-static {p0}, Lcom/pgl/ssdk/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/pgl/ssdk/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v1, "X.509"

    .line 12
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 14
    :try_start_1
    new-instance v1, Lcom/pgl/ssdk/e;

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/pgl/ssdk/e;-><init>(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/pgl/ssdk/o;Lcom/pgl/ssdk/c$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pgl/ssdk/o;",
            "Lcom/pgl/ssdk/c$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/pgl/ssdk/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pgl/ssdk/f$a;
        }
    .end annotation

    const v0, 0x7109871a

    .line 1
    invoke-static {p0, p1, v0}, Lcom/pgl/ssdk/f;->a(Lcom/pgl/ssdk/o;Lcom/pgl/ssdk/c$a;I)Lcom/pgl/ssdk/h;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/pgl/ssdk/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/pgl/ssdk/k;->b(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/pgl/ssdk/e;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/pgl/ssdk/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Lcom/pgl/ssdk/a; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :catch_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :try_start_1
    invoke-static {p0}, Lcom/pgl/ssdk/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/pgl/ssdk/k;->a(Ljava/nio/ByteBuffer;)Lcom/pgl/ssdk/e;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/pgl/ssdk/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    return-object v0

    .line 37
    :cond_1
    return-object v1

    .line 38
    :catch_2
    return-object v0
.end method
