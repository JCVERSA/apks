.class public Lfq0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljavax/crypto/Cipher;

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:Ljava/security/SecureRandom;

.field public final e:Lzk;

.field public f:Z

.field public g:Lwu8;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lzi;->g(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lzi;->a(Z)V

    :try_start_0
    invoke-static {}, Lfq0;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    xor-int/lit8 p2, p3, 0x1

    invoke-static {p2}, Lzi;->a(Z)V

    move-object v0, v2

    move-object v1, v0

    :goto_2
    iput-boolean p3, p0, Lfq0$b;->a:Z

    iput-object v0, p0, Lfq0$b;->b:Ljavax/crypto/Cipher;

    iput-object v1, p0, Lfq0$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_4

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_4
    iput-object v2, p0, Lfq0$b;->d:Ljava/security/SecureRandom;

    new-instance p2, Lzk;

    invoke-direct {p2, p1}, Lzk;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lfq0$b;->e:Lzk;

    return-void
.end method


# virtual methods
.method public a(Leq0;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfq0$b;->f:Z

    return-void
.end method

.method public b(Leq0;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfq0$b;->f:Z

    return-void
.end method

.method public final c(Leq0;I)I
    .locals 2

    iget p0, p1, Leq0;->a:I

    mul-int/lit8 p0, p0, 0x1f

    iget-object v0, p1, Leq0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Leq0;->c()Lp02;

    move-result-object p1

    invoke-static {p1}, Lyg1;->b(Lyg1;)J

    move-result-wide p1

    mul-int/lit8 p0, p0, 0x1f

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    long-to-int p1, p1

    :goto_0
    add-int/2addr p0, p1

    goto :goto_1

    :cond_0
    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p1}, Leq0;->c()Lp02;

    move-result-object p1

    invoke-virtual {p1}, Lp02;->hashCode()I

    move-result p1

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final d(ILjava/io/DataInputStream;)Leq0;
    .locals 2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    new-instance v1, Lzg1;

    invoke-direct {v1}, Lzg1;-><init>()V

    invoke-static {v1, p1, p2}, Lzg1;->g(Lzg1;J)Lzg1;

    sget-object p1, Lp02;->c:Lp02;

    invoke-virtual {p1, v1}, Lp02;->e(Lzg1;)Lp02;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lfq0;->b(Ljava/io/DataInputStream;)Lp02;

    move-result-object p1

    :goto_0
    new-instance p2, Leq0;

    invoke-direct {p2, p0, v0, p1}, Leq0;-><init>(ILjava/lang/String;Lp02;)V

    return-object p2
.end method

.method public delete()V
    .locals 0

    iget-object p0, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {p0}, Lzk;->a()V

    return-void
.end method

.method public final e(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .locals 10

    iget-object v0, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {v0}, Lzk;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {v4}, Lzk;->d()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ltz v2, :cond_9

    const/4 v5, 0x2

    if-le v2, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lfq0$b;->b:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    invoke-static {v4}, Lblb;->m(Ljava/io/Closeable;)V

    return v0

    :cond_2
    const/16 v6, 0x10

    :try_start_2
    new-array v6, v6, [B

    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lfq0$b;->b:Ljavax/crypto/Cipher;

    iget-object v8, p0, Lfq0$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v8}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Lfq0$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_5

    :catch_0
    move-object v2, v4

    goto :goto_6

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    iget-boolean v3, p0, Lfq0$b;->a:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lfq0$b;->f:Z

    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, v3, :cond_5

    invoke-virtual {p0, v2, v4}, Lfq0$b;->d(ILjava/io/DataInputStream;)Leq0;

    move-result-object v7

    iget-object v8, v7, Leq0;->b:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v7, Leq0;->a:I

    iget-object v9, v7, Leq0;->b:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v7, v2}, Lfq0$b;->c(Leq0;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    move p1, v1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    if-ne p0, v6, :cond_8

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lblb;->m(Ljava/io/Closeable;)V

    return v1

    :cond_8
    :goto_3
    invoke-static {v4}, Lblb;->m(Ljava/io/Closeable;)V

    return v0

    :cond_9
    :goto_4
    invoke-static {v4}, Lblb;->m(Ljava/io/Closeable;)V

    return v0

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v2}, Lblb;->m(Ljava/io/Closeable;)V

    :cond_a
    throw p0

    :catch_2
    :goto_6
    if-eqz v2, :cond_b

    invoke-static {v2}, Lblb;->m(Ljava/io/Closeable;)V

    :cond_b
    return v0
.end method

.method public exists()Z
    .locals 0

    iget-object p0, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {p0}, Lzk;->c()Z

    move-result p0

    return p0
.end method

.method public final f(Leq0;Ljava/io/DataOutputStream;)V
    .locals 0

    iget p0, p1, Leq0;->a:I

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p1, Leq0;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Leq0;->c()Lp02;

    move-result-object p0

    invoke-static {p0, p2}, Lfq0;->c(Lp02;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public final g(Ljava/util/HashMap;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {v1}, Lzk;->f()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lfq0$b;->g:Lwu8;

    if-nez v2, :cond_0

    new-instance v2, Lwu8;

    invoke-direct {v2, v1}, Lwu8;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lfq0$b;->g:Lwu8;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2, v1}, Lwu8;->a(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v1, p0, Lfq0$b;->g:Lwu8;

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v4, p0, Lfq0$b;->a:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v4, p0, Lfq0$b;->a:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    new-array v4, v4, [B

    iget-object v7, p0, Lfq0$b;->d:Ljava/security/SecureRandom;

    invoke-static {v7}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/SecureRandom;

    invoke-virtual {v7, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lfq0$b;->b:Ljavax/crypto/Cipher;

    invoke-static {v4}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget-object v8, p0, Lfq0$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v8}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v4, v6, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    iget-object v7, p0, Lfq0$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v6, v1, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leq0;

    invoke-virtual {p0, v1, v2}, Lfq0$b;->f(Leq0;Ljava/io/DataOutputStream;)V

    invoke-virtual {p0, v1, v3}, Lfq0$b;->c(Leq0;I)I

    move-result v1

    add-int/2addr v5, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {p0, v2}, Lzk;->b(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lblb;->m(Ljava/io/Closeable;)V

    return-void

    :goto_3
    invoke-static {v0}, Lblb;->m(Ljava/io/Closeable;)V

    throw p0
.end method

.method public initialize(J)V
    .locals 0

    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 1

    iget-boolean v0, p0, Lfq0$b;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0, p1, p2}, Lfq0$b;->e(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lfq0$b;->e:Lzk;

    invoke-virtual {p0}, Lzk;->a()V

    :cond_0
    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lfq0$b;->g(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfq0$b;->f:Z

    return-void
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .locals 1

    iget-boolean v0, p0, Lfq0$b;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lfq0$b;->storeFully(Ljava/util/HashMap;)V

    return-void
.end method
