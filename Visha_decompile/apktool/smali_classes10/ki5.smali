.class public Lki5;
.super Lii5;
.source "SourceFile"


# instance fields
.field public final c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public final d:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public final e:[B

.field public final f:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lii5;-><init>(Z)V

    iput-object p1, p0, Lki5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iput-object p2, p0, Lki5;->d:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-static {p4}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lki5;->e:[B

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lki5;->f:[B

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lki5;
    .locals 4

    instance-of v0, p0, Lki5;

    if-eqz v0, :cond_0

    check-cast p0, Lki5;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->e(I)Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->f(I)Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lki5;

    invoke-direct {p0, v0, v1, v3, v2}, Lki5;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lki5;->b(Ljava/lang/Object;)Lki5;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p0

    :cond_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lfz9;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lki5;->b(Ljava/lang/Object;)Lki5;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()[B
    .locals 2

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v0

    iget-object v1, p0, Lki5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v0

    iget-object v1, p0, Lki5;->d:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v0

    iget-object v1, p0, Lki5;->e:[B

    invoke-virtual {v0, v1}, Lzc1;->d([B)Lzc1;

    move-result-object v0

    iget-object p0, p0, Lki5;->f:[B

    invoke-virtual {v0, p0}, Lzc1;->d([B)Lzc1;

    move-result-object p0

    invoke-virtual {p0}, Lzc1;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lki5;

    iget-object v1, p0, Lki5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iget-object v2, p1, Lki5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lki5;->d:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iget-object v2, p1, Lki5;->d:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lki5;->e:[B

    iget-object v2, p1, Lki5;->e:[B

    invoke-static {v1, v2}, Lci;->b([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lki5;->f:[B

    iget-object p1, p1, Lki5;->f:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public getEncoded()[B
    .locals 0

    invoke-virtual {p0}, Lki5;->c()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lki5;->c:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lki5;->d:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lki5;->e:[B

    invoke-static {v1}, Lci;->v([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lki5;->f:[B

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
