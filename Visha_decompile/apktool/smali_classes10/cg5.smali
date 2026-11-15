.class public final Lcg5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsb2;

.field public final b:I


# direct methods
.method public constructor <init>(Ll1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lub2;->a(Ll1;)Lsb2;

    move-result-object p1

    iput-object p1, p0, Lcg5;->a:Lsb2;

    iput p2, p0, Lcg5;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a([B[B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcg5;->b:I

    if-ne v0, v1, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcg5;->d(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b([B[B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcg5;->b:I

    if-ne v0, v1, :cond_1

    array-length v0, p2

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcg5;->d(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c([B[B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcg5;->b:I

    if-ne v0, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcg5;->d(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong address length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(I[B[B)[B
    .locals 3

    int-to-long v0, p1

    iget p1, p0, Lcg5;->b:I

    invoke-static {v0, v1, p1}, Lnrc;->q(JI)[B

    move-result-object p1

    iget-object v0, p0, Lcg5;->a:Lsb2;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lsb2;->update([BII)V

    iget-object p1, p0, Lcg5;->a:Lsb2;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lsb2;->update([BII)V

    iget-object p1, p0, Lcg5;->a:Lsb2;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lsb2;->update([BII)V

    iget p1, p0, Lcg5;->b:I

    new-array p2, p1, [B

    iget-object p0, p0, Lcg5;->a:Lsb2;

    instance-of p3, p0, Lcsc;

    if-eqz p3, :cond_0

    check-cast p0, Lcsc;

    invoke-interface {p0, p2, v2, p1}, Lcsc;->f([BII)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2, v2}, Lsb2;->a([BI)I

    :goto_0
    return-object p2
.end method
