.class public Lia9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Lsb2;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>([B[BLsb2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia9;->a:[B

    iput-object p2, p0, Lia9;->b:[B

    iput-object p3, p0, Lia9;->c:Lsb2;

    return-void
.end method


# virtual methods
.method public a([BZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lia9;->b([BZI)V

    return-void
.end method

.method public b([BZI)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lia9;->c([BI)[B

    if-eqz p2, :cond_0

    iget p1, p0, Lia9;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lia9;->e:I

    :cond_0
    return-void
.end method

.method public c([BI)[B
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lia9;->c:Lsb2;

    invoke-interface {v1}, Lsb2;->g()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget-object v1, p0, Lia9;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lsb2;->update([BII)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget v1, p0, Lia9;->d:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget v1, p0, Lia9;->d:I

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget v1, p0, Lia9;->d:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget v1, p0, Lia9;->d:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget v1, p0, Lia9;->e:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget v1, p0, Lia9;->e:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lsb2;->b(B)V

    iget-object v0, p0, Lia9;->c:Lsb2;

    iget-object v1, p0, Lia9;->b:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lsb2;->update([BII)V

    iget-object p0, p0, Lia9;->c:Lsb2;

    invoke-interface {p0, p1, p2}, Lsb2;->a([BI)I

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target length is less than digest size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lia9;->e:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lia9;->d:I

    return-void
.end method
