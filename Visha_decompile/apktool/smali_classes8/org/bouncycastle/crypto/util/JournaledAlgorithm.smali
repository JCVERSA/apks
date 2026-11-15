.class public Lorg/bouncycastle/crypto/util/JournaledAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly93;
.implements Ljava/io/Serializable;


# instance fields
.field private transient algID:Loa;

.field private transient journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;


# direct methods
.method public constructor <init>(Loa;Lorg/bouncycastle/crypto/util/JournalingSecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Loa;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JournalingSecureRandom passed to JournaledAlgorithm is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "AlgorithmIdentifier passed to JournaledAlgorithm is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-static {}, Lzl1;->d()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;-><init>([BLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>([BLjava/security/SecureRandom;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->initFromEncoding([BLjava/security/SecureRandom;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "random passed to JournaledAlgorithm is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "encoding passed to JournaledAlgorithm is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getState(Ljava/io/File;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/util/JournaledAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;

    invoke-static {v0}, Lfz9;->c(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;-><init>([BLjava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "File for loading is null in JournaledAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getState(Ljava/io/InputStream;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/util/JournaledAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;

    invoke-static {v0}, Lfz9;->c(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;-><init>([BLjava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "stream for loading is null in JournaledAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initFromEncoding([BLjava/security/SecureRandom;)V
    .locals 2

    invoke-static {p1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Loa;

    new-instance v0, Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p1

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/util/JournalingSecureRandom;-><init>([BLjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {}, Lzl1;->d()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->initFromEncoding([BLjava/security/SecureRandom;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Loa;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Loa;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object p0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/JournalingSecureRandom;->getFullTranscript()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getJournalingSecureRandom()Lorg/bouncycastle/crypto/util/JournalingSecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    return-object p0
.end method

.method public storeState(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->storeState(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file for storage is null in JournaledAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeState(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "output stream for storage is null in JournaledAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
