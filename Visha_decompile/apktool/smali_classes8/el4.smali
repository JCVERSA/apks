.class public Lel4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# static fields
.field public static h:Ljava/util/Hashtable;


# instance fields
.field public a:Lsb2;

.field public b:I

.field public c:I

.field public d:Len6;

.field public e:Len6;

.field public f:[B

.field public g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lel4;->h:Ljava/util/Hashtable;

    const/16 v1, 0x20

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GOST3411"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MD2"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const/16 v1, 0x40

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MD4"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "MD5"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "RIPEMD128"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "RIPEMD160"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "SHA-1"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "SHA-224"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "SHA-256"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const/16 v2, 0x80

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SHA-384"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v3, "SHA-512"

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "Tiger"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    const-string v2, "Whirlpool"

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsb2;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lel4;->f(Lsb2;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lel4;-><init>(Lsb2;I)V

    return-void
.end method

.method public constructor <init>(Lsb2;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel4;->a:Lsb2;

    invoke-interface {p1}, Lsb2;->g()I

    move-result p1

    iput p1, p0, Lel4;->b:I

    iput p2, p0, Lel4;->c:I

    new-array v0, p2, [B

    iput-object v0, p0, Lel4;->f:[B

    add-int/2addr p2, p1

    new-array p1, p2, [B

    iput-object p1, p0, Lel4;->g:[B

    return-void
.end method

.method public static f(Lsb2;)I
    .locals 3

    instance-of v0, p0, Lzj3;

    if-eqz v0, :cond_0

    check-cast p0, Lzj3;

    invoke-interface {p0}, Lzj3;->h()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lel4;->h:Ljava/util/Hashtable;

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h([BIB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-byte v1, p0, v0

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 5

    iget-object v0, p0, Lel4;->a:Lsb2;

    iget-object v1, p0, Lel4;->g:[B

    iget v2, p0, Lel4;->c:I

    invoke-interface {v0, v1, v2}, Lsb2;->a([BI)I

    iget-object v0, p0, Lel4;->e:Len6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lel4;->a:Lsb2;

    check-cast v2, Len6;

    invoke-interface {v2, v0}, Len6;->e(Len6;)V

    iget-object v0, p0, Lel4;->a:Lsb2;

    iget-object v2, p0, Lel4;->g:[B

    iget v3, p0, Lel4;->c:I

    invoke-interface {v0}, Lsb2;->g()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lsb2;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lel4;->a:Lsb2;

    iget-object v2, p0, Lel4;->g:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lsb2;->update([BII)V

    :goto_0
    iget-object v0, p0, Lel4;->a:Lsb2;

    invoke-interface {v0, p1, p2}, Lsb2;->a([BI)I

    move-result p1

    iget p2, p0, Lel4;->c:I

    :goto_1
    iget-object v0, p0, Lel4;->g:[B

    array-length v2, v0

    if-ge p2, v2, :cond_1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lel4;->d:Len6;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lel4;->a:Lsb2;

    check-cast p0, Len6;

    invoke-interface {p0, p2}, Len6;->e(Len6;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lel4;->a:Lsb2;

    iget-object p0, p0, Lel4;->f:[B

    array-length v0, p0

    invoke-interface {p2, p0, v1, v0}, Lsb2;->update([BII)V

    :goto_2
    return p1
.end method

.method public b(B)V
    .locals 0

    iget-object p0, p0, Lel4;->a:Lsb2;

    invoke-interface {p0, p1}, Lsb2;->b(B)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lel4;->a:Lsb2;

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lel4;->b:I

    return p0
.end method

.method public e(Lcw0;)V
    .locals 3

    iget-object v0, p0, Lel4;->a:Lsb2;

    invoke-interface {v0}, Lsb2;->reset()V

    check-cast p1, Lsf5;

    invoke-virtual {p1}, Lsf5;->a()[B

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lel4;->c:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lel4;->a:Lsb2;

    invoke-interface {v1, p1, v2, v0}, Lsb2;->update([BII)V

    iget-object p1, p0, Lel4;->a:Lsb2;

    iget-object v0, p0, Lel4;->f:[B

    invoke-interface {p1, v0, v2}, Lsb2;->a([BI)I

    iget v0, p0, Lel4;->b:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lel4;->f:[B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p1, p0, Lel4;->f:[B

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lel4;->g:[B

    iget v1, p0, Lel4;->c:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lel4;->f:[B

    iget v0, p0, Lel4;->c:I

    const/16 v1, 0x36

    invoke-static {p1, v0, v1}, Lel4;->h([BIB)V

    iget-object p1, p0, Lel4;->g:[B

    iget v0, p0, Lel4;->c:I

    const/16 v1, 0x5c

    invoke-static {p1, v0, v1}, Lel4;->h([BIB)V

    iget-object p1, p0, Lel4;->a:Lsb2;

    instance-of v0, p1, Len6;

    if-eqz v0, :cond_2

    check-cast p1, Len6;

    invoke-interface {p1}, Len6;->d()Len6;

    move-result-object p1

    iput-object p1, p0, Lel4;->e:Len6;

    check-cast p1, Lsb2;

    iget-object v0, p0, Lel4;->g:[B

    iget v1, p0, Lel4;->c:I

    invoke-interface {p1, v0, v2, v1}, Lsb2;->update([BII)V

    :cond_2
    iget-object p1, p0, Lel4;->a:Lsb2;

    iget-object v0, p0, Lel4;->f:[B

    array-length v1, v0

    invoke-interface {p1, v0, v2, v1}, Lsb2;->update([BII)V

    iget-object p1, p0, Lel4;->a:Lsb2;

    instance-of v0, p1, Len6;

    if-eqz v0, :cond_3

    check-cast p1, Len6;

    invoke-interface {p1}, Len6;->d()Len6;

    move-result-object p1

    iput-object p1, p0, Lel4;->d:Len6;

    :cond_3
    return-void
.end method

.method public g()Lsb2;
    .locals 0

    iget-object p0, p0, Lel4;->a:Lsb2;

    return-object p0
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lel4;->a:Lsb2;

    invoke-interface {p0, p1, p2, p3}, Lsb2;->update([BII)V

    return-void
.end method
