.class public final Ldri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# instance fields
.field public final a:Lagi;

.field public final b:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lagi;

    invoke-direct {v0, p1}, Lagi;-><init>([B)V

    iput-object v0, p0, Ldri;->a:Lagi;

    iput-object p2, p0, Ldri;->b:[B

    return-void
.end method

.method public static b(Liei;)Lq8i;
    .locals 3

    new-instance v0, Ldri;

    invoke-virtual {p0}, Liei;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-virtual {p0}, Liei;->b()Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ldri;-><init>([B[B)V

    return-object v0
.end method

.method private final c([B[B)[B
    .locals 3

    array-length v0, p1

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/16 v1, 0x18

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v0, v0, -0x18

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p0, p0, Ldri;->a:Lagi;

    invoke-virtual {p0, p1, v2, p2}, Lyfi;->b(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 2

    iget-object v0, p0, Ldri;->b:[B

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Ldri;->c([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldri;->c([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
