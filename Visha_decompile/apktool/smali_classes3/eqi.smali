.class public final Leqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# instance fields
.field public final a:Lwqi;

.field public final b:Lo9i;

.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(Lwqi;Lo9i;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqi;->a:Lwqi;

    iput-object p2, p0, Leqi;->b:Lo9i;

    iput p3, p0, Leqi;->c:I

    iput-object p4, p0, Leqi;->d:[B

    return-void
.end method

.method public static b(Lrai;)Lq8i;
    .locals 8

    new-instance v0, Leqi;

    new-instance v1, Lxpi;

    invoke-virtual {p0}, Lrai;->e()Lfri;

    move-result-object v2

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfri;->d(Lt9i;)[B

    move-result-object v2

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->d()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lxpi;-><init>([BI)V

    new-instance v2, Lbri;

    new-instance v3, Lari;

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v4

    invoke-virtual {v4}, Lbbi;->g()Lyai;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lrai;->f()Lfri;

    move-result-object v6

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lfri;->d(Lt9i;)[B

    move-result-object v6

    const-string v7, "HMAC"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lari;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v4

    invoke-virtual {v4}, Lbbi;->e()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lbri;-><init>(Lqmi;I)V

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->e()I

    move-result v3

    invoke-virtual {p0}, Lrai;->b()Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Leqi;-><init>(Lwqi;Lo9i;I[B)V

    return-object v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 7

    iget-object v0, p0, Leqi;->d:[B

    array-length v1, p1

    iget v2, p0, Leqi;->c:I

    array-length v3, v0

    add-int v4, v2, v3

    if-lt v1, v4, :cond_3

    invoke-static {v0, p1}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, v1, v2

    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Leqi;->b:Lo9i;

    filled-new-array {p2, v2, v0}, [[B

    move-result-object p2

    invoke-static {p2}, Lcqi;->b([[B)[B

    move-result-object p2

    check-cast v1, Lbri;

    invoke-virtual {v1, p2}, Lbri;->c([B)[B

    move-result-object p2

    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Leqi;->a:Lwqi;

    invoke-interface {p0, v2}, Lwqi;->a([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid MAC"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Decryption failed (ciphertext too short)."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
