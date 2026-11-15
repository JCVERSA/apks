.class public final Lzfi;
.super Lwfi;
.source "SourceFile"


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lwfi;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final b([II)[I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [I

    iget-object p0, p0, Lwfi;->a:[I

    invoke-static {p0, p1}, Lufi;->d([I[I)[I

    move-result-object p0

    invoke-static {v0, p0}, Lufi;->b([I[I)V

    const/16 p0, 0xc

    aput p2, v0, p0

    const/16 p0, 0xd

    const/4 p2, 0x0

    aput p2, v0, p0

    const/4 p0, 0x4

    aget p0, p1, p0

    const/16 p2, 0xe

    aput p0, v0, p2

    const/4 p0, 0x5

    aget p0, p1, p0

    const/16 p1, 0xf

    aput p0, v0, p1

    return-object v0

    :cond_0
    mul-int/lit8 v0, v0, 0x20

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
